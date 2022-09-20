using ACE.Common.Extensions;

namespace ACE.Server.Network.GameAction.Actions
{
    public static class GameActionAddFriend
    {
        [GameAction(GameActionType.AddFriend)]
        public static void Handle(ClientMessage message, Session session)
        {
            var friendName = message.Payload.ReadString16L().Trim();

            Utils.PlayerUtils.isAddRemoveFriend = true;
            session.Player.HandleActionAddFriend(friendName);
            Utils.PlayerUtils.isAddRemoveFriend = false;
        }
    }
}
