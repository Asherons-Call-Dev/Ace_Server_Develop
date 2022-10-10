DELETE FROM `weenie` WHERE `class_Id` = 100031;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100031, 'starteratlatlisparianperfectweeping', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100031,   1,        256) /* ItemType - MissileWeapon */
     , (100031,   5,        370) /* EncumbranceVal */
     , (100031,   8,         15) /* Mass */
     , (100031,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (100031,  16,          1) /* ItemUseable - No */
     , (100031,  18,          1) /* UiEffects - Magical */
     , (100031,  19,       1) /* Value */
     , (100031,  33,          1) /* Bonded - Bonded */
     , (100031,  36,       9999) /* ResistMagic */
     , (100031,  44,         26) /* Damage */
     , (100031,  46,       1024) /* DefaultCombatStyle - Atlatl */
     , (100031,  48,         47) /* WeaponSkill - MissileWeapons */
     , (100031,  49,          1) /* WeaponTime */
     , (100031,  50,          4) /* AmmoType - Atlatl */
     , (100031,  51,          2) /* CombatUse - Missile */
     , (100031,  60,        120) /* WeaponRange */
     , (100031,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100031, 106,        300) /* ItemSpellcraft */
     , (100031, 107,        800) /* ItemCurMana */
     , (100031, 108,        800) /* ItemMaxMana */
     , (100031, 109,         50) /* ItemDifficulty */
     , (100031, 114,          1) /* Attuned - Attuned */
     , (100031, 150,        103) /* HookPlacement - Hook */
     , (100031, 151,          2) /* HookType - Wall */
     , (100031, 158,          2) /* WieldRequirements - RawSkill */
     , (100031, 159,         47) /* WieldSkillType - MissileWeapons */
     , (100031, 160,        290) /* WieldDifficulty */
     , (100031, 166,         31) /* SlayerCreatureType - Human */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100031,  22, True ) /* Inscribable */
     , (100031,  69, False) /* IsSellable */
     , (100031,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100031,   5,  -0.025) /* ManaRate */
     , (100031,  26,      50) /* MaximumVelocity */
     , (100031,  29,    1.18) /* WeaponDefense */
     , (100031,  39,       1) /* DefaultScale */
     , (100031,  62,       1) /* WeaponOffense */
     , (100031,  63,    2.43) /* DamageMod */
     , (100031, 138,     2.9) /* SlayerDamageBonus */
     , (100031, 151,       1) /* IgnoreShield */
     , (100031, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100031,   1, 'Weeping Atlatl') /* Name */
     , (100031,  15, 'An atlatl infused with the Heart of the Innocent. The weapon appears to be guided by a preternatural force seeking flesh and blood with great tenacity.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100031,   1, 0x02000F12) /* Setup */
     , (100031,   3, 0x20000014) /* SoundTable */
     , (100031,   8, 0x06002ADE) /* Icon */
     , (100031,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100031,  36, 0x0E000014) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100031,  2695,      2)  /* Moderate Missile Weapon Aptitude */;
