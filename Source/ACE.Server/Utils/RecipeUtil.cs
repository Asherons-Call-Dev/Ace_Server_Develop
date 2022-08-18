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
        public static readonly HashSet<WeenieClassName> imbueSalvage = new HashSet<WeenieClassName>()
        {
            // imbue salvages (not rend salvage)
            WeenieClassName.W_MATERIALDIAMOND_CLASS,
            WeenieClassName.W_MATERIALRUBY_CLASS,
            WeenieClassName.W_MATERIALGROMNIEHIDE_CLASS,
            WeenieClassName.W_MATERIALHEMATITE_CLASS,
            WeenieClassName.W_MATERIALAMBER_CLASS,
            WeenieClassName.W_MATERIALAGATE_CLASS,
            WeenieClassName.W_MATERIALAZURITE_CLASS,
            WeenieClassName.W_MATERIALBLOODSTONE_CLASS,
            WeenieClassName.W_MATERIALCARNELIAN_CLASS,
            WeenieClassName.W_MATERIALCITRINE_CLASS,
            WeenieClassName.W_MATERIALLAPISLAZULI_CLASS,
            WeenieClassName.W_MATERIALLAVENDERJADE_CLASS,
            WeenieClassName.W_MATERIALMALACHITE_CLASS,
            WeenieClassName.W_MATERIALPERIDOT_CLASS,
            WeenieClassName.W_MATERIALPYREAL_CLASS,
            WeenieClassName.W_MATERIALREDJADE_CLASS,
            WeenieClassName.W_MATERIALROSEQUARTZ_CLASS,
            WeenieClassName.W_MATERIALSAPPHIRE_CLASS,
            WeenieClassName.W_MATERIALSMOKYQUARTZ_CLASS,
            WeenieClassName.W_MATERIALYELLOWTOPAZ_CLASS,
            WeenieClassName.W_MATERIALZIRCON_CLASS
        };

        public static double? oneHundredPercentSuccess()
        {
            return 1;
        }

        public static double? thirtyThreePercentSuccess()
        {
            return .33;
        }

    }
}
