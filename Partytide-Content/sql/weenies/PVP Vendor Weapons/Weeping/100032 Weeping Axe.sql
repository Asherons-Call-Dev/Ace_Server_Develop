DELETE FROM `weenie` WHERE `class_Id` = 100032;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100032, 'starteraxeisparianperfectweeping', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100032,   1,          1) /* ItemType - MeleeWeapon */
     , (100032,   5,        750) /* EncumbranceVal */
     , (100032,   8,        750) /* Mass */
     , (100032,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100032,  16,          1) /* ItemUseable - No */
     , (100032,  18,          1) /* UiEffects - Magical */
     , (100032,  19,       1) /* Value */
     , (100032,  33,          1) /* Bonded - Bonded */
     , (100032,  36,       9999) /* ResistMagic */
     , (100032,  44,         60) /* Damage */
     , (100032,  45,          1) /* DamageType - Slash */
     , (100032,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100032,  47,          4) /* AttackType - Slash */
     , (100032,  48,         45) /* WeaponSkill - LightWeapons */
     , (100032,  49,         25) /* WeaponTime */
     , (100032,  51,          1) /* CombatUse - Melee */
     , (100032,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100032, 106,        300) /* ItemSpellcraft */
     , (100032, 107,        800) /* ItemCurMana */
     , (100032, 108,        800) /* ItemMaxMana */
     , (100032, 109,         50) /* ItemDifficulty */
     , (100032, 114,          1) /* Attuned - Attuned */
     , (100032, 150,        103) /* HookPlacement - Hook */
     , (100032, 151,          2) /* HookType - Wall */
     , (100032, 158,          2) /* WieldRequirements - RawSkill */
     , (100032, 159,         45) /* WieldSkillType - LightWeapons */
     , (100032, 160,        325) /* WieldDifficulty */
     , (100032, 166,         31) /* SlayerCreatureType - Human */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100032,  22, True ) /* Inscribable */
     , (100032,  69, False) /* IsSellable */
     , (100032,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100032,   5,  -0.025) /* ManaRate */
     , (100032,  21,    0.75) /* WeaponLength */
     , (100032,  22,     0.4) /* DamageVariance */
     , (100032,  29,    1.18) /* WeaponDefense */
     , (100032,  39,       1) /* DefaultScale */
     , (100032,  62,    1.23) /* WeaponOffense */
     , (100032, 138,     3.4) /* SlayerDamageBonus */
     , (100032, 151,       1) /* IgnoreShield */
     , (100032, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100032,   1, 'Weeping Axe') /* Name */
     , (100032,  15, 'An axe infused with the Heart of the Innocent.The weapon appears to be guided by a preternatural force seeking flesh and blood with great tenacity.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100032,   1, 0x02000F13) /* Setup */
     , (100032,   3, 0x20000014) /* SoundTable */
     , (100032,   8, 0x06002AD7) /* Icon */
     , (100032,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100032,  36, 0x0E000014) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100032,  2686,      2)  /* Moderate Light Weapon Aptitude */;
