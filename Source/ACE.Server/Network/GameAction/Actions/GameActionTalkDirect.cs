using ACE.Common.Extensions;
using ACE.Entity.Enum;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;

using log4net;

namespace ACE.Server.Network.GameAction.Actions
{
    public static class GameActionTalkDirect
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        [GameAction(GameActionType.TalkDirect)]
        public static void Handle(ClientMessage clientMessage, Session session)
        {
            var message = clientMessage.Payload.ReadString16L();
            var targetGuid = clientMessage.Payload.ReadUInt32();

            var creature = session.Player.CurrentLandblock?.GetObject(targetGuid) as Creature;
            if (creature == null)
            {
                var statusMessage = new GameEventWeenieError(session, WeenieError.CharacterNotAvailable);
                session.Network.EnqueueSend(statusMessage);
                return;
            }

            Utils.PlayerUtils.isGameActionTalkDirect = true;
            //Utils.PlayerUtils.isFriendByRealName = Utils.PlayerUtils.IsFriendByRealName(creature.Name, session.Player);
            //session.Network.EnqueueSend(new GameMessageSystemChat($"You tell {creature.Name}, \"{message}\"", ChatMessageType.OutgoingTell));

            if (creature is Player targetPlayer)
            {
                Utils.PlayerUtils.isFriendByRealName = Utils.PlayerUtils.IsFriendByRealName(targetPlayer.BaseName, session.Player);
                session.Network.EnqueueSend(new GameMessageSystemChat($"You tell {targetPlayer.Name}, \"{message}\"", ChatMessageType.OutgoingTell));

                if (session.Player.IsGagged)
                {
                    Utils.PlayerUtils.isGameActionTell = false;
                    session.Player.SendGagError();
                    Utils.PlayerUtils.isFriendByRealName = false;
                    return;
                }

                if (targetPlayer.SquelchManager.Squelches.Contains(session.Player, ChatMessageType.Tell))
                {
                    Utils.PlayerUtils.isGameActionTell = false;
                    session.Network.EnqueueSend(new GameEventWeenieErrorWithString(session, WeenieErrorWithString.MessageBlocked_, $"{targetPlayer.Name} has you squelched."));
                    //log.Warn($"Tell from {session.Player.Name} (0x{session.Player.Guid.ToString()}) to {targetPlayer.Name} (0x{targetPlayer.Guid.ToString()}) blocked due to squelch");
                    Utils.PlayerUtils.isFriendByRealName = false;
                    return;
                }

                Utils.PlayerUtils.isGameActionTell = true;
                Utils.PlayerUtils.isFriendByRealName = Utils.PlayerUtils.IsFriendByRealName(session.Player.BaseName, targetPlayer);
                var tell = new GameEventTell(targetPlayer.Session, message, session.Player.GetNameWithSuffix(), session.Player.Guid.Full, targetPlayer.Guid.Full, ChatMessageType.Tell);
                targetPlayer.Session.Network.EnqueueSend(tell);
                Utils.PlayerUtils.isGameActionTell = false;
                Utils.PlayerUtils.isFriendByRealName = false;
            }
            else
            {
                session.Network.EnqueueSend(new GameMessageSystemChat($"You tell {creature.Name}, \"{message}\"", ChatMessageType.OutgoingTell));
                creature.EmoteManager.OnTalkDirect(session.Player, message);
            }

            Utils.PlayerUtils.isGameActionTalkDirect = false;
            Utils.PlayerUtils.isFriendByRealName = false;
        }
    }
}
