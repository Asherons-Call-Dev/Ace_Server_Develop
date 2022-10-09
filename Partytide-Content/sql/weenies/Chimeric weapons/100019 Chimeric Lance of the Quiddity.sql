DELETE FROM `weenie` WHERE `class_Id` = 100019;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100019, 'ace100019-chimericlanceofthequiddity', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100019,   1,          1) /* ItemType - MeleeWeapon */
     , (100019,   3,         82) /* PaletteTemplate - PinkPurple */
     , (100019,   5,        225) /* EncumbranceVal */
     , (100019,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100019,  16,          1) /* ItemUseable - No */
     , (100019,  18,          1) /* UiEffects - Magical */
     , (100019,  19,          0) /* Value */
     , (100019,  33,         1) /* Bonded - Slippery */
     , (100019,  44,         59) /* Damage */
     , (100019,  45,          2) /* DamageType - Pierce */
     , (100019,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100019,  47,          2) /* AttackType - Thrust */
     , (100019,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (100019,  49,         35) /* WeaponTime */
     , (100019,  51,          1) /* CombatUse - Melee */
     , (100019,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100019, 106,        475) /* ItemSpellcraft */
     , (100019, 107,       2700) /* ItemCurMana */
     , (100019, 108,       2700) /* ItemMaxMana */
     , (100019, 158,          7) /* WieldRequirements - Level */
     , (100019, 159,          1) /* WieldSkillType - Axe */
     , (100019, 160,        120) /* WieldDifficulty */
     , (100019, 263,          2) /* ResistanceModifierType - Pierce */
     , (100019, 267,      86400) /* Lifespan */
     , (100019, 353,          5) /* WeaponType - Spear */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100019,  22, True ) /* Inscribable */
     , (100019,  69, False) /* IsSellable */
     , (100019,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100019,   5,   -0.05) /* ManaRate */
     , (100019,  21,     1.5) /* WeaponLength */
     , (100019,  22,     0.2) /* DamageVariance */
     , (100019,  29,    1.15) /* WeaponDefense */
     , (100019,  62,     1.2) /* WeaponOffense */
     , (100019, 147,     0.3) /* CriticalFrequency */
     , (100019, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100019,   1, 'Chimeric Lance of the Quiddity') /* Name */
     , (100019,  16, 'A powerful but unstable weapon made from congealed Portal Energy, pulled from a rift into Portalspace itself.  The origin of these weapons is unknown, and they do not survive exposure to Dereth for more than a day.  (This weapon has a 24 hour duration from the time of its creation.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100019,   1, 0x02001180) /* Setup */
     , (100019,   3, 0x20000014) /* SoundTable */
     , (100019,   6, 0x04000BEF) /* PaletteBase */
     , (100019,   7, 0x100002E7) /* ClothingBase */
     , (100019,   8, 0x060035BE) /* Icon */
     , (100019,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100019,  52, 0x060065FB) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100019,  2096,      2)  /* Aura of Infected Caress */
     , (100019,  2101,      2)  /* Aura of Cragstone's Will */
     , (100019,  2106,      2)  /* Aura of Elysa's Sight */
     , (100019,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (100019,  2509,      2)  /* Major Finesse Weapon Aptitude */
     , (100019,  2579,      2)  /* Minor Coordination */
     , (100019,  2583,      2)  /* Minor Strength */;
