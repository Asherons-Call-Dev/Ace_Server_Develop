DELETE FROM `weenie` WHERE `class_Id` = 100036;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100036, 'starterdaggerisparianperfectweeping', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100036,   1,          1) /* ItemType - MeleeWeapon */
     , (100036,   5,        120) /* EncumbranceVal */
     , (100036,   8,        100) /* Mass */
     , (100036,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100036,  16,          1) /* ItemUseable - No */
     , (100036,  18,          1) /* UiEffects - Magical */
     , (100036,  19,       1) /* Value */
     , (100036,  33,          1) /* Bonded - Bonded */
     , (100036,  36,       9999) /* ResistMagic */
     , (100036,  44,         59) /* Damage */
     , (100036,  45,          3) /* DamageType - Slash, Pierce */
     , (100036,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100036,  47,          6) /* AttackType - Thrust, Slash */
     , (100036,  48,         45) /* WeaponSkill - LightWeapons */
     , (100036,  49,          1) /* WeaponTime */
     , (100036,  51,          1) /* CombatUse - Melee */
     , (100036,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100036, 106,        300) /* ItemSpellcraft */
     , (100036, 107,        800) /* ItemCurMana */
     , (100036, 108,        800) /* ItemMaxMana */
     , (100036, 109,         50) /* ItemDifficulty */
     , (100036, 114,          1) /* Attuned - Attuned */
     , (100036, 150,        103) /* HookPlacement - Hook */
     , (100036, 151,          2) /* HookType - Wall */
     , (100036, 158,          2) /* WieldRequirements - RawSkill */
     , (100036, 159,         45) /* WieldSkillType - LightWeapons */
     , (100036, 160,        325) /* WieldDifficulty */
     , (100036, 166,         31) /* SlayerCreatureType - Human */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100036,  22, True ) /* Inscribable */
     , (100036,  69, False) /* IsSellable */
     , (100036,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100036,   5,  -0.025) /* ManaRate */
     , (100036,  21,     0.4) /* WeaponLength */
     , (100036,  22,     0.3) /* DamageVariance */
     , (100036,  26,       0) /* MaximumVelocity */
     , (100036,  29,    1.21) /* WeaponDefense */
     , (100036,  39,       1) /* DefaultScale */
     , (100036,  62,     1.2) /* WeaponOffense */
     , (100036,  63,       1) /* DamageMod */
     , (100036, 138,     3.4) /* SlayerDamageBonus */
     , (100036, 151,       1) /* IgnoreShield */
     , (100036, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100036,   1, 'Weeping Dagger') /* Name */
     , (100036,  15, 'A dagger infused with the Heart of the Innocent.The weapon appears to be guided by a preternatural force seeking flesh and blood with great tenacity.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100036,   1, 0x02000F15) /* Setup */
     , (100036,   3, 0x20000014) /* SoundTable */
     , (100036,   8, 0x06002ADB) /* Icon */
     , (100036,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100036,  36, 0x0E000014) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100036,  2686,      2)  /* Moderate Light Weapon Aptitude */;
