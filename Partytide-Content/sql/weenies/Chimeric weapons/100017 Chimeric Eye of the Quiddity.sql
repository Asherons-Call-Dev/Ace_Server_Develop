DELETE FROM `weenie` WHERE `class_Id` = 100017;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100017, 'ace100017-chimericeyeofthequiddity', 35, '2022-06-06 04:05:48') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100017,   1,      32768) /* ItemType - Caster */
     , (100017,   3,         82) /* PaletteTemplate - PinkPurple */
     , (100017,   5,         50) /* EncumbranceVal */
     , (100017,   9,   16777216) /* ValidLocations - Held */
     , (100017,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (100017,  18,          1) /* UiEffects - Magical */
     , (100017,  19,          0) /* Value */
     , (100017,  33,         1) /* Bonded - Slippery */
     , (100017,  45,          1) /* DamageType - Slash */
     , (100017,  46,        512) /* DefaultCombatStyle - Magic */
     , (100017,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100017,  94,         16) /* TargetType - Creature */
     , (100017, 106,        475) /* ItemSpellcraft */
     , (100017, 107,       2700) /* ItemCurMana */
     , (100017, 108,       2700) /* ItemMaxMana */
     , (100017, 158,          7) /* WieldRequirements - Level */
     , (100017, 159,          1) /* WieldSkillType - Axe */
     , (100017, 160,        120) /* WieldDifficulty */
     , (100017, 263,          1) /* ResistanceModifierType - Slash */
     , (100017, 267,      86400) /* Lifespan */
     , (100017, 353,          0) /* WeaponType - Undef */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100017,  22, True ) /* Inscribable */
     , (100017,  69, False) /* IsSellable */
     , (100017,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100017,   5,   -0.05) /* ManaRate */
     , (100017,  29,     1.2) /* WeaponDefense */
     , (100017,  39,     0.8) /* DefaultScale */
     , (100017, 136,     1.7) /* CriticalMultiplier */
     , (100017, 144,    0.15) /* ManaConversionMod */
     , (100017, 147,     0.3) /* CriticalFrequency */
     , (100017, 152,     1.2) /* ElementalDamageMod */
     , (100017, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100017,   1, 'Chimeric Eye of the Quiddity') /* Name */
     , (100017,  16, 'A powerful but unstable weapon made from congealed Portal Energy, pulled from a rift into Portalspace itself.  The origin of these weapons is unknown, and they do not survive exposure to Dereth for more than a day.  (This weapon has a 24 hour duration from the time of its creation.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100017,   1, 0x02001184) /* Setup */
     , (100017,   3, 0x20000014) /* SoundTable */
     , (100017,   6, 0x04000BEF) /* PaletteBase */
     , (100017,   7, 0x100002E7) /* ClothingBase */
     , (100017,   8, 0x060035C7) /* Icon */
     , (100017,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100017,  28,       2146) /* Spell - Evisceration */
     , (100017,  52, 0x060065FB) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100017,  3259,      2)  /* Aura of Infected Spirit Caress */
     , (100017,  2101,      2)  /* Aura of Cragstone's Will */
     , (100017,  2117,      2)  /* Aura of Mystic's Blessing */
     , (100017,  2534,      2)  /* Major War Magic Aptitude */
     , (100017,  2581,      2)  /* Minor Focus */
     , (100017,  2584,      2)  /* Minor Willpower */;
