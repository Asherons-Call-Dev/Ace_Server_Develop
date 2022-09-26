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
        public static List<CustomNameMap> nameMap = new List<CustomNameMap>();
        public static List<CustomFriendList> friendList = new List<CustomFriendList>();


        public static void InitializeCustomNameMaps()
        {
            nameMap = DatabaseManager.Custom.GetAllNameMaps();
        }

        public static void InitializeCustomFriendList()
        {
            friendList = DatabaseManager.Custom.GetAllFriends();
        }
    }
}
