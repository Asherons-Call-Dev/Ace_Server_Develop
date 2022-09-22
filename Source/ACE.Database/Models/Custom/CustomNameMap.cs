using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Database.Models.Custom
{
    public partial class CustomNameMap
    {
        public uint PlayerId { get; set; }
        public String PlayerRealName { get; set; }
        public String PlayerModifiedName { get; set; }
        public double? LastLoginTimestamp { get; set; }
        public uint LoginCount { get; set; }

    }
}
