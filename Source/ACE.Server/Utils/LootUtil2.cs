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
            loot.Add(new LootItem(100055, 1000)); // Salvage vendor currency, 1% drop rate
            loot.Add(new LootItem(100054, 200)); // Imbue vendor currency, 0.2% drop rate
        }

        public static List<WorldObject> TryGenerateCustomLootItems(DamageHistoryInfo killer, Creature creature)
        {
            if (!loot.Any())
            {
                CreateCustomLootItems();
            }

            List<WorldObject> droppedItems = new List<WorldObject>();
            var rand = new Random();
            double augBonus = 0.0;

            if (killer.IsPlayer)
            {
                Player player = (Player)killer.TryGetAttacker();

                if (player != null)
                {
                    if (player.AugmentationBonusSalvage > 0)
                    {
                        augBonus = player.AugmentationBonusSalvage / 4;
                    }
                }
            }

            foreach (LootItem item in loot)
            {
                double randomNumber = rand.Next(1, 100001);

                double dropChance = GetItemDropChance(augBonus, item.dropChance, creature);

                if (randomNumber <= dropChance)
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

        public static double GetItemDropChance(double augBonus, double dropChance, Creature creature)
        {
            dropChance = dropChance + augBonus;

            if (creature != null)
            {
                switch (creature.Level)
                {
                    case < 20:
                        dropChance = (dropChance / 6);
                        break;
                    case < 50:
                        dropChance = (dropChance / 4);
                        break;
                    case < 100:
                        dropChance = (dropChance / 2);
                        break;
                    case < 180:
                        dropChance = (dropChance / 1.5);
                        break;
                    default:
                        break;
                }
            }

            return dropChance;
        }
    }
}
