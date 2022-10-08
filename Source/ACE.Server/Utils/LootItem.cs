
namespace ACE.Server.Utils
{
    /// <summary>
    /// Model object for custom loot weenies
    /// that is used for determining drop chance %.
    /// </summary>
    public class LootItem
    {
        public int weenieId;
        public double dropChance;

        public LootItem(int weenieId, double dropchance)
        {
            this.weenieId = weenieId;
            this.dropChance = dropchance;
        }
    }
}
