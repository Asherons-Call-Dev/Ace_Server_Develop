using ACE.Server.Entity;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using log4net;
using System;
//using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Utils
{
    public static class LootUtil2
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public static List<LootItem> loot = new List<LootItem>();

        public static void CreateCustomLootItems()
        {
            loot.Add(new LootItem(100055, 50)); // Salvage vendor currency
            loot.Add(new LootItem(100054, 20)); // Imbue vendor currency
        }

        public static List<WorldObject> TryGenerateCustomLootItems(DamageHistoryInfo killer)
        {
            if (!loot.Any())
            {
                CreateCustomLootItems();
            }

            List<WorldObject> droppedItems = new List<WorldObject>();
            var rand = new Random();
            Player player = null;

            if (killer.GetType() == typeof(Player))
            {
                player = (Player)killer.TryGetAttacker();
            }

            foreach (LootItem item in loot)
            {
                int randomNumber = rand.Next(1, 1001);
                int dropChance = item.dropChance;

                if (player != null)
                {
                    if (player.AugmentationBonusSalvage > 0)
                    {
                        dropChance = item.dropChance * player.AugmentationBonusSalvage;
                    }
                }

                if (randomNumber <= item.dropChance)
                {
                    WorldObject wo = WorldObjectFactory.CreateNewWorldObject((uint)item.weenieId);

                    if (wo == null)
                    {
                        log.Error($"Failed to generate custom loot for wcid {wo.WeenieClassId}");
                    }
                    else
                    {
                        droppedItems.Add(wo);
                    }
                }
            }

            return droppedItems;
        }
    }
}
