DELETE FROM `weenie` WHERE `class_Id` = 100011;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100011, '24hour-chimericaxeofthequiddity', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100011,   1,          1) /* ItemType - MeleeWeapon */
     , (100011,   3,         82) /* PaletteTemplate - PinkPurple */
     , (100011,   5,        275) /* EncumbranceVal */
     , (100011,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100011,  16,          1) /* ItemUseable - No */
     , (100011,  18,          1) /* UiEffects - Magical */
     , (100011,  19,          0) /* Value */
     , (100011,  33,         1) /* Bonded - Slippery */
     , (100011,  44,         57) /* Damage */
     , (100011,  45,          1) /* DamageType - Slash */
     , (100011,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100011,  47,          4) /* AttackType - Slash */
     , (100011,  48,         45) /* WeaponSkill - LightWeapons */
     , (100011,  49,         35) /* WeaponTime */
     , (100011,  51,          1) /* CombatUse - Melee */
     , (100011,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100011, 106,        475) /* ItemSpellcraft */
     , (100011, 107,       2700) /* ItemCurMana */
     , (100011, 108,       2700) /* ItemMaxMana */
     , (100011, 158,          7) /* WieldRequirements - Level */
     , (100011, 159,          1) /* WieldSkillType - Axe */
     , (100011, 160,        120) /* WieldDifficulty */
     , (100011, 263,          1) /* ResistanceModifierType - Slash */
     , (100011, 267,      86400) /* Lifespan */
     , (100011, 353,          3) /* WeaponType - Axe */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100011,  22, True ) /* Inscribable */
     , (100011,  69, False) /* IsSellable */
     , (100011,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100011,   5,   -0.05) /* ManaRate */
     , (100011,  21,    0.75) /* WeaponLength */
     , (100011,  22,    0.15) /* DamageVariance */
     , (100011,  29,    1.15) /* WeaponDefense */
     , (100011,  62,     1.2) /* WeaponOffense */
     , (100011, 147,     0.3) /* CriticalFrequency */
     , (100011, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100011,   1, 'Chimeric Axe of the Quiddity') /* Name */
     , (100011,  16, 'A powerful but unstable weapon made from congealed Portal Energy, pulled from a rift into Portalspace itself.  The origin of these weapons is unknown, and they do not survive exposure to Dereth for more than a day.  (This weapon has a 24 hour duration from the time of its creation.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100011,   1, 0x02001183) /* Setup */
     , (100011,   3, 0x20000014) /* SoundTable */
     , (100011,   6, 0x04000BEF) /* PaletteBase */
     , (100011,   7, 0x100002E7) /* ClothingBase */
     , (100011,   8, 0x060035C1) /* Icon */
     , (100011,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100011,  52, 0x060065FB) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100011,  2096,      2)  /* Aura of Infected Caress */
     , (100011,  2101,      2)  /* Aura of Cragstone's Will */
     , (100011,  2106,      2)  /* Aura of Elysa's Sight */
     , (100011,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (100011,  2504,      2)  /* Major Light Weapon Aptitude */
     , (100011,  2579,      2)  /* Minor Coordination */
     , (100011,  2583,      2)  /* Minor Strength */;
