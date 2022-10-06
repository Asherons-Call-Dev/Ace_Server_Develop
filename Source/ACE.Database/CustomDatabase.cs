using System;
using System.Linq;
using System.Threading;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage;
using log4net;
using ACE.Database.Models.Custom;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using ACE.Common;

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
                var customPlayerItem = context.CustomPlayers.AsNoTracking()
                    .FirstOrDefault(r => r.PlayerId == playerId);

                if (customPlayerItem == null)
                {
                    customPlayer.PlayerId = playerId;
                    customPlayer.PlayerRealName = realName;
                    customPlayer.PlayerModifiedName = modifiedName;
                    customPlayer.LastLoginTimestamp = loginTimestamp ?? Time.GetUnixTime();
                    customPlayer.LoginCount = 1;
                    context.CustomPlayers.Add(customPlayer);
                    context.SaveChanges();

                    if (customPlayerList != null)
                    {
                        customPlayerList.Add(customPlayer);
                    }

                    return customPlayer;
                }
                else
                {
                    CustomPlayer updatedPlayer = UpdateCustomPlayer(playerId, realName, modifiedName, loginTimestamp, customPlayer, context, customPlayerList);
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

                UpdateCustomFriends(customPlayer, context);
                UpdateCustomSquelches(customPlayer, context);
                context.Entry(customPlayer).State = EntityState.Modified;
                context.SaveChanges();
                customPlayerList[index] = customPlayer;
                return customPlayer;
                
            }

            return null;
        }

        public void UpdateCustomFriends(CustomPlayer customPlayer, CustomDbContext context)
        {
            List<CustomFriend> customFriends = GetAllFriends().Where(x => x.FriendRealName == customPlayer.PlayerRealName).ToList();

            foreach (CustomFriend customFriend in customFriends)
            {
                customFriend.FriendModifiedName = customPlayer.PlayerModifiedName;
                context.Entry(customFriend).State = EntityState.Modified;
            }
        }

        public void UpdateCustomSquelches(CustomPlayer customPlayer, CustomDbContext context)
        {
            List<CustomSquelch> customSquelches = GetAllSquelches().Where(x => x.SquelchRealName == customPlayer.PlayerRealName).ToList();

            foreach (CustomSquelch customSquelch in customSquelches)
            {
                customSquelch.SquelchModifiedName = customPlayer.PlayerModifiedName;
                context.Entry(customSquelch).State = EntityState.Modified;
            }
        }

        public void SaveCustomPlayerToDatabase(CustomPlayer customPlayer)
        {
            if (customPlayer != null)
            {
                using (var context = new CustomDbContext())
                {
                    context.Entry(customPlayer).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                    context.SaveChanges();
                    customPlayer.CustomPlayerChangesDetected = false;
                }
            }
        }

        public void AddNewCustomPlayerToContext(CustomPlayer customPlayer)
        {
            if (customPlayer != null)
            {
                using (var context = new CustomDbContext())
                {
                    context.CustomPlayers.Add(customPlayer);
                }
            }
        }

        public void DeleteCustomPlayer(CustomPlayer customPlayer)
        {
            if (customPlayer != null)
            {
                using (var context = new CustomDbContext())
                {
                    foreach (CustomFriend friend in customPlayer.CustomFriends)
                    {
                        context.Entry(friend).State = Microsoft.EntityFrameworkCore.EntityState.Deleted;
                    }

                    foreach (CustomSquelch squelch in customPlayer.CustomSquelches)
                    {
                        context.Entry(squelch).State = Microsoft.EntityFrameworkCore.EntityState.Deleted;
                    }

                    context.Entry(customPlayer).State = Microsoft.EntityFrameworkCore.EntityState.Deleted;

                    context.SaveChanges();
                }
            }
        }

        public List<CustomPlayer> GetAllCustomPlayers()
        {
            List<CustomPlayer> customPlayers = new List<CustomPlayer>();

            using (var context = new CustomDbContext())
            {
                customPlayers = context.CustomPlayers.AsNoTracking().ToList();
            }

            return customPlayers;
        }

        public CustomPlayer GetSingleCustomPlayer(uint playerId)
        {
            using (var context = new CustomDbContext())
            {
                var customPlayer = context.CustomPlayers.AsNoTracking().Where(x => x.PlayerId == playerId).FirstOrDefault();

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
                var customPlayer = context.CustomPlayers.AsNoTracking().Where(x => x.PlayerId == playerId).FirstOrDefault();

                if (customPlayer != null)
                {
                    customPlayer.CustomFriends = context.CustomFriends.AsNoTracking().Where(x => x.CharacterId == playerId).ToList();
                    customPlayer.CustomSquelches = context.CustomSquelches.AsNoTracking().Where(x => x.CharacterId == playerId).ToList();
                    return customPlayer;
                }

                return null;
            }
        }

        public CustomPlayer GetSingleCustomPlayerByName(String playerName)
        {
            using (var context = new CustomDbContext())
            {
                var customPlayer = context.CustomPlayers.AsNoTracking().Where(x => x.PlayerRealName == playerName).FirstOrDefault();

                if (customPlayer == null)
                {
                    customPlayer = context.CustomPlayers.AsNoTracking().Where(x => x.PlayerModifiedName == playerName).FirstOrDefault();
                }

                if (customPlayer != null)
                {
                    return customPlayer;
                }

                return null;
            }
        }

        public CustomFriend AddFriend(uint characterId, uint friendId, String realName, String modifiedName, bool isRealName)
        {
            using (var context = new CustomDbContext())
            {
                var friendItem = context.CustomFriends.AsNoTracking()
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

        public void RemoveFriend(CustomFriend customFriend)
        {
            using (var context = new CustomDbContext())
            {
                if (customFriend != null)
                {
                    context.CustomFriends.Remove(customFriend);
                    context.SaveChanges();
                }
            }
        }

        public List<CustomFriend> GetAllFriends()
        {
            List<CustomFriend> friends = new List<CustomFriend>();

            using (var context = new CustomDbContext())
            {
                friends = context.CustomFriends.AsNoTracking().ToList();
            }

            return friends;
        }

        public List<CustomFriend> GetFriendsByCharacter(uint characterId)
        {
            List<CustomFriend> friends = new List<CustomFriend>();

            using (var context = new CustomDbContext())
            {
                friends = context.CustomFriends.AsNoTracking().Where(x => x.CharacterId == characterId).ToList();
            }

            return friends;
        }

        public List<CustomSquelch> GetSquelchByCharacter(uint characterId)
        {
            List<CustomSquelch> squelches = new List<CustomSquelch>();

            using (var context = new CustomDbContext())
            {
                squelches = context.CustomSquelches.AsNoTracking().Where(x => x.CharacterId == characterId).ToList();
            }

            return squelches;
        }

        public CustomSquelch AddSquelch(uint characterId, uint squelchCharacterId, String realName, String modifiedName, uint squelchAccountId, uint type)
        {
            using (var context = new CustomDbContext())
            {
                var squelchItem = context.CustomSquelches.AsNoTracking()
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
                var squelchItem = context.CustomSquelches.AsNoTracking()
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
                squelches = context.CustomSquelches.AsNoTracking().ToList();
            }

            return squelches;
        }
    }
}
