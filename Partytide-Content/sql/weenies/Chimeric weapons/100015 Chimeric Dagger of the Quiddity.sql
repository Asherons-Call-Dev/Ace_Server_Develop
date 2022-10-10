DELETE FROM `weenie` WHERE `class_Id` = 100015;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100015, 'ace100015-chimericdaggerofthequiddity', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100015,   1,          1) /* ItemType - MeleeWeapon */
     , (100015,   3,         82) /* PaletteTemplate - PinkPurple */
     , (100015,   5,        100) /* EncumbranceVal */
     , (100015,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100015,  16,          1) /* ItemUseable - No */
     , (100015,  18,          1) /* UiEffects - Magical */
     , (100015,  19,          0) /* Value */
     , (100015,  33,         1) /* Bonded - Slippery */
     , (100015,  44,         62) /* Damage */
     , (100015,  45,          2) /* DamageType - Pierce */
     , (100015,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100015,  47,          2) /* AttackType - Thrust */
     , (100015,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (100015,  49,         20) /* WeaponTime */
     , (100015,  51,          1) /* CombatUse - Melee */
     , (100015,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100015, 106,        475) /* ItemSpellcraft */
     , (100015, 107,       2700) /* ItemCurMana */
     , (100015, 108,       2700) /* ItemMaxMana */
     , (100015, 158,          7) /* WieldRequirements - Level */
     , (100015, 159,          1) /* WieldSkillType - Axe */
     , (100015, 160,        120) /* WieldDifficulty */
     , (100015, 263,          2) /* ResistanceModifierType - Pierce */
     , (100015, 267,      86400) /* Lifespan */
     , (100015, 353,          6) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100015,  22, True ) /* Inscribable */
     , (100015,  69, False) /* IsSellable */
     , (100015,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100015,   5,   -0.05) /* ManaRate */
     , (100015,  21,     0.4) /* WeaponLength */
     , (100015,  22,    0.15) /* DamageVariance */
     , (100015,  29,    1.15) /* WeaponDefense */
     , (100015,  62,     1.2) /* WeaponOffense */
     , (100015, 147,     0.3) /* CriticalFrequency */
     , (100015, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100015,   1, 'Chimeric Dagger of the Quiddity') /* Name */
     , (100015,  16, 'A powerful but unstable weapon made from congealed Portal Energy, pulled from a rift into Portalspace itself.  The origin of these weapons is unknown, and they do not survive exposure to Dereth for more than a day.  (This weapon has a 24 hour duration from the time of its creation.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100015,   1, 0x02001189) /* Setup */
     , (100015,   3, 0x20000014) /* SoundTable */
     , (100015,   6, 0x04000BEF) /* PaletteBase */
     , (100015,   7, 0x100002E7) /* ClothingBase */
     , (100015,   8, 0x060035C6) /* Icon */
     , (100015,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100015,  52, 0x060065FB) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100015,  2096,      2)  /* Aura of Infected Caress */
     , (100015,  2101,      2)  /* Aura of Cragstone's Will */
     , (100015,  2106,      2)  /* Aura of Elysa's Sight */
     , (100015,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (100015,  2531,      2)  /* Major Heavy Weapon Aptitude */
     , (100015,  2579,      2)  /* Minor Coordination */
     , (100015,  2583,      2)  /* Minor Strength */;
