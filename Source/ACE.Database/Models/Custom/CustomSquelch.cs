using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Database.Models.Custom
{
    public partial class CustomSquelch
    {
        public uint CharacterId { get; set; }
        public uint SquelchCharacterId { get; set; }
        public uint SquelchAccountId { get; set; }
        public String SquelchRealName { get; set; }
        public String SquelchModifiedName { get; set; }
        public uint SquelchType { get; set; }
    }
}
