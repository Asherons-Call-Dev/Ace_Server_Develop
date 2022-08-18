using ACE.Database;
using ACE.Database.Models.Shard;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using ACE.Server.Network;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.Network.Structure;
using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Utils
{
    internal class PlayerUtils
    {
        public static void BuffPlayerLevelSeven(Player player, bool self = true, ulong maxLevel = 7)
        {
            var SelfOrOther = self ? "Self" : "Other";

            // ensure level 8s are installed
            var maxSpellLevel = Math.Clamp(maxLevel, 1, 8);
            if (maxSpellLevel == 8 && DatabaseManager.World.GetCachedSpell((uint)SpellId.ArmorOther8) == null)
                maxSpellLevel = 7;

            var tySpell = typeof(SpellId);
            List<BuffMessage> buffMessages = new List<BuffMessage>();
            // prepare messages
            List<string> buffsNotImplementedYet = new List<string>();
            foreach (var spell in Buffs)
            {
                var spellNamPrefix = spell;
                bool isBane = false;
                if (spellNamPrefix.StartsWith("@"))
                {
                    isBane = true;
                    spellNamPrefix = spellNamPrefix.Substring(1);
                }
                string fullSpellEnumName = spellNamPrefix + ((isBane) ? string.Empty : SelfOrOther) + maxSpellLevel;
                string fullSpellEnumNameAlt = spellNamPrefix + ((isBane) ? string.Empty : ((SelfOrOther == "Self") ? "Other" : "Self")) + maxSpellLevel;
                uint spellID = (uint)Enum.Parse(tySpell, fullSpellEnumName);
                var buffMsg = BuildBuffMessage(spellID);

                if (buffMsg == null)
                {
                    spellID = (uint)Enum.Parse(tySpell, fullSpellEnumNameAlt);
                    buffMsg = BuildBuffMessage(spellID);
                }

                if (buffMsg != null)
                {
                    buffMsg.Bane = isBane;
                    buffMessages.Add(buffMsg);
                }
                else
                {
                    buffsNotImplementedYet.Add(fullSpellEnumName);
                }
            }
            if (buffMessages.Any(k => !k.Bane))
            {
                // bake player into the messages
                buffMessages.Where(k => !k.Bane).ToList().ForEach(k => k.SetTargetPlayer(player));
                // update client-side enchantments
                player.Session.Network.EnqueueSend(buffMessages.Where(k => !k.Bane).Select(k => k.SessionMessage).ToArray());
                // run client-side effect scripts, omitting duplicates
                player.EnqueueBroadcast(buffMessages.Where(k => !k.Bane).ToList().GroupBy(m => m.Spell.TargetEffect).Select(a => a.First().LandblockMessage).ToArray());
                // update server-side enchantments

                var buffsForPlayer = buffMessages.Where(k => !k.Bane).ToList().Select(k => k.Enchantment);

                var lifeBuffsForPlayer = buffsForPlayer.Where(k => k.Spell.School == MagicSchool.LifeMagic).ToList();
                var critterBuffsForPlayer = buffsForPlayer.Where(k => k.Spell.School == MagicSchool.CreatureEnchantment).ToList();
                var itemBuffsForPlayer = buffsForPlayer.Where(k => k.Spell.School == MagicSchool.ItemEnchantment).ToList();

                lifeBuffsForPlayer.ForEach(spl =>
                {
                    CreateEnchantmentSilent(spl.Spell, player, player);
                });
                critterBuffsForPlayer.ForEach(spl =>
                {
                    CreateEnchantmentSilent(spl.Spell, player, player);
                });
                itemBuffsForPlayer.ForEach(spl =>
                {
                    CreateEnchantmentSilent(spl.Spell, player, player);
                });
            }
            if (buffMessages.Any(k => k.Bane))
            {
                // Impen/bane
                var items = player.EquippedObjects.Values.ToList();
                var itembuffs = buffMessages.Where(k => k.Bane).ToList();
                foreach (var itemBuff in itembuffs)
                {
                    foreach (var item in items)
                    {
                        if ((item.WeenieType == WeenieType.Clothing || item.IsShield) && item.IsEnchantable)
                            CreateEnchantmentSilent(itemBuff.Spell, item, player);
                    }
                }
            }
        }

        private static void CreateEnchantmentSilent(Spell spell, WorldObject target, Player player)
        {
            var addResult = target.EnchantmentManager.Add(spell, player, null);

            if (target is Player targetPlayer)
            {
                targetPlayer.Session.Network.EnqueueSend(new GameEventMagicUpdateEnchantment(targetPlayer.Session, new Enchantment(targetPlayer, addResult.Enchantment)));

                targetPlayer.HandleSpellHooks(spell);
            }
        }

        private class BuffMessage
        {
            public bool Bane { get; set; } = false;
            public GameEventMagicUpdateEnchantment SessionMessage { get; set; } = null;
            public GameMessageScript LandblockMessage { get; set; } = null;
            public Spell Spell { get; set; } = null;
            public Enchantment Enchantment { get; set; } = null;
            public void SetTargetPlayer(Player p)
            {
                Enchantment.Target = p;
                SessionMessage = new GameEventMagicUpdateEnchantment(p.Session, Enchantment);
                SetLandblockMessage(p.Guid);
            }
            public void SetLandblockMessage(ObjectGuid target)
            {
                LandblockMessage = new GameMessageScript(target, Spell.TargetEffect, 1f);
            }
        }

        private static BuffMessage BuildBuffMessage(uint spellID)
        {
            BuffMessage buff = new BuffMessage();
            buff.Spell = new Spell(spellID);
            if (buff.Spell.NotFound) return null;
            buff.Enchantment = new Enchantment(null, 0, spellID, 1, (EnchantmentMask)buff.Spell.StatModType, buff.Spell.StatModVal);
            return buff;
        }

        public static void buffNewPlayer(Player player)
        {
            // Fancy fireworks on login
            // Note: May need to move this code so that it doesn't apply to olthoi
            //player.GrantXP(191226310247, XpType.Kill);

            BuffPlayerLevelSeven(player);
        }

        public static void createMaxNewPlayer(Player player)
        {
            player.AvailableExperience = player.AvailableExperience ?? 191226310247;
            player.TotalExperience = player.TotalExperience ?? 191226310247;
            player.Level = 275;
            //this.DeepSave
            AddAllSpellsOneThroughSeven(player);
            LoadDefaultSpellBars(player);
            player.SpendAllXp(false);
        }

        public static void addMaxPlayerSkillCredits(Player player)
        {
            player.SetProperty(PropertyInt.AvailableSkillCredits, 46);
            player.SetProperty(PropertyInt.TotalSkillCredits, 46);
        }

        private static void AddAllSpellsOneThroughSeven(Player player)
        {
            for (uint spellLevel = 1; spellLevel <= 7; spellLevel++)
            {
                player.LearnSpellsInBulk(MagicSchool.CreatureEnchantment, spellLevel, false);
                player.LearnSpellsInBulk(MagicSchool.ItemEnchantment, spellLevel, false);
                player.LearnSpellsInBulk(MagicSchool.LifeMagic, spellLevel, false);
                player.LearnSpellsInBulk(MagicSchool.VoidMagic, spellLevel, false);
                player.LearnSpellsInBulk(MagicSchool.WarMagic, spellLevel, false);
            }
        }

        private static void LoadDefaultSpellBars(Player player)
        {
            // Recall Spells
            uint barNumber = 0;
            uint indexInBar = 0;
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2645, player.CharacterDatabaseLock); // Portal Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 48, player.CharacterDatabaseLock); // Primary Portal Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 157, player.CharacterDatabaseLock); // Summon Primary Portal I
            player.Character.AddSpellToBar(barNumber, indexInBar++, 47, player.CharacterDatabaseLock); // Primary Portal Tie
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2647, player.CharacterDatabaseLock); // Secondary Portal Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2648, player.CharacterDatabaseLock); // Summon Secondary Portal I
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2646, player.CharacterDatabaseLock); // Secondary Portal Tie
            player.Character.AddSpellToBar(barNumber, indexInBar++, 1635, player.CharacterDatabaseLock); // Lifestone Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2644, player.CharacterDatabaseLock); // Lifestone Tie

            player.Character.AddSpellToBar(barNumber, indexInBar++, 2041, player.CharacterDatabaseLock); // Aerlinthe Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2931, player.CharacterDatabaseLock); // Recall Aphus Lassel
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2941, player.CharacterDatabaseLock); // Ulgrim's Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3865, player.CharacterDatabaseLock); // Glenden Wood Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4084, player.CharacterDatabaseLock); // Bur Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4128, player.CharacterDatabaseLock); // Call of the Mhoire Forge
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4198, player.CharacterDatabaseLock); // Paradox-touched Olthoi
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4213, player.CharacterDatabaseLock); // Colosseum Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 5330, player.CharacterDatabaseLock); // Gear Knight Invasion Area Camp Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 5541, player.CharacterDatabaseLock); // Lost City of Neftet Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 6321, player.CharacterDatabaseLock); // Viridian Rise Recall

            // Vitals
            barNumber++;
            indexInBar = 0;
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2073, player.CharacterDatabaseLock); // "Adja's Intervention","Restores 80-150 points of the caster's Health.
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2343, player.CharacterDatabaseLock); // "Rushed Recovery","Drains one-half of the caster's Stamina and gives 175% of that to his/her Health."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2083, player.CharacterDatabaseLock); // "Robustification","Restores 100-200 points of the caster's Stamina."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2345, player.CharacterDatabaseLock); // "Meditative Trance","Drains one-half of the caster's Stamina and gives 175% of that to his/her Mana."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3194, player.CharacterDatabaseLock); // "Eradicate Life Magic Self","Dispels 3-6 negative Life Magic enchantments of level 7 or lower from the caster."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 2072, player.CharacterDatabaseLock); // "Adja's Gift","Restores 80-150 points of the target's Health."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2082, player.CharacterDatabaseLock); // "Replenish","Restores 100-200 points of the target's Stamina."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2336, player.CharacterDatabaseLock); // "Gift of Essence","Drains one-quarter of the caster's Mana and gives 175% of that to the target."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3193, player.CharacterDatabaseLock); // "Eradicate Life Magic Other","Dispels 3-6 negative Life Magic enchantments of level 7 or lower from the target."

            // Buffs - Self
            barNumber++;
            indexInBar = 0;
            player.Character.AddSpellToBar(barNumber, indexInBar++, 562, player.CharacterDatabaseLock); // "Creature Enchantment Mastery Self VI","Increases the caster's Creature Enchantment skill by 35 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 1426, player.CharacterDatabaseLock); // "Focus Self VI","Increases the caster's Focus by 35 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 1450, player.CharacterDatabaseLock); // "Willpower Self VI","Increases the caster's Self by 35 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4325, player.CharacterDatabaseLock); // "Incantation of Strength Self","Increases the caster's Strength by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4299, player.CharacterDatabaseLock); // "Incantation of Endurance Self","Increases the caster's Endurance by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4297, player.CharacterDatabaseLock); // "Incantation of Coordination Self","Increases the caster's Coordination by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4319, player.CharacterDatabaseLock); // "Incantation of Quickness Self","Increases the caster's Quickness by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4305, player.CharacterDatabaseLock); // "Incantation of Focus Self","Increases the caster's Focus by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4329, player.CharacterDatabaseLock); // "Incantation of Willpower Self","Increases the caster's Self by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4496, player.CharacterDatabaseLock); // "Incantation of Regeneration Self","Increase caster's natural healing rate by 145%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4498, player.CharacterDatabaseLock); // "Incantation of Rejuvenation Self","Increases the rate at which the caster regains Stamina by 145%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4494, player.CharacterDatabaseLock); // "Incantation of Mana Renewal Self","Increases the caster's natural mana rate by 145%."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4530, player.CharacterDatabaseLock); // "Incantation of Creature Enchantment Mastery Self","Increases the caster's Creature Enchantment skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4582, player.CharacterDatabaseLock); // "Incantation of Life Magic Mastery Self","Increases the caster's Life Magic skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4564, player.CharacterDatabaseLock); // "Incantation of Item Enchantment Mastery Self","Increases the caster's Item Enchantment skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4602, player.CharacterDatabaseLock); // "Incantation of Mana Conversion Mastery Self","Increases the caster's Mana Conversion skill by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4510, player.CharacterDatabaseLock); // "Incantation of Arcane Enlightenment Self","Increases the caster's Arcane Lore skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4616, player.CharacterDatabaseLock); // "Incantation of Sprint Self","Increases the caster's Run skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4572, player.CharacterDatabaseLock); // "Incantation of Jumping Mastery Self","Increases the caster's Jump skill by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4548, player.CharacterDatabaseLock); // "Incantation of Fealty Self","Increases the caster's Loyalty skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4578, player.CharacterDatabaseLock); // "Incantation of Leadership Mastery Self","Increases the caster's Leadership skill by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4560, player.CharacterDatabaseLock); // "Incantation of Invulnerability Self","Increases the caster's Melee Defense skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4558, player.CharacterDatabaseLock); // "Incantation of Impregnability Self","Increases the caster's Missile Defense skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4596, player.CharacterDatabaseLock); // "Incantation of Magic Resistance Self","Increases the caster's Magic Defense skill by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4624, player.CharacterDatabaseLock); // "Incantation of Heavy Weapon Mastery Self","Increases the caster's Heavy Weapons skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4522, player.CharacterDatabaseLock); // "Incantation of Missile Weapon Mastery Self","Increases the caster's Missile Weapons skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4638, player.CharacterDatabaseLock); // "Incantation of War Magic Mastery Self","Increases the caster's War Magic skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 6123, player.CharacterDatabaseLock); // "Incantation of Summoning Mastery Self","Increases the caster's Summoning skill by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4556, player.CharacterDatabaseLock); // "Incantation of Healing Mastery Self","Increases the caster's Healing skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4552, player.CharacterDatabaseLock); // "Incantation of Fletching Mastery Self","Increases the caster's Fletching skill by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4468, player.CharacterDatabaseLock); // "Incantation of Fire Protection Self","Reduces damage the caster takes from Fire by 68%"
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4470, player.CharacterDatabaseLock); // "Incantation of Lightning Protection Self","Reduces damage the caster takes from Lightning by 68%"
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4462, player.CharacterDatabaseLock); // "Incantation of Blade Protection Self","Reduces damage the caster takes from Slashing by 68%"
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4472, player.CharacterDatabaseLock); // "Incantation of Piercing Protection Self","Reduces damage the caster takes from Piercing by 68%"
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4464, player.CharacterDatabaseLock); // "Incantation of Bludgeoning Protection Self","Reduces damage the caster takes from Bludgeoning by 68%"
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4466, player.CharacterDatabaseLock); // "Incantation of Cold Protection Self","Reduces damage the caster takes from Cold by 68%"
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4460, player.CharacterDatabaseLock); // "Incantation of Acid Protection Self","Reduces damage the caster takes from acid by 68%"

            // Buffs - Item
            barNumber++;
            indexInBar = 0;
            player.Character.AddSpellToBar(barNumber, indexInBar++, 5183, player.CharacterDatabaseLock); // "Aura of Incantation of Blood Drinker Self","Increases a weapon's damage value by 24 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4414, player.CharacterDatabaseLock); // "Aura of Incantation of Spirit Drinker Self","Increases the elemental damage bonus of an elemental magic caster by 8%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4417, player.CharacterDatabaseLock); // "Aura of Incantation of Swift Killer Self","Improves a weapon's speed by 80 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4405, player.CharacterDatabaseLock); // "Aura of Incantation of Heart Seeker Self","Increases a weapon's Attack Skill modifier by 20.0 percentage points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4400, player.CharacterDatabaseLock); // "Aura of Incantation of Defender Self","Increases the Melee Defense skill modifier of a weapon or magic caster by 20%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4418, player.CharacterDatabaseLock); // "Aura of Incantation of Hermetic Link Self","Increases a magic casting implement's mana conversion bonus by 80%."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4407, player.CharacterDatabaseLock); // "Incantation of Impenetrability","Improves a shield or piece of armor's armor value by 240 points. Target yourself to cast this spell on all of your equipped armor."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4401, player.CharacterDatabaseLock); // "Incantation of Flame Bane","Increases a shield or piece of armor's resistance to fire damage by 200%. Target yourself to cast this spell on all of your equipped armor."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4409, player.CharacterDatabaseLock); // "Incantation of Lightning Bane","Increases a shield or piece of armor's resistance to electric damage by 200%. Target yourself to cast this spell on all of your equipped armor."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4393, player.CharacterDatabaseLock); // "Incantation of Blade Bane","Increases a shield or piece of armor's resistance to slashing damage by 200%. Target yourself to cast this spell on all of your equipped armor."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4412, player.CharacterDatabaseLock); // "Incantation of Piercing Bane","Increases a shield or piece of armor's resistance to piercing damage by 200%. Target yourself to cast this spell on all of your equipped armor."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4397, player.CharacterDatabaseLock); // "Incantation of Bludgeon Bane","Increases a shield or piece of armor's resistance to bludgeoning damage by 200%. Target yourself to cast this spell on all of your equipped armor."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4403, player.CharacterDatabaseLock); // "Incantation of Frost Bane","Increases a shield or piece of armor's resistance to cold damage by 200%. Target yourself to cast this spell on all of your equipped armor."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4391, player.CharacterDatabaseLock); // "Incantation of Acid Bane","Increases a shield or piece of armor's resistance to acid damage by 200%. Target yourself to cast this spell on all of your equipped armor."

            // Buffs - Other
            barNumber++;
            indexInBar = 0;
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4324, player.CharacterDatabaseLock); // "Incantation of Strength Other","Increases the target's Strength by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4298, player.CharacterDatabaseLock); // "Incantation of Endurance Other","Increases the target's Endurance by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4296, player.CharacterDatabaseLock); // "Incantation of Coordination Other","Increases the target's Coordination by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4318, player.CharacterDatabaseLock); // "Incantation of Quickness Other","Increases the target's Quickness by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4304, player.CharacterDatabaseLock); // "Incantation of Focus Other","Increases the target's Focus by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4328, player.CharacterDatabaseLock); // "Incantation of Willpower Self","Increases the caster's Self by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4495, player.CharacterDatabaseLock); // "Incantation of Regeneration Other","Increase target's natural healing rate by 145%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4497, player.CharacterDatabaseLock); // "Incantation of Rejuvenation Other","Increases the rate at which the target regains Stamina by 145%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4493, player.CharacterDatabaseLock); // "Incantation of Mana Renewal Other","Increases the target's natural mana rate by 145%."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4529, player.CharacterDatabaseLock); // "Incantation of Creature Enchantment Mastery Other","Increases the target's Creature Enchantment skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4581, player.CharacterDatabaseLock); // "Incantation of Life Magic Mastery Other","Increases the target's Life Magic skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4563, player.CharacterDatabaseLock); // "Incantation of Item Enchantment Mastery Other","Increases the target's Item Enchantment skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4601, player.CharacterDatabaseLock); // "Incantation of Mana Conversion Mastery Other","Increases the target's Mana Conversion skill by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4509, player.CharacterDatabaseLock); // "Incantation of Arcane Enlightenment Other","Increases the target's Arcane Lore skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4615, player.CharacterDatabaseLock); // "Incantation of Sprint Other","Increases the target's Run skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4571, player.CharacterDatabaseLock); // "Incantation of Jumping Mastery Other","Increases the target's Jump skill by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4547, player.CharacterDatabaseLock); // "Incantation of Fealty Other","Increases the target's Loyalty skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4577, player.CharacterDatabaseLock); // "Incantation of Leadership Mastery Other","Increases the target's Leadership skill by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4559, player.CharacterDatabaseLock); // "Incantation of Invulnerability Other","Increases the target's Melee Defense skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4557, player.CharacterDatabaseLock); // "Incantation of Impregnability Other","Increases the target's Missile Defense skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4595, player.CharacterDatabaseLock); // "Incantation of Magic Resistance Other","Increases the target's Magic Defense skill by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4623, player.CharacterDatabaseLock); // "Incantation of Heavy Weapon Mastery Other","Increases the target's Heavy Weapons skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4521, player.CharacterDatabaseLock); // "Incantation of Missile Weapon Mastery Other","Increases the target's Missile Weapons skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4637, player.CharacterDatabaseLock); // "Incantation of War Magic Mastery Other","Increases the target's War Magic skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 6115, player.CharacterDatabaseLock); // "Incantation of Summoning Mastery Other","Increases the target's Summoning skill by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4555, player.CharacterDatabaseLock); // "Incantation of Healing Mastery Other","Increases the target's Healing skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4551, player.CharacterDatabaseLock); // "Incantation of Fletching Mastery Other","Increases the target's Fletching skill by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4467, player.CharacterDatabaseLock); // "Incantation of Fire Protection Other","Reduces damage the target takes from fire by 68%"
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4469, player.CharacterDatabaseLock); // "Incantation of Lightning Protection Other","Reduces damage the target takes from Lightning by 68%"
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4461, player.CharacterDatabaseLock); // "Incantation of Blade Protection Other","Reduces damage the target takes from Slashing by 68%"
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4471, player.CharacterDatabaseLock); // "Incantation of Piercing Protection Other","Reduces damage the target takes from Piercing by 68%"
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4463, player.CharacterDatabaseLock); // "Incantation of Bludgeoning Protection Other","Reduces damage the target takes from Bludgeoning by 68%"
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4465, player.CharacterDatabaseLock); // "Incantation of Cold Protection Other","Reduces damage the target takes from Cold by 68%"
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4459, player.CharacterDatabaseLock); // "Incantation of Acid Protection Other","Reduces damage the target takes from acid by 68%"

            player.Character.AddSpellToBar(barNumber, indexInBar++, 5997, player.CharacterDatabaseLock); // "Aura of Incantation of Blood Drinker Other","Increases a weapon's damage value by 24 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 6022, player.CharacterDatabaseLock); // "Aura of Incantation of Spirit Drinker Other","Increases the elemental damage bonus of an elemental magic caster by 8%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 6031, player.CharacterDatabaseLock); // "Aura of Incantation of Swift Killer Other","Improves a weapon's speed by 80 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 6014, player.CharacterDatabaseLock); // "Aura of Incantation of Heart Seeker Other","Increases a weapon's Attack Skill modifier by 20.0 percentage points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 6006, player.CharacterDatabaseLock); // "Aura of Incantation of Defender Other","Increases the Melee Defense skill modifier of a weapon or magic caster by 17%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 5989, player.CharacterDatabaseLock); // "Aura of Incantation of Hermetic Link Other","Increases a magic casting implement's mana conversion bonus by 80%."

            // Fellowship
            barNumber++;
            indexInBar = 0;
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3178, player.CharacterDatabaseLock); // "Superior Empowering the Conclave","Enhances the Strength of all Fellowship members by 40 points for 60 minutes."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3162, player.CharacterDatabaseLock); // "Superior Vivify the Conclave","Enhances the Endurance of all Fellowship members by 40 points for 60 minutes."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3158, player.CharacterDatabaseLock); // "Superior Alacrity of the Conclave","Enhances the Coordination of all Fellowship members by 40 points for 60 minutes."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3170, player.CharacterDatabaseLock); // "Superior Speed the Conclave","Enhances the Quickness of all Fellowship members by 40 points for 60 minutes."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3166, player.CharacterDatabaseLock); // "Superior Acumen of the Conclave","Enhances the Focus of all Fellowship members by 40 points for 60 minutes."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3174, player.CharacterDatabaseLock); // "Superior Volition of the Conclave","Enhances the Self of all Fellowship members by 40 points for 60 minutes."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 3477, player.CharacterDatabaseLock); // "Superior Soothing Wind","Enhances the blood flow and aids in knitting wounds closed. All fellowship member receive a 115% increase to their natural health recovery rate."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3481, player.CharacterDatabaseLock); // "Superior Golden Wind","Enhances the intake of air and utilization of energy. All fellowship member receive a 115% increase to their natural stamina recovery rate."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3473, player.CharacterDatabaseLock); // "Superior Endless Well","Enhances the understanding of the ebb and flow of mana. All fellowship members received a 115% increase to their nautral mana recovery rate."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 3387, player.CharacterDatabaseLock); // "Superior Conjurant Chant","Enhances the Creature Enchantment skill of all Fellowship members by 40 points for 60 minutes."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3395, player.CharacterDatabaseLock); // "Superior Vitaeic Chant","Enhances the Life Magic skill of all Fellowship members by 40 points for 60 minutes."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3391, player.CharacterDatabaseLock); // "Superior Artificant Chant","Enhances the Item Enchantment skill of all Fellowship members by 40 points for 60 minutes."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3399, player.CharacterDatabaseLock); // "Superior Conveyic Chant","Enhances the Mana Conversion skill of all Fellowship members by 40 points for 60 minutes."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 3355, player.CharacterDatabaseLock); // "Potent Guardian of the Clutch","Enhances the Melee Defense of all Fellowship members by 40 points for 60 minutes."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3351, player.CharacterDatabaseLock); // "Potent Warden of the Clutch","Enhances the Missile Defense of all Fellowship members by 40 points for 60 minutes."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3359, player.CharacterDatabaseLock); // "Potent Sanctifier of the Clutch","Enhances the Magic Defense of all Fellowship members by 40 points for 60 minutes."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 3403, player.CharacterDatabaseLock); // "Superior Hieromantic Chant","Enhances the War Magic skill of all Fellowship members by 40 points for 60 minutes."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 3339, player.CharacterDatabaseLock); // "Superior Inferno Ward","Reduces damage all fellowship members take from fire by 65%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3343, player.CharacterDatabaseLock); // "Superior Voltaic Ward","Reduces damage all fellowship members take from Lightning by 65%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3327, player.CharacterDatabaseLock); // "Superior Scythe Ward","Reduces damage all fellowship members take from Slashing by 65%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3347, player.CharacterDatabaseLock); // "Superior Lance Ward","Reduces damage all fellowship members take from Piercing by 65%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3331, player.CharacterDatabaseLock); // "Superior Flange Ward","Reduces damage all fellowship members from Bludgeoning by 65%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3335, player.CharacterDatabaseLock); // "Superior Frore Ward","Reduces damage all fellowship members take from Cold by 65%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 3323, player.CharacterDatabaseLock); // "Superior Corrosive Ward","Reduces damage all fellowship members take from acid by 65%."

            // Debuffs
            barNumber++;
            indexInBar = 0;
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2074, player.CharacterDatabaseLock); // "Gossamer Flesh","Decreases the target's natural armor by 225 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4481, player.CharacterDatabaseLock); // "Incantation of Fire Vulnerability Other","Increases damage the target takes from Fire by 210%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4483, player.CharacterDatabaseLock); // "Incantation of Lightning Vulnerability Other","Increases damage the target takes from Lightning by 210%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4475, player.CharacterDatabaseLock); // "Incantation of Blade Vulnerability Other","Increases damage the target takes from Slashing by 210%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4485, player.CharacterDatabaseLock); // "Incantation of Piercing Vulnerability Other","Increases damage the target takes from Piercing by 210%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4477, player.CharacterDatabaseLock); // "Incantation of Bludgeoning Vulnerability Other","Increases damage the target takes from Bludgeoning by 210%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4479, player.CharacterDatabaseLock); // "Incantation of Cold Vulnerability Other","Increases damage the target takes from Cold by 210%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4473, player.CharacterDatabaseLock); // "Incantation of Acid Vulnerability Other","Increases damage the target takes from acid by 210%."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4633, player.CharacterDatabaseLock); // "Incantation of Vulnerability Other","Decrease the target's Melee Defense skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4597, player.CharacterDatabaseLock); // "Incantation of Magic Yield Other","Decreases the target's Magic Defense skill by 45 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4543, player.CharacterDatabaseLock); // "Incantation of Defenselessness Other","Decreases the target's Missile Defense skill by 45 points."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4402, player.CharacterDatabaseLock); // "Incantation of Flame Lure","Decreases a shield or piece of armor's resistance to fire damage by 200%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4410, player.CharacterDatabaseLock); // "Incantation of Lightning Lure","Decreases a shield or piece of armor's resistance to electric damage by 200%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4394, player.CharacterDatabaseLock); // "Incantation of Blade Lure","Decreases a shield or piece of armor's resistance to slashing damage by 200%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4413, player.CharacterDatabaseLock); // "Incantation of Piercing Lure","Decreases a shield or piece of armor's resistance to piercing damage by 200%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4398, player.CharacterDatabaseLock); // "Incantation of Bludgeon Lure","Decreases a shield or piece of armor's resistance to bludgeoning damage by 200%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4404, player.CharacterDatabaseLock); // "Incantation of Frost Lure","Decreases a shield or piece of armor's resistance to cold damage by 200%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4392, player.CharacterDatabaseLock); // "Incantation of Acid Lure","Decreases a shield or piece of armor's resistance to acid damage by 200%."

            player.Character.AddSpellToBar(barNumber, indexInBar++, 4396, player.CharacterDatabaseLock); // "Incantation of Blood Loather","Decreases a weapon's damage value by 24 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4419, player.CharacterDatabaseLock); // "Incantation of Turn Blade","Decreases a weapon's Attack Skill modifier by 20.0 percentage points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4411, player.CharacterDatabaseLock); // "Incantation of Lure Blade","Decreases the Melee Defense skill modifier of a weapon or magic caster by 20%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4408, player.CharacterDatabaseLock); // "Incantation of Leaden Weapon","Worsens a weapon's speed by 80 points."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4415, player.CharacterDatabaseLock); // "Incantation of Spirit Loather","Decreases the elemental damage bonus of an elemental magic caster by 8%."
            player.Character.AddSpellToBar(barNumber, indexInBar++, 4406, player.CharacterDatabaseLock); // "Incantation of Hermetic Void","Decreases a magic casting implement's mana conversion bonus by 80%."
        }

        public static void handleSalvaging(Session session)
        {
            session.Player.SendWeenieError(WeenieError.ItemsAttemptingToSalvageIsInvalid);
        }

        // TODO: switch this over to SpellProgressionTables
        private static string[] Buffs = new string[] {
#region spells
            // @ indicates impenetrability or a bane
            "Strength",
            "Invulnerability",
            "FireProtection",
            "Armor",
            "Rejuvenation",
            "Regeneration",
            "ManaRenewal",
            "Impregnability",
            "MagicResistance",
            //"AxeMastery",    // light weapons
            "LightWeaponsMastery",
            //"DaggerMastery", // finesse weapons
            "FinesseWeaponsMastery",
            //"MaceMastery",
            //"SpearMastery",
            //"StaffMastery",
            //"SwordMastery",  // heavy weapons
            "HeavyWeaponsMastery",
            //"UnarmedCombatMastery",
            //"BowMastery",    // missile weapons
            "MissileWeaponsMastery",
            //"CrossbowMastery",
            //"ThrownWeaponMastery",
            "AcidProtection",
            "CreatureEnchantmentMastery",
            "ItemEnchantmentMastery",
            "LifeMagicMastery",
            "WarMagicMastery",
            "ManaMastery",
            "ArcaneEnlightenment",
            "ArcanumSalvaging",
            "ArmorExpertise",
            "ItemExpertise",
            "MagicItemExpertise",
            "WeaponExpertise",
            "MonsterAttunement",
            "PersonAttunement",
            "DeceptionMastery",
            "HealingMastery",
            "LeadershipMastery",
            "LockpickMastery",
            "Fealty",
            "JumpingMastery",
            "Sprint",
            "BludgeonProtection",
            "ColdProtection",
            "LightningProtection",
            "BladeProtection",
            "PiercingProtection",
            "Endurance",
            "Coordination",
            "Quickness",
            "Focus",
            "Willpower",
            "CookingMastery",
            "FletchingMastery",
            "AlchemyMastery",
            "VoidMagicMastery",
            "SummoningMastery",
            "SwiftKiller",
            "Defender",
            "BloodDrinker",
            "HeartSeeker",
            "HermeticLink",
            "SpiritDrinker",
            "DualWieldMastery",
            "TwoHandedMastery",
            "DirtyFightingMastery",
            "RecklessnessMastery",
            "SneakAttackMastery",
            "@Impenetrability",
            "@PiercingBane",
            "@BludgeonBane",
            "@BladeBane",
            "@AcidBane",
            "@FlameBane",
            "@FrostBane",
            "@LightningBane",
#endregion
            };
    }
}
