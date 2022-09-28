using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Database.Models.Custom
{
    public partial class CustomPlayer
    {
        public CustomPlayer()
        {
            CustomFriends = new HashSet<CustomFriend>();
            CustomSquelches = new HashSet<CustomSquelch>();
        }

        public uint PlayerId { get; set; }
        public String PlayerRealName { get; set; }
        public String PlayerModifiedName { get; set; }
        public double? LastLoginTimestamp { get; set; }
        public uint LoginCount { get; set; }
        public bool UseRealNameAllegiance { get; set; }
        public bool UseRealNameFellowship { get; set; }

        public bool CustomPlayerChangesDetected { get; set; }

        public virtual ICollection<CustomFriend> CustomFriends { get; set; }

        public virtual ICollection<CustomSquelch> CustomSquelches { get; set; }

    }
}
