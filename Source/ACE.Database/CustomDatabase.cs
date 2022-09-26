using System;
using System.Linq;
using System.Threading;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage;
using log4net;
using ACE.Database.Models.Custom;
using System.Collections.Generic;

namespace ACE.Database
{
    public class CustomDatabase
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public bool Exists(bool retryUntilFound)
        {
            var config = Common.ConfigManager.Config.MySql.Custom;

            for (; ; )
            {
                using (var context = new CustomDbContext())
                {
                    if (((RelationalDatabaseCreator)context.Database.GetService<IDatabaseCreator>()).Exists())
                    {
                        log.Debug($"[DATABASE] Successfully connected to {config.Database} database on {config.Host}:{config.Port}.");
                        return true;
                    }
                }

                log.Error($"[DATABASE] Attempting to reconnect to {config.Database} database on {config.Host}:{config.Port} in 5 seconds...");

                if (retryUntilFound)
                    Thread.Sleep(5000);
                else
                    return false;
            }
        }

        public void CreateNameMap(uint playerId, String realName, String modifiedName, double? loginTimestamp, List<CustomNameMap> nameMapList)
        {
            using (var context = new CustomDbContext())
            {
                var nameMapItem = context.NameMaps
                    .FirstOrDefault(r => r.PlayerId == playerId);

                if (nameMapItem == null)
                {
                    var nameMap = new CustomNameMap();
                    nameMap.PlayerId = playerId;
                    nameMap.PlayerRealName = realName;
                    nameMap.PlayerModifiedName = modifiedName;
                    nameMap.LastLoginTimestamp = loginTimestamp;
                    nameMap.LoginCount = 1;
                    context.NameMaps.Add(nameMap);
                    context.SaveChanges();
                    nameMapList.Add(nameMap);
                }
                else
                {
                    UpdateNameMap(playerId, realName, modifiedName, loginTimestamp, nameMapItem, context, nameMapList);
                }
            }
        }

        public void UpdateNameMap(uint playerId, String realName, String modifiedName, double? loginTimestamp, CustomNameMap nameMap, CustomDbContext context, List<CustomNameMap> nameMapList)
        {
            if (nameMap != null)
            {
                CustomNameMap existingItem = nameMapList.Where(x => x.PlayerId == playerId).FirstOrDefault();
                int index = nameMapList.IndexOf(existingItem);
                nameMap.PlayerModifiedName = modifiedName;
                nameMap.LastLoginTimestamp = loginTimestamp;
                nameMap.LoginCount++;

                context.SaveChanges();
                nameMapList[index] = nameMap;
                
            }
        }

        public List<CustomNameMap> GetAllNameMaps()
        {
            List<CustomNameMap> nameMaps = new List<CustomNameMap>();

            using (var context = new CustomDbContext())
            {
                nameMaps = context.NameMaps.ToList();
            }

            return nameMaps;
        }

        public CustomFriendList AddFriend(uint characterId, uint friendId, String realName, String modifiedName, bool isRealName)
        {
            using (var context = new CustomDbContext())
            {
                var friendItem = context.Friends
                    .FirstOrDefault(r => (r.CharacterId == characterId) && (r.FriendId == friendId));

                if (friendItem == null)
                {
                    var friendMap = new CustomFriendList();
                    friendMap.CharacterId = characterId;
                    friendMap.FriendId = friendId;
                    friendMap.FriendRealName = realName;
                    friendMap.FriendModifiedName = modifiedName;
                    friendMap.IsRealName = isRealName;
                    context.Friends.Add(friendMap);
                    context.SaveChanges();
                    return friendMap;
                }
            }

            return null;
        }

        public List<CustomFriendList> GetAllFriends()
        {
            List<CustomFriendList> friends = new List<CustomFriendList>();

            using (var context = new CustomDbContext())
            {
                friends = context.Friends.ToList();
            }

            return friends;
        }

        public List<CustomFriendList> GetFriendsByCharacter(uint characterId)
        {
            List<CustomFriendList> friends = new List<CustomFriendList>();

            using (var context = new CustomDbContext())
            {
                friends = context.Friends.Where(x => x.CharacterId == characterId).ToList();
            }

            return friends;
        }

        public List<CustomSquelch> GetSquelchByCharacter(uint characterId)
        {
            List<CustomSquelch> squelches = new List<CustomSquelch>();

            using (var context = new CustomDbContext())
            {
                squelches = context.Squelches.Where(x => x.CharacterId == characterId).ToList();
            }

            return squelches;
        }
    }
}
