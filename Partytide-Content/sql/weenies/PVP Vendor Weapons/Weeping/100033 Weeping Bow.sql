DELETE FROM `weenie` WHERE `class_Id` = 100033;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100033, 'starterbowisparianperfectweeping', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100033,   1,        256) /* ItemType - MissileWeapon */
     , (100033,   5,        950) /* EncumbranceVal */
     , (100033,   8,        140) /* Mass */
     , (100033,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (100033,  16,          1) /* ItemUseable - No */
     , (100033,  18,          1) /* UiEffects - Magical */
     , (100033,  19,       1) /* Value */
     , (100033,  33,          1) /* Bonded - Bonded */
     , (100033,  36,       9999) /* ResistMagic */
     , (100033,  44,         26) /* Damage */
     , (100033,  46,         16) /* DefaultCombatStyle - Bow */
     , (100033,  48,         47) /* WeaponSkill - MissileWeapons */
     , (100033,  49,         10) /* WeaponTime */
     , (100033,  50,          1) /* AmmoType - Arrow */
     , (100033,  51,          2) /* CombatUse - Missile */
     , (100033,  52,          2) /* ParentLocation - LeftHand */
     , (100033,  53,          3) /* PlacementPosition - LeftHand */
     , (100033,  60,        175) /* WeaponRange */
     , (100033,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100033, 106,        300) /* ItemSpellcraft */
     , (100033, 107,        800) /* ItemCurMana */
     , (100033, 108,        800) /* ItemMaxMana */
     , (100033, 109,         50) /* ItemDifficulty */
     , (100033, 114,          1) /* Attuned - Attuned */
     , (100033, 150,        103) /* HookPlacement - Hook */
     , (100033, 151,          2) /* HookType - Wall */
     , (100033, 158,          2) /* WieldRequirements - RawSkill */
     , (100033, 159,         47) /* WieldSkillType - MissileWeapons */
     , (100033, 160,        290) /* WieldDifficulty */
     , (100033, 166,         31) /* SlayerCreatureType - Human */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100033,  22, True ) /* Inscribable */
     , (100033,  69, False) /* IsSellable */
     , (100033,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100033,   5,  -0.025) /* ManaRate */
     , (100033,  21,       0) /* WeaponLength */
     , (100033,  22,       0) /* DamageVariance */
     , (100033,  26,      50) /* MaximumVelocity */
     , (100033,  29,    1.18) /* WeaponDefense */
     , (100033,  62,       1) /* WeaponOffense */
     , (100033,  63,    2.18) /* DamageMod */
     , (100033, 138,     2.9) /* SlayerDamageBonus */
     , (100033, 151,       1) /* IgnoreShield */
     , (100033, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100033,   1, 'Weeping Bow') /* Name */
     , (100033,  15, 'A bow infused with the Heart of the Innocent.The weapon appears to be guided by a preternatural force seeking flesh and blood with great tenacity.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100033,   1, 0x02000F14) /* Setup */
     , (100033,   3, 0x20000014) /* SoundTable */
     , (100033,   8, 0x06002AE0) /* Icon */
     , (100033,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100033,  2687,      2)  /* Moderate Missile Weapon Aptitude */;
