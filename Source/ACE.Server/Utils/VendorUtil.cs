using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Utils
{
    internal class VendorUtil
    {
        public static uint vendorWeenieClassId;

        private static uint VendorWeenieClassId
        {
            get
            {
                return (uint)VendorWeenieClassId;
            }
            set
            {
                VendorWeenieClassId = value;
            }
        }
    }
}
