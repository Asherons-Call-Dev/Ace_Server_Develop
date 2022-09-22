using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;

using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage;

using log4net;

using ACE.Database.Entity;
using ACE.Database.Models.Custom;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;

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
                using (var context = new NameMapDbContext())
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

        public void CreateNameMap(uint playerId, String realName, String modifiedName, double? loginTimestamp)
        {
            using (var context = new NameMapDbContext())
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
                }
                else
                {
                    UpdateNameMap(playerId, realName, modifiedName, loginTimestamp, nameMapItem, context);
                }
            }
        }

        public void UpdateNameMap(uint playerId, String realName, String modifiedName, double? loginTimestamp, CustomNameMap nameMap, NameMapDbContext context)
        {
            if (nameMap != null)
            {
                nameMap.PlayerModifiedName = modifiedName;
                nameMap.LastLoginTimestamp = loginTimestamp;
                nameMap.LoginCount++;

                context.SaveChanges();
            }
        }
    }
}
