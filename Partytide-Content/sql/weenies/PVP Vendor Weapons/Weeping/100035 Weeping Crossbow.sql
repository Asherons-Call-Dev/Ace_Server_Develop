DELETE FROM `weenie` WHERE `class_Id` = 100035;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100035, 'startercrossbowisparianperfectweeping', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100035,   1,        256) /* ItemType - MissileWeapon */
     , (100035,   5,       1800) /* EncumbranceVal */
     , (100035,   8,        640) /* Mass */
     , (100035,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (100035,  16,          1) /* ItemUseable - No */
     , (100035,  18,          1) /* UiEffects - Magical */
     , (100035,  19,       1) /* Value */
     , (100035,  33,          1) /* Bonded - Bonded */
     , (100035,  36,       9999) /* ResistMagic */
     , (100035,  44,         26) /* Damage */
     , (100035,  46,         32) /* DefaultCombatStyle - Crossbow */
     , (100035,  48,         47) /* WeaponSkill - MissileWeapons */
     , (100035,  49,         60) /* WeaponTime */
     , (100035,  50,          2) /* AmmoType - Bolt */
     , (100035,  51,          2) /* CombatUse - Missile */
     , (100035,  52,          2) /* ParentLocation - LeftHand */
     , (100035,  53,          3) /* PlacementPosition - LeftHand */
     , (100035,  60,        195) /* WeaponRange */
     , (100035,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100035, 106,        300) /* ItemSpellcraft */
     , (100035, 107,        800) /* ItemCurMana */
     , (100035, 108,        800) /* ItemMaxMana */
     , (100035, 109,         50) /* ItemDifficulty */
     , (100035, 114,          1) /* Attuned - Attuned */
     , (100035, 150,        103) /* HookPlacement - Hook */
     , (100035, 151,          2) /* HookType - Wall */
     , (100035, 158,          2) /* WieldRequirements - RawSkill */
     , (100035, 159,         47) /* WieldSkillType - MissileWeapons */
     , (100035, 160,        290) /* WieldDifficulty */
     , (100035, 166,         31) /* SlayerCreatureType - Human */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100035,  22, True ) /* Inscribable */
     , (100035,  69, False) /* IsSellable */
     , (100035,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100035,   5,  -0.025) /* ManaRate */
     , (100035,  21,       0) /* WeaponLength */
     , (100035,  22,       0) /* DamageVariance */
     , (100035,  26,      50) /* MaximumVelocity */
     , (100035,  29,    1.18) /* WeaponDefense */
     , (100035,  39,    1.25) /* DefaultScale */
     , (100035,  62,       1) /* WeaponOffense */
     , (100035,  63,    2.43) /* DamageMod */
     , (100035, 138,     2.9) /* SlayerDamageBonus */
     , (100035, 151,       1) /* IgnoreShield */
     , (100035, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100035,   1, 'Weeping Crossbow') /* Name */
     , (100035,  15, 'A crossbow infused with the Heart of the Innocent.The weapon appears to be guided by a preternatural force seeking flesh and blood with great tenacity.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100035,   1, 0x02000F1B) /* Setup */
     , (100035,   3, 0x20000014) /* SoundTable */
     , (100035,   8, 0x06002ADA) /* Icon */
     , (100035,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100035,  2688,      2)  /* Moderate Missile Weapon Aptitude */;
