using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Database.Models.Custom
{
    public partial class CustomFriend
    {
        public uint CharacterId { get; set; }
        public uint FriendId { get; set; }
        public String FriendRealName { get; set; }
        public String FriendModifiedName { get; set; }
        public bool IsRealName { get; set; }

        public virtual CustomPlayer Object { get; set; }
    }
}
