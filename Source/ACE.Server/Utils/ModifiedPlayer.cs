using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Utils
{
    public class ModifiedPlayer
    {
        private string name;

        public static ModifiedPlayer Instance;

        public ModifiedPlayer()
        {
           
        }

        public string Name
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
            }
        }
    }
}
