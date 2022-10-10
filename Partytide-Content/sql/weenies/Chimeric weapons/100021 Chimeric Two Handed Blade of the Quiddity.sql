DELETE FROM `weenie` WHERE `class_Id` = 100021;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100021, 'ace100021-chimerictwohandedbladeofthequiddity', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100021,   1,          1) /* ItemType - MeleeWeapon */
     , (100021,   3,         82) /* PaletteTemplate - PinkPurple */
     , (100021,   5,        220) /* EncumbranceVal */
     , (100021,   9,   33554432) /* ValidLocations - TwoHanded */
     , (100021,  16,          1) /* ItemUseable - No */
     , (100021,  18,          1) /* UiEffects - Magical */
     , (100021,  19,          0) /* Value */
     , (100021,  33,         1) /* Bonded - Slippery */
     , (100021,  44,         32) /* Damage */
     , (100021,  45,          3) /* DamageType - Slash, Pierce */
     , (100021,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (100021,  47,          6) /* AttackType - Thrust, Slash */
     , (100021,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (100021,  49,         35) /* WeaponTime */
     , (100021,  51,          5) /* CombatUse - TwoHanded */
     , (100021,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100021, 106,        475) /* ItemSpellcraft */
     , (100021, 107,       2700) /* ItemCurMana */
     , (100021, 108,       2700) /* ItemMaxMana */
     , (100021, 158,          7) /* WieldRequirements - Level */
     , (100021, 159,          1) /* WieldSkillType - Axe */
     , (100021, 160,        120) /* WieldDifficulty */
     , (100021, 263,          1) /* ResistanceModifierType - Slash */
     , (100021, 267,      86400) /* Lifespan */
     , (100021, 292,          2) /* Cleaving */
     , (100021, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100021,  22, True ) /* Inscribable */
     , (100021,  69, False) /* IsSellable */
     , (100021,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100021,   5,   -0.05) /* ManaRate */
     , (100021,  21,       0) /* WeaponLength */
     , (100021,  22,    0.25) /* DamageVariance */
     , (100021,  29,    1.15) /* WeaponDefense */
     , (100021,  39,     1.1) /* DefaultScale */
     , (100021,  62,     1.2) /* WeaponOffense */
     , (100021, 147,     0.3) /* CriticalFrequency */
     , (100021, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100021,   1, 'Chimeric Two Handed Blade of the Quiddity') /* Name */
     , (100021,  16, 'A powerful but unstable weapon made from congealed Portal Energy, pulled from a rift into Portalspace itself.  The origin of these weapons is unknown, and they do not survive exposure to Dereth for more than a day.  (This weapon has a 24 hour duration from the time of its creation.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100021,   1, 0x02001182) /* Setup */
     , (100021,   3, 0x20000014) /* SoundTable */
     , (100021,   6, 0x04000BEF) /* PaletteBase */
     , (100021,   7, 0x100002E7) /* ClothingBase */
     , (100021,   8, 0x060035C0) /* Icon */
     , (100021,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100021,  52, 0x060065FB) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100021,  2096,      2)  /* Aura of Infected Caress */
     , (100021,  2101,      2)  /* Aura of Cragstone's Will */
     , (100021,  2106,      2)  /* Aura of Elysa's Sight */
     , (100021,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (100021,  5070,      2)  /* Major Two Handed Combat Aptitude */
     , (100021,  2579,      2)  /* Minor Coordination */
     , (100021,  2583,      2)  /* Minor Strength */;
