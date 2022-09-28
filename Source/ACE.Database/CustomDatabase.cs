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

        public CustomPlayer CreateCustomPlayer(uint playerId, String realName, String modifiedName, double? loginTimestamp, CustomPlayer customPlayer, List<CustomPlayer> customPlayerList)
        {
            using (var context = new CustomDbContext())
            {
                var customPlayerItem = context.CustomPlayers
                    .FirstOrDefault(r => r.PlayerId == playerId);

                if (customPlayerItem == null)
                {
                    customPlayer.PlayerId = playerId;
                    customPlayer.PlayerRealName = realName;
                    customPlayer.PlayerModifiedName = modifiedName;
                    customPlayer.LastLoginTimestamp = loginTimestamp;
                    customPlayer.LoginCount = 1;
                    context.CustomPlayers.Add(customPlayer);
                    context.SaveChanges();
                    customPlayerList.Add(customPlayer);
                    return customPlayer;
                }
                else
                {
                    CustomPlayer updatedPlayer = UpdateCustomPlayer(playerId, realName, modifiedName, loginTimestamp, customPlayerItem, context, customPlayerList);
                    return updatedPlayer;
                }
            }
        }

        public CustomPlayer UpdateCustomPlayer(uint playerId, String realName, String modifiedName, double? loginTimestamp, CustomPlayer customPlayer, CustomDbContext context, List<CustomPlayer> customPlayerList)
        {
            if (customPlayer != null)
            {
                CustomPlayer existingCustomPlayer = customPlayerList.Where(x => x.PlayerId == playerId).FirstOrDefault();
                int index = customPlayerList.IndexOf(existingCustomPlayer);
                customPlayer.PlayerModifiedName = modifiedName;
                customPlayer.LastLoginTimestamp = loginTimestamp;
                customPlayer.LoginCount++;

                context.SaveChanges();
                customPlayerList[index] = customPlayer;
                return customPlayer;
                
            }

            return null;
        }

        public List<CustomPlayer> GetAllCustomPlayers()
        {
            List<CustomPlayer> customPlayers = new List<CustomPlayer>();

            using (var context = new CustomDbContext())
            {
                customPlayers = context.CustomPlayers.ToList();
            }

            return customPlayers;
        }

        public CustomPlayer GetSingleCustomPlayer(uint playerId)
        {
            using (var context = new CustomDbContext())
            {
                var customPlayer = context.CustomPlayers.Where(x => x.PlayerId == playerId).FirstOrDefault();

                if (customPlayer != null)
                {
                    return customPlayer;
                }

                return null;
            }
        }

        public CustomPlayer InitializeExistingCustomPlayer(uint playerId)
        {
            using (var context = new CustomDbContext())
            {
                var customPlayer = context.CustomPlayers.Where(x => x.PlayerId == playerId).FirstOrDefault();

                if (customPlayer != null)
                {
                    customPlayer.CustomFriends = context.CustomFriends.Where(x => x.CharacterId == playerId).ToList();
                    customPlayer.CustomSquelches = context.CustomSquelches.Where(x => x.CharacterId == playerId).ToList();
                    return customPlayer;
                }

                return null;
            }
        }

        public CustomPlayer GetSingleCustomPlayerByName(String playerName)
        {
            using (var context = new CustomDbContext())
            {
                var nameMap = context.CustomPlayers.Where(x => x.PlayerRealName == playerName).FirstOrDefault();

                if (nameMap == null)
                {
                    nameMap = context.CustomPlayers.Where(x => x.PlayerModifiedName == playerName).FirstOrDefault();
                }

                if (nameMap != null)
                {
                    return nameMap;
                }

                return null;
            }
        }

        public CustomFriend AddFriend(uint characterId, uint friendId, String realName, String modifiedName, bool isRealName)
        {
            using (var context = new CustomDbContext())
            {
                var friendItem = context.CustomFriends
                    .FirstOrDefault(r => (r.CharacterId == characterId) && (r.FriendId == friendId));

                if (friendItem == null)
                {
                    var friendMap = new CustomFriend();
                    friendMap.CharacterId = characterId;
                    friendMap.FriendId = friendId;
                    friendMap.FriendRealName = realName;
                    friendMap.FriendModifiedName = modifiedName;
                    friendMap.IsRealName = isRealName;
                    context.CustomFriends.Add(friendMap);
                    context.SaveChanges();
                    return friendMap;
                }
            }

            return null;
        }

        public void RemoveFriend(uint characterId, uint friendId)
        {
            using (var context = new CustomDbContext())
            {
                var friendItem = context.CustomFriends
                    .FirstOrDefault(r => (r.CharacterId == characterId) && (r.FriendId == friendId));

                if (friendItem != null)
                {
                    context.CustomFriends.Remove(friendItem);
                    context.SaveChanges();
                }
            }
        }

        public List<CustomFriend> GetAllFriends()
        {
            List<CustomFriend> friends = new List<CustomFriend>();

            using (var context = new CustomDbContext())
            {
                friends = context.CustomFriends.ToList();
            }

            return friends;
        }

        public List<CustomFriend> GetFriendsByCharacter(uint characterId)
        {
            List<CustomFriend> friends = new List<CustomFriend>();

            using (var context = new CustomDbContext())
            {
                friends = context.CustomFriends.Where(x => x.CharacterId == characterId).ToList();
            }

            return friends;
        }

        public List<CustomSquelch> GetSquelchByCharacter(uint characterId)
        {
            List<CustomSquelch> squelches = new List<CustomSquelch>();

            using (var context = new CustomDbContext())
            {
                squelches = context.CustomSquelches.Where(x => x.CharacterId == characterId).ToList();
            }

            return squelches;
        }

        public CustomSquelch AddSquelch(uint characterId, uint squelchCharacterId, String realName, String modifiedName, uint squelchAccountId, uint type)
        {
            using (var context = new CustomDbContext())
            {
                var squelchItem = context.CustomSquelches
                    .FirstOrDefault(r => (r.CharacterId == characterId) && (r.SquelchCharacterId == squelchCharacterId));

                if (squelchItem == null)
                {
                    var squelch = new CustomSquelch();
                    squelch.CharacterId = characterId;
                    squelch.SquelchCharacterId = squelchCharacterId;
                    squelch.SquelchRealName = realName;
                    squelch.SquelchModifiedName = modifiedName;
                    squelch.SquelchAccountId = squelchAccountId;
                    squelch.SquelchType = type;
                    context.CustomSquelches.Add(squelch);
                    context.SaveChanges();
                    return squelch;
                }
                else
                {
                    squelchItem.SquelchAccountId = squelchAccountId;
                    squelchItem.SquelchType = type;
                    squelchItem.SquelchModifiedName = modifiedName ?? null;
                    return squelchItem;
                }
            }
        }

        public void RemoveSquelch(uint characterId, uint squelchCharacterId)
        {
            using (var context = new CustomDbContext())
            {
                var squelchItem = context.CustomSquelches
                    .FirstOrDefault(r => (r.CharacterId == characterId) && (r.SquelchCharacterId == squelchCharacterId));

                if (squelchItem != null)
                {
                    context.CustomSquelches.Remove(squelchItem);
                    context.SaveChanges();
                }
            }
        }

        public List<CustomSquelch> GetAllSquelches()
        {
            List<CustomSquelch> squelches = new List<CustomSquelch>();

            using (var context = new CustomDbContext())
            {
                squelches = context.CustomSquelches.ToList();
            }

            return squelches;
        }
    }
}
