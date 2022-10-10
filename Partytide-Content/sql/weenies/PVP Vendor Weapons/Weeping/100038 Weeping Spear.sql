DELETE FROM `weenie` WHERE `class_Id` = 100038;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100038, 'starterspearisparianperfectweeping', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100038,   1,          1) /* ItemType - MeleeWeapon */
     , (100038,   5,        650) /* EncumbranceVal */
     , (100038,   8,        650) /* Mass */
     , (100038,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100038,  16,          1) /* ItemUseable - No */
     , (100038,  18,          1) /* UiEffects - Magical */
     , (100038,  19,       1) /* Value */
     , (100038,  33,          1) /* Bonded - Bonded */
     , (100038,  36,       9999) /* ResistMagic */
     , (100038,  44,         62) /* Damage */
     , (100038,  45,          2) /* DamageType - Pierce */
     , (100038,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100038,  47,          2) /* AttackType - Thrust */
     , (100038,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (100038,  49,          1) /* WeaponTime */
     , (100038,  51,          1) /* CombatUse - Melee */
     , (100038,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100038, 106,        300) /* ItemSpellcraft */
     , (100038, 107,        800) /* ItemCurMana */
     , (100038, 108,        800) /* ItemMaxMana */
     , (100038, 109,         50) /* ItemDifficulty */
     , (100038, 114,          1) /* Attuned - Attuned */
     , (100038, 150,        103) /* HookPlacement - Hook */
     , (100038, 151,          2) /* HookType - Wall */
     , (100038, 158,          2) /* WieldRequirements - RawSkill */
     , (100038, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (100038, 160,        325) /* WieldDifficulty */
     , (100038, 166,         31) /* SlayerCreatureType - Human */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100038,  22, True ) /* Inscribable */
     , (100038,  69, False) /* IsSellable */
     , (100038,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100038,   5,  -0.025) /* ManaRate */
     , (100038,  21,     1.5) /* WeaponLength */
     , (100038,  22,    0.45) /* DamageVariance */
     , (100038,  26,       0) /* MaximumVelocity */
     , (100038,  29,    1.18) /* WeaponDefense */
     , (100038,  39,       1) /* DefaultScale */
     , (100038,  62,    1.23) /* WeaponOffense */
     , (100038,  63,       1) /* DamageMod */
     , (100038, 138,     3.4) /* SlayerDamageBonus */
     , (100038, 151,       1) /* IgnoreShield */
     , (100038, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100038,   1, 'Weeping Spear') /* Name */
     , (100038,  15, 'A spear infused with the Heart of the Innocent.The weapon appears to be guided by a preternatural force seeking flesh and blood with great tenacity.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100038,   1, 0x02000F18) /* Setup */
     , (100038,   3, 0x20000014) /* SoundTable */
     , (100038,   8, 0x06002ADF) /* Icon */
     , (100038,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100038,  36, 0x0E000014) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100038,  2689,      2)  /* Moderate Finesse Weapon Aptitude */;
