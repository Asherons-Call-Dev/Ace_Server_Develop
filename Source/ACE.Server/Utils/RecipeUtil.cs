using ACE.Entity.Enum;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Utils
{
    internal class RecipeUtil
    {
        public enum CustomFoolproofWeenieClassName : ushort
        {
            W_TESTFOOLPROOFSTEEL_CLASS = 0,
            W_MATERIALFOOLPROOFIRON_CLASS = 1
        }

        public static readonly HashSet<CustomFoolproofWeenieClassName> customFoolproofTinkers = new HashSet<CustomFoolproofWeenieClassName>()
        {
            // rare foolproof
            CustomFoolproofWeenieClassName.W_TESTFOOLPROOFSTEEL_CLASS,
            CustomFoolproofWeenieClassName.W_MATERIALFOOLPROOFIRON_CLASS
        };

        public static double? oneHundredPercentSuccess()
        {
            return 1;
        }

    }
}
