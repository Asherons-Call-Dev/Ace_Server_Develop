using ACE.Database;
using ACE.Database.Models.World;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Utils
{
    internal class RecipeUtil
    {
        public static readonly HashSet<CustomSalvageWeenies> imbueSalvage = new HashSet<CustomSalvageWeenies>()
        {
            // imbue salvages (not rend salvage)
            CustomSalvageWeenies.custommaterialagate,
            CustomSalvageWeenies.custommaterialamber,
            //CustomSalvageWeenies.custommaterialaquamarine,
            CustomSalvageWeenies.custommaterialazurite,
            //CustomSalvageWeenies.custommaterialblackgarnet,
            //CustomSalvageWeenies.custommaterialblackopal,
            CustomSalvageWeenies.custommaterialbloodstone,
            CustomSalvageWeenies.custommaterialcarnelian,
            CustomSalvageWeenies.custommaterialcitrine,
            CustomSalvageWeenies.custommaterialcopper,
            CustomSalvageWeenies.custommaterialdiamond,
            CustomSalvageWeenies.custommaterialebony,
            CustomSalvageWeenies.custommaterialgromniehide,
            CustomSalvageWeenies.custommaterialhematite,
            //CustomSalvageWeenies.custommaterialimperialtopaz,
            //CustomSalvageWeenies.custommaterialjet,
            CustomSalvageWeenies.custommateriallapislazuli,
            CustomSalvageWeenies.custommateriallavenderjade,
            CustomSalvageWeenies.custommaterialmalachite,
            CustomSalvageWeenies.custommaterialperidot,
            CustomSalvageWeenies.custommaterialporcelain,
            CustomSalvageWeenies.custommaterialpyreal,
            //CustomSalvageWeenies.custommaterialredgarnet,
            CustomSalvageWeenies.custommaterialredjade,
            CustomSalvageWeenies.custommaterialrosequartz,
            CustomSalvageWeenies.custommaterialruby,
            CustomSalvageWeenies.custommaterialsapphire,
            CustomSalvageWeenies.custommaterialsilk,
            CustomSalvageWeenies.custommaterialsilver,
            CustomSalvageWeenies.custommaterialsmokeyquartz,
            //CustomSalvageWeenies.custommaterialsunstone,
            CustomSalvageWeenies.custommaterialteak,
            //CustomSalvageWeenies.custommaterialwhitesapphire,
            CustomSalvageWeenies.custommaterialyellowtopaz,
            CustomSalvageWeenies.custommaterialzircon
            //CustomSalvageWeenies.custommaterialemerald,
           // CustomSalvageWeenies.custommaterialfireopal
        };

        public static double? oneHundredPercentSuccess()
        {
            return 1;
        }

        public static double? thirtyThreePercentSuccess()
        {
            return .33;
        }

        public static Recipe CheckCustomSalvageWeenies(Recipe recipe, Player player, WorldObject source, WorldObject target)
        {
            switch ((CustomSalvageWeenies)source.WeenieClassId)
            {
                case CustomSalvageWeenies.custommaterialivory:

                    // ensure item is ivoryable
                    if (!(target.GetProperty(PropertyBool.Ivoryable) ?? false))
                        return null;

                    //var recipeId = source.WeenieClassId == (int)CustomSalvageWeenies.custommaterialivory ? 3977 : 9069;
                    var recipeId = 3977;

                    recipe = DatabaseManager.World.GetCachedRecipe((uint)recipeId);

                    break;

                case CustomSalvageWeenies.custommaterialleather:

                    // ensure item is not already retained, and is not stackable
                    // and can either be salvaged, sold, or consumed with a mana stone
                    if (target.Retained || target is Stackable)
                        return null;

                    if (target.MaterialType == null && !target.IsSellable && target.ItemMaxMana == null)
                        return null;

                    //recipeId = source.WeenieClassId == (int)CustomSalvageWeenies.custommaterialleather ? 9070 : 4426;
                    recipeId = 4426;

                    recipe = DatabaseManager.World.GetCachedRecipe((uint)recipeId);

                    break;

                case CustomSalvageWeenies.custommaterialsandstone:

                    // ensure item is retained and not stackable
                    // and can either be salvaged, sold, or consumed with a mana stone
                    if (!target.Retained || target is Stackable)
                        return null;

                    if (target.MaterialType == null && !target.IsSellable && target.ItemMaxMana == null)
                        return null;

                    // use sandstone recipe as base
                    recipe = DatabaseManager.World.GetCachedRecipe(8003);

                    break;

                //case WeenieClassName.W_MATERIALGOLD_CLASS:

                //    // ensure item has value and workmanship
                //    if ((target.Value ?? 0) == 0 || target.Workmanship == null)
                //        return null;

                //    // use gold recipe as base
                //    recipe = DatabaseManager.World.GetCachedRecipe(3851);
                //    break;

                case CustomSalvageWeenies.custommateriallinen:

                    // ensure item has burden and workmanship
                    if ((target.EncumbranceVal ?? 0) == 0 || target.Workmanship == null)
                        return null;

                    // use linen recipe as base
                    recipe = DatabaseManager.World.GetCachedRecipe(3854);
                    break;

                case CustomSalvageWeenies.custommaterialmoonstone:

                    // ensure item has mana and workmanship
                    if ((target.ItemMaxMana ?? 0) == 0 || target.Workmanship == null)
                        return null;

                    // use moonstone recipe as base
                    recipe = DatabaseManager.World.GetCachedRecipe(3978);
                    break;

                case CustomSalvageWeenies.custommaterialpine:

                    // ensure item has value and workmanship
                    if ((target.Value ?? 0) == 0 || target.Workmanship == null)
                        return null;

                    // use pine recipe as base
                    recipe = DatabaseManager.World.GetCachedRecipe(3858);
                    break;

                case CustomSalvageWeenies.custommaterialiron:
                case CustomSalvageWeenies.custommaterialgranite:
                case CustomSalvageWeenies.custommaterialvelvet:

                    // ensure melee weapon and workmanship
                    if (target.WeenieType != WeenieType.MeleeWeapon || target.Workmanship == null)
                        return null;

                    // grab correct recipe to use as base
                    recipe = DatabaseManager.World.GetCachedRecipe(SourceToRecipe[(CustomSalvageWeenies)source.WeenieClassId]);
                    break;

                case CustomSalvageWeenies.custommaterialmahogany:

                    // ensure missile weapon and workmanship
                    if (target.WeenieType != WeenieType.MissileLauncher || target.Workmanship == null)
                        return null;

                    // use mahogany recipe as base
                    recipe = DatabaseManager.World.GetCachedRecipe(3855);
                    break;

                case CustomSalvageWeenies.custommaterialoak:

                    // ensure melee or missile weapon, and workmanship
                    if (target.WeenieType != WeenieType.MeleeWeapon && target.WeenieType != WeenieType.MissileLauncher || target.Workmanship == null)
                        return null;

                    // use oak recipe as base
                    recipe = DatabaseManager.World.GetCachedRecipe(3857);
                    break;

                case CustomSalvageWeenies.custommaterialopal:

                    // ensure item is caster and has workmanship
                    if (target.WeenieType != WeenieType.Caster || target.Workmanship == null)
                        return null;

                    // use opal recipe as base
                    recipe = DatabaseManager.World.GetCachedRecipe(3979);
                    break;

                case CustomSalvageWeenies.custommaterialgreengarnet:

                    // ensure item is caster and has workmanship
                    if (target.WeenieType != WeenieType.Caster || target.Workmanship == null)
                        return null;

                    // use green garnet recipe as base
                    recipe = DatabaseManager.World.GetCachedRecipe(5202);
                    break;

                case CustomSalvageWeenies.custommaterialbrass:

                    // ensure item has workmanship
                    if (target.Workmanship == null) return null;

                    // use brass recipe as base
                    recipe = DatabaseManager.World.GetCachedRecipe(3848);
                    break;

                case CustomSalvageWeenies.custommaterialrosequartz:
                case CustomSalvageWeenies.custommaterialredjade:
                case CustomSalvageWeenies.custommaterialmalachite:
                case CustomSalvageWeenies.custommateriallavenderjade:
                case CustomSalvageWeenies.custommaterialhematite:
                case CustomSalvageWeenies.custommaterialbloodstone:
                case CustomSalvageWeenies.custommaterialazurite:
                case CustomSalvageWeenies.custommaterialagate:
                case CustomSalvageWeenies.custommaterialsmokeyquartz:
                case CustomSalvageWeenies.custommaterialcitrine:
                case CustomSalvageWeenies.custommaterialcarnelian:
                case CustomSalvageWeenies.custommateriallapislazuli:

                    // ensure item is generic (jewelry), and has workmanship
                    if (target.WeenieType != WeenieType.Generic || target.Workmanship == null || target.ValidLocations == EquipMask.TrinketOne)
                        return null;

                    recipe = DatabaseManager.World.GetCachedRecipe(SourceToRecipe[(CustomSalvageWeenies)source.WeenieClassId]);
                    break;

                case CustomSalvageWeenies.custommaterialsteel:
                case CustomSalvageWeenies.custommaterialalabaster:
                case CustomSalvageWeenies.custommaterialarmoredillohide:
                case CustomSalvageWeenies.custommaterialbronze:
                case CustomSalvageWeenies.custommaterialceramic:
                case CustomSalvageWeenies.custommaterialreedsharkhide:
                case CustomSalvageWeenies.custommaterialwool:
                case CustomSalvageWeenies.custommaterialmarble:
                case CustomSalvageWeenies.custommaterialsilver:
                case CustomSalvageWeenies.custommaterialcopper:

                    // ensure loot-generated item w/ armor level
                    if (target.Workmanship == null || !target.HasArmorLevel())
                        return null;

                    var allowArmor = target.ItemType == ItemType.Armor;

                    // allow clothing that only covers an extremity
                    // this excludes some clothing like boots and robes that cover extremities + non-extremities
                    var allowClothing = target.ItemType == ItemType.Clothing && (target.ValidLocations == EquipMask.HeadWear || target.ValidLocations == EquipMask.HandWear || target.ValidLocations == EquipMask.FootWear);

                    if (!allowArmor && !allowClothing)
                        return null;

                    // TODO: replace with PropertyInt.MeleeDefenseImbuedEffectTypeCache == 1 when data is updated
                    if (source.MaterialType == MaterialType.Steel && !target.IsEnchantable)
                        return null;

                    recipe = DatabaseManager.World.GetCachedRecipe(SourceToRecipe[(CustomSalvageWeenies)source.WeenieClassId]);
                    break;

                case CustomSalvageWeenies.custommaterialperidot:
                case CustomSalvageWeenies.custommaterialyellowtopaz:
                case CustomSalvageWeenies.custommaterialzircon:

                    // can be applied to anything with AL, including shields (according to base recipe)
                    if (!target.HasArmorLevel() || target.Workmanship == null)
                        return null;

                    recipe = DatabaseManager.World.GetCachedRecipe(SourceToRecipe[(CustomSalvageWeenies)source.WeenieClassId]);
                    break;

                    //// imbues - foolproof handled in regular imbue code
                    case CustomSalvageWeenies.custommaterialaquamarine:
                    case CustomSalvageWeenies.custommaterialblackgarnet:
                    case CustomSalvageWeenies.custommaterialblackopal:
                    case CustomSalvageWeenies.custommaterialemerald:
                    case CustomSalvageWeenies.custommaterialfireopal:
                    case CustomSalvageWeenies.custommaterialimperialtopaz:
                    case CustomSalvageWeenies.custommaterialjet:
                    case CustomSalvageWeenies.custommaterialredgarnet:
                    case CustomSalvageWeenies.custommaterialsunstone:
                    case CustomSalvageWeenies.custommaterialwhitesapphire:

                    recipe = DatabaseManager.World.GetCachedRecipe(SourceToRecipe[(CustomSalvageWeenies)source.WeenieClassId]);
                    break;
            }

            return recipe;
        }

        public static Dictionary<CustomSalvageWeenies, uint> SourceToRecipe = new Dictionary<CustomSalvageWeenies, uint>()
        {
            { CustomSalvageWeenies.custommaterialiron,            3853 },
            { CustomSalvageWeenies.custommaterialgranite,         3852 },

            { CustomSalvageWeenies.custommaterialvelvet,          3861 },

            { CustomSalvageWeenies.custommaterialrosequartz,      4446 },
            { CustomSalvageWeenies.custommaterialredjade,         4442 },
            { CustomSalvageWeenies.custommaterialmalachite,       4438 },
            { CustomSalvageWeenies.custommateriallavenderjade,    4441 },
            { CustomSalvageWeenies.custommaterialhematite,        4440 },
            { CustomSalvageWeenies.custommaterialbloodstone,      4448 },
            { CustomSalvageWeenies.custommaterialazurite,         4437 },
            { CustomSalvageWeenies.custommaterialagate,           4445 },
            { CustomSalvageWeenies.custommaterialsmokeyquartz,    4447 },
            { CustomSalvageWeenies.custommaterialcitrine,         4439 },
            { CustomSalvageWeenies.custommaterialcarnelian,       4443 },
            { CustomSalvageWeenies.custommateriallapislazuli,     4444 },

            { CustomSalvageWeenies.custommaterialsteel,           3860 },

            { CustomSalvageWeenies.custommaterialalabaster,       3846 },
            { CustomSalvageWeenies.custommaterialbronze,          3849 },
            { CustomSalvageWeenies.custommaterialmarble,          3856 },
            { CustomSalvageWeenies.custommaterialarmoredillohide, 3847 },
            { CustomSalvageWeenies.custommaterialceramic,         3850 },
            { CustomSalvageWeenies.custommaterialwool,            3862 },
            { CustomSalvageWeenies.custommaterialreedsharkhide,   3859 },
            { CustomSalvageWeenies.custommaterialsilver,          4427 },
            { CustomSalvageWeenies.custommaterialcopper,          4428 },

            { CustomSalvageWeenies.custommaterialperidot,         4435 },
            { CustomSalvageWeenies.custommaterialyellowtopaz,     4434 },
            { CustomSalvageWeenies.custommaterialzircon,          4433 },

            { CustomSalvageWeenies.custommaterialaquamarine,                 4436 },
            { CustomSalvageWeenies.custommaterialblackgarnet,                4449 },
            { CustomSalvageWeenies.custommaterialblackopal,                  3863 },
            { CustomSalvageWeenies.custommaterialemerald,                    4450 },
            { CustomSalvageWeenies.custommaterialfireopal,                   3864 },
            { CustomSalvageWeenies.custommaterialimperialtopaz,              4454 },
            { CustomSalvageWeenies.custommaterialjet,                        4451 },
            { CustomSalvageWeenies.custommaterialredgarnet,                  4452 },
            { CustomSalvageWeenies.custommaterialsunstone,                   3865 },
            { CustomSalvageWeenies.custommaterialwhitesapphire,              4453 },
        };

    }
}
