using ACE.Database;
using ACE.Database.Models.Custom;
using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Utils
{
    internal class CustomData
    {
        public static List<CustomPlayer> customPlayers = new List<CustomPlayer>();
        public static List<CustomFriend> customFriends = new List<CustomFriend>();
        public static List<CustomSquelch> customSquelches = new List<CustomSquelch>();


        public static void InitializeCustomPlayers()
        {
            customPlayers = DatabaseManager.Custom.GetAllCustomPlayers();
        }

        public static void InitializeCustomFriends()
        {
            customFriends = DatabaseManager.Custom.GetAllFriends();
        }

        public static void InitializeCustomSquelches()
        {
            customSquelches = DatabaseManager.Custom.GetAllSquelches();
        }
    }
}
