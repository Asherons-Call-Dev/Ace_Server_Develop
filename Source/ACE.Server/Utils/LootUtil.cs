using ACE.Common;
using ACE.Server.Entity;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Utils
{
    internal class LootUtil
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public static List<WorldObject> TryGenerateCustomLoot(Creature creature)
        {
            int tier = 0;
            int t1_chance = 100;
            int imbueCurrency = 100054;
            int salvageCurrency = 100055;
            WorldObject wo = null;
            List<WorldObject> worldObjectList = new List<WorldObject>();

            if (ThreadSafeRandom.Next(1, t1_chance) == 1)   // 1 in 100 chance
            {
                tier = 1;
                if (ThreadSafeRandom.Next(1, 3) == 1)      // 1 in 300 chance
                {
                    tier = 2;
                }
                //if (ThreadSafeRandom.Next(1, 100) == 1)     // 1 in 250,000 chance
                //{
                //    tier = 3;
                //}
                //if (ThreadSafeRandom.Next(1, 1250) == 1)    // 1 in 3,120,000 chance
                //{
                //    tier = 4;
                //}
                //if (ThreadSafeRandom.Next(1, 3017) == 1)    // 1 in 7,542,500 (wiki avg. 7,543,103)
                //{
                //    tier = 5;
                //}
                //if (ThreadSafeRandom.Next(1, 3500) == 1)    // 1 in 8,750,000 chance
                //{
                //    tier = 6;
                //}
            }

            if (tier == 1)
            {
                wo = WorldObjectFactory.CreateNewWorldObject((uint)salvageCurrency);
                worldObjectList.Add(wo);
            }
            else if (tier == 2)
            {
                wo = WorldObjectFactory.CreateNewWorldObject((uint)imbueCurrency);
                worldObjectList.Add(wo);
            }

            if (tier != 0 && wo == null)
            {
                log.Error($"Failed to generate custom loot for wcid {wo.WeenieClassId}");
            }

            return worldObjectList;

            //log.Debug($"[LOOT][RARE] {Name} ({Guid}) generated rare {wo.Name} ({wo.Guid}) for {killer.Name} ({killer.Guid})");
            //log.Debug($"[LOOT][RARE] Tier {tier} -- 1 / {chance:N0} chance -- {luck:N0} luck");


        }
    }
}
