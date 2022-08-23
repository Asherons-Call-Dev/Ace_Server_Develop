using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Utils
{
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
