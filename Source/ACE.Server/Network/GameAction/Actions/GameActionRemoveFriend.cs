
namespace ACE.Server.Network.GameAction.Actions
{
    public static class GameActionRemoveFriend
    {
        [GameAction(GameActionType.RemoveFriend)]
        public static void Handle(ClientMessage message, Session session)
        {
            uint friendGuid = message.Payload.ReadUInt32();

            Utils.PlayerUtils.isAddRemoveFriend = true;
            session.Player.HandleActionRemoveFriend(friendGuid);
            Utils.PlayerUtils.isAddRemoveFriend = false;
        }
    }
}
