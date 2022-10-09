DELETE FROM `weenie` WHERE `class_Id` = 100013;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100013, 'ace100013-chimericbowofthequiddity', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100013,   1,        256) /* ItemType - MissileWeapon */
     , (100013,   3,         82) /* PaletteTemplate - PinkPurple */
     , (100013,   5,        325) /* EncumbranceVal */
     , (100013,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (100013,  16,          1) /* ItemUseable - No */
     , (100013,  18,          1) /* UiEffects - Magical */
     , (100013,  19,          0) /* Value */
     , (100013,  33,         1) /* Bonded - Slippery */
     , (100013,  44,         15) /* Damage */
     , (100013,  45,          1) /* DamageType - Slash */
     , (100013,  46,         16) /* DefaultCombatStyle - Bow */
     , (100013,  48,         47) /* WeaponSkill - MissileWeapons */
     , (100013,  49,         35) /* WeaponTime */
     , (100013,  50,          1) /* AmmoType - Arrow */
     , (100013,  51,          2) /* CombatUse - Missile */
     , (100013,  52,          2) /* ParentLocation - LeftHand */
     , (100013,  53,          3) /* PlacementPosition - LeftHand */
     , (100013,  60,        200) /* WeaponRange */
     , (100013,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100013, 106,        475) /* ItemSpellcraft */
     , (100013, 107,       2700) /* ItemCurMana */
     , (100013, 108,       2700) /* ItemMaxMana */
     , (100013, 158,          7) /* WieldRequirements - Level */
     , (100013, 159,         47) /* WieldSkillType - MissileWeapons */
     , (100013, 160,        120) /* WieldDifficulty */
     , (100013, 263,          1) /* ResistanceModifierType - Slash */
     , (100013, 267,      86400) /* Lifespan */
     , (100013, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100013,  22, True ) /* Inscribable */
     , (100013,  69, False) /* IsSellable */
     , (100013,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100013,   5,   -0.05) /* ManaRate */
     , (100013,  26,    26.3) /* MaximumVelocity */
     , (100013,  29,     1.2) /* WeaponDefense */
     , (100013,  63,    2.65) /* DamageMod */
     , (100013, 147,     0.3) /* CriticalFrequency */
     , (100013, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100013,   1, 'Chimeric Bow of the Quiddity') /* Name */
     , (100013,  16, 'A powerful but unstable weapon made from congealed Portal Energy, pulled from a rift into Portalspace itself.  The origin of these weapons is unknown, and they do not survive exposure to Dereth for more than a day.  (This weapon has a 24 hour duration from the time of its creation.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100013,   1, 0x02001187) /* Setup */
     , (100013,   3, 0x20000014) /* SoundTable */
     , (100013,   6, 0x04000BEF) /* PaletteBase */
     , (100013,   7, 0x100002E7) /* ClothingBase */
     , (100013,   8, 0x060035C4) /* Icon */
     , (100013,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100013,  52, 0x060065FB) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100013,  2096,      2)  /* Aura of Infected Caress */
     , (100013,  2101,      2)  /* Aura of Cragstone's Will */
     , (100013,  2116,      2)  /* Aura of Atlan's Alacrity */
     , (100013,  2505,      2)  /* Major Missile Weapon Aptitude */
     , (100013,  2579,      2)  /* Minor Coordination */
     , (100013,  2582,      2)  /* Minor Quickness */;
