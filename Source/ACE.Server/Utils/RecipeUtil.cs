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

                //case CustomSalvageWeenies.W_MATERIALROSEQUARTZ_CLASS:
                //case CustomSalvageWeenies.W_MATERIALREDJADE_CLASS:
                //case CustomSalvageWeenies.W_MATERIALMALACHITE_CLASS:
                //case CustomSalvageWeenies.W_MATERIALLAVENDERJADE_CLASS:
                //case CustomSalvageWeenies.W_MATERIALHEMATITE_CLASS:
                //case CustomSalvageWeenies.W_MATERIALBLOODSTONE_CLASS:
                //case CustomSalvageWeenies.W_MATERIALAZURITE_CLASS:
                case CustomSalvageWeenies.custommaterialagate:
                //case CustomSalvageWeenies.W_MATERIALSMOKYQUARTZ_CLASS:
                //case CustomSalvageWeenies.W_MATERIALCITRINE_CLASS:
                //case CustomSalvageWeenies.W_MATERIALCARNELIAN_CLASS:

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
                //case CustomSalvageWeenies.W_MATERIALSILVER_CLASS:
                //case CustomSalvageWeenies.W_MATERIALCOPPER_CLASS:

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

                //case CustomSalvageWeenies.W_MATERIALPERIDOT_CLASS:
                //case CustomSalvageWeenies.W_MATERIALYELLOWTOPAZ_CLASS:
                //case CustomSalvageWeenies.W_MATERIALZIRCON_CLASS:

                //case CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFPERIDOT_CLASS:
                //case CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFYELLOWTOPAZ_CLASS:
                //case CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFZIRCON_CLASS:
                //case CustomSalvageWeenies.W_MATERIALACE36634FOOLPROOFPERIDOT:
                //case CustomSalvageWeenies.W_MATERIALACE36635FOOLPROOFYELLOWTOPAZ:
                //case CustomSalvageWeenies.W_MATERIALACE36636FOOLPROOFZIRCON:

                //    // can be applied to anything with AL, including shields (according to base recipe)
                //    if (!target.HasArmorLevel() || target.Workmanship == null)
                //        return null;

                //    recipe = DatabaseManager.World.GetCachedRecipe(SourceToRecipe[(CustomSalvageWeenies)source.WeenieClassId]);
                //    break;

                //// imbues - foolproof handled in regular imbue code
                //case CustomSalvageWeenies.W_MATERIALAQUAMARINE100_CLASS:
                //case CustomSalvageWeenies.W_MATERIALAQUAMARINE_CLASS:
                //case CustomSalvageWeenies.W_MATERIALBLACKGARNET100_CLASS:
                //case CustomSalvageWeenies.W_MATERIALBLACKGARNET_CLASS:
                //case CustomSalvageWeenies.W_MATERIALBLACKOPAL100_CLASS:
                //case CustomSalvageWeenies.W_MATERIALBLACKOPAL_CLASS:
                //case CustomSalvageWeenies.W_MATERIALEMERALD100_CLASS:
                //case CustomSalvageWeenies.W_MATERIALEMERALD_CLASS:
                //case CustomSalvageWeenies.W_MATERIALFIREOPAL100_CLASS:
                //case CustomSalvageWeenies.W_MATERIALFIREOPAL_CLASS:
                //case CustomSalvageWeenies.W_MATERIALIMPERIALTOPAZ100_CLASS:
                //case CustomSalvageWeenies.W_MATERIALIMPERIALTOPAZ_CLASS:
                //case CustomSalvageWeenies.W_MATERIALJET100_CLASS:
                //case CustomSalvageWeenies.W_MATERIALJET_CLASS:
                //case CustomSalvageWeenies.W_MATERIALREDGARNET100_CLASS:
                //case CustomSalvageWeenies.W_MATERIALREDGARNET_CLASS:
                //case CustomSalvageWeenies.W_MATERIALSUNSTONE100_CLASS:
                //case CustomSalvageWeenies.W_MATERIALSUNSTONE_CLASS:
                //case CustomSalvageWeenies.W_MATERIALWHITESAPPHIRE100_CLASS:
                //case CustomSalvageWeenies.W_MATERIALWHITESAPPHIRE_CLASS:

                //case WeenieClassName.W_MATERIALRAREFOOLPROOFAQUAMARINE_CLASS:
                //case WeenieClassName.W_MATERIALRAREFOOLPROOFBLACKGARNET_CLASS:
                //case WeenieClassName.W_MATERIALRAREFOOLPROOFBLACKOPAL_CLASS:
                //case WeenieClassName.W_MATERIALRAREFOOLPROOFEMERALD_CLASS:
                //case WeenieClassName.W_MATERIALRAREFOOLPROOFFIREOPAL_CLASS:
                //case WeenieClassName.W_MATERIALRAREFOOLPROOFIMPERIALTOPAZ_CLASS:
                //case WeenieClassName.W_MATERIALRAREFOOLPROOFJET_CLASS:
                //case WeenieClassName.W_MATERIALRAREFOOLPROOFREDGARNET_CLASS:
                //case WeenieClassName.W_MATERIALRAREFOOLPROOFSUNSTONE_CLASS:
                //case WeenieClassName.W_MATERIALRAREFOOLPROOFWHITESAPPHIRE_CLASS:

                //case WeenieClassName.W_MATERIALACE36619FOOLPROOFAQUAMARINE:
                //case WeenieClassName.W_MATERIALACE36620FOOLPROOFBLACKGARNET:
                //case WeenieClassName.W_MATERIALACE36621FOOLPROOFBLACKOPAL:
                //case WeenieClassName.W_MATERIALACE36622FOOLPROOFEMERALD:
                //case WeenieClassName.W_MATERIALACE36623FOOLPROOFFIREOPAL:
                //case WeenieClassName.W_MATERIALACE36624FOOLPROOFIMPERIALTOPAZ:
                //case WeenieClassName.W_MATERIALACE36625FOOLPROOFJET:
                //case WeenieClassName.W_MATERIALACE36626FOOLPROOFREDGARNET:
                //case WeenieClassName.W_MATERIALACE36627FOOLPROOFSUNSTONE:
                //case WeenieClassName.W_MATERIALACE36628FOOLPROOFWHITESAPPHIRE:

                //    recipe = DatabaseManager.World.GetCachedRecipe(SourceToRecipe[(WeenieClassName)source.WeenieClassId]);
                //    break;
            }

            return recipe;
        }

        public static Dictionary<CustomSalvageWeenies, uint> SourceToRecipe = new Dictionary<CustomSalvageWeenies, uint>()
        {
            { CustomSalvageWeenies.custommaterialiron,         3853 },
            { CustomSalvageWeenies.custommaterialgranite,      3852 },

            { CustomSalvageWeenies.custommaterialvelvet,       3861 },

            //{ CustomSalvageWeenies.W_MATERIALROSEQUARTZ_CLASS,      4446 },
            //{ CustomSalvageWeenies.W_MATERIALREDJADE_CLASS,         4442 },
            //{ CustomSalvageWeenies.W_MATERIALMALACHITE_CLASS,       4438 },
            //{ CustomSalvageWeenies.W_MATERIALLAVENDERJADE_CLASS,    4441 },
            //{ CustomSalvageWeenies.W_MATERIALHEMATITE_CLASS,        4440 },
            //{ CustomSalvageWeenies.W_MATERIALBLOODSTONE_CLASS,      4448 },
            //{ CustomSalvageWeenies.W_MATERIALAZURITE_CLASS,         4437 },
            { CustomSalvageWeenies.custommaterialagate,        4445 },
            //{ CustomSalvageWeenies.W_MATERIALSMOKYQUARTZ_CLASS,     4447 },
            //{ CustomSalvageWeenies.W_MATERIALCITRINE_CLASS,         4439 },
            //{ CustomSalvageWeenies.W_MATERIALCARNELIAN_CLASS,       4443 },

            //{ WeenieClassName.W_MATERIALSTEEL50_CLASS,         3860 },
            { CustomSalvageWeenies.custommaterialsteel,           3860 },

            { CustomSalvageWeenies.custommaterialalabaster,       3846 },
            { CustomSalvageWeenies.custommaterialbronze,          3849 },
            { CustomSalvageWeenies.custommaterialmarble,          3856 },
            { CustomSalvageWeenies.custommaterialarmoredillohide, 3847 },
            { CustomSalvageWeenies.custommaterialceramic,         3850 },
            { CustomSalvageWeenies.custommaterialwool,            3862 },
            { CustomSalvageWeenies.custommaterialreedsharkhide,   3859 },
            //{ CustomSalvageWeenies.W_MATERIALSILVER_CLASS,          4427 },
            //{ CustomSalvageWeenies.W_MATERIALCOPPER_CLASS,          4428 },

            //{ CustomSalvageWeenies.W_MATERIALPERIDOT_CLASS,         4435 },
            //{ CustomSalvageWeenies.W_MATERIALYELLOWTOPAZ_CLASS,     4434 },
            //{ CustomSalvageWeenies.W_MATERIALZIRCON_CLASS,          4433 },

            //{ CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFPERIDOT_CLASS,     8016 },
            //{ CustomSalvageWeenies.W_MATERIALACE36634FOOLPROOFPERIDOT,       8016 },
            //{ CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFYELLOWTOPAZ_CLASS, 8015 },
            //{ CustomSalvageWeenies.W_MATERIALACE36635FOOLPROOFYELLOWTOPAZ,   8015 },
            //{ CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFZIRCON_CLASS,      8014 },
            //{ CustomSalvageWeenies.W_MATERIALACE36636FOOLPROOFZIRCON,        8014 },

            //{ CustomSalvageWeenies.W_MATERIALAQUAMARINE100_CLASS,              4436 },
            //{ CustomSalvageWeenies.W_MATERIALAQUAMARINE_CLASS,                 4436 },
            //{ CustomSalvageWeenies.W_MATERIALBLACKGARNET100_CLASS,             4449 },
            //{ CustomSalvageWeenies.W_MATERIALBLACKGARNET_CLASS,                4449 },
            //{ CustomSalvageWeenies.W_MATERIALBLACKOPAL100_CLASS,               3863 },
            //{ CustomSalvageWeenies.W_MATERIALBLACKOPAL_CLASS,                  3863 },
            //{ CustomSalvageWeenies.W_MATERIALEMERALD100_CLASS,                 4450 },
            //{ CustomSalvageWeenies.W_MATERIALEMERALD_CLASS,                    4450 },
            //{ CustomSalvageWeenies.W_MATERIALFIREOPAL100_CLASS,                3864 },
            //{ CustomSalvageWeenies.W_MATERIALFIREOPAL_CLASS,                   3864 },
            //{ CustomSalvageWeenies.W_MATERIALIMPERIALTOPAZ100_CLASS,           4454 },
            //{ CustomSalvageWeenies.W_MATERIALIMPERIALTOPAZ_CLASS,              4454 },
            //{ CustomSalvageWeenies.W_MATERIALJET100_CLASS,                     4451 },
            //{ CustomSalvageWeenies.W_MATERIALJET_CLASS,                        4451 },
            //{ CustomSalvageWeenies.W_MATERIALREDGARNET100_CLASS,               4452 },
            //{ CustomSalvageWeenies.W_MATERIALREDGARNET_CLASS,                  4452 },
            //{ CustomSalvageWeenies.W_MATERIALSUNSTONE100_CLASS,                3865 },
            //{ CustomSalvageWeenies.W_MATERIALSUNSTONE_CLASS,                   3865 },
            //{ CustomSalvageWeenies.W_MATERIALWHITESAPPHIRE100_CLASS,           4453 },
            //{ CustomSalvageWeenies.W_MATERIALWHITESAPPHIRE_CLASS,              4453 },

            //{ CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFAQUAMARINE_CLASS,    8004 },
            //{ CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFBLACKGARNET_CLASS,   8005 },
            //{ CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFBLACKOPAL_CLASS,     8011 },
            //{ CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFEMERALD_CLASS,       8006 },
            //{ CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFFIREOPAL_CLASS,      8012 },
            //{ CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFIMPERIALTOPAZ_CLASS, 8010 },
            //{ CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFJET_CLASS,           8007 },
            //{ CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFREDGARNET_CLASS,     8008 },
            //{ CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFSUNSTONE_CLASS,      8013 },
            //{ CustomSalvageWeenies.W_MATERIALRAREFOOLPROOFWHITESAPPHIRE_CLASS, 8009 },

            //{ CustomSalvageWeenies.W_MATERIALACE36619FOOLPROOFAQUAMARINE,      8004 },
            //{ CustomSalvageWeenies.W_MATERIALACE36620FOOLPROOFBLACKGARNET,     8005 },
            //{ CustomSalvageWeenies.W_MATERIALACE36621FOOLPROOFBLACKOPAL,       8011 },
            //{ CustomSalvageWeenies.W_MATERIALACE36622FOOLPROOFEMERALD,         8006 },
            //{ CustomSalvageWeenies.W_MATERIALACE36623FOOLPROOFFIREOPAL,        8012 },
            //{ CustomSalvageWeenies.W_MATERIALACE36624FOOLPROOFIMPERIALTOPAZ,   8010 },
            //{ CustomSalvageWeenies.W_MATERIALACE36625FOOLPROOFJET,             8007 },
            //{ CustomSalvageWeenies.W_MATERIALACE36626FOOLPROOFREDGARNET,       8008 },
            //{ CustomSalvageWeenies.W_MATERIALACE36627FOOLPROOFSUNSTONE,        8013 },
            //{ CustomSalvageWeenies.W_MATERIALACE36628FOOLPROOFWHITESAPPHIRE,   8009 },
        };

    }
}
