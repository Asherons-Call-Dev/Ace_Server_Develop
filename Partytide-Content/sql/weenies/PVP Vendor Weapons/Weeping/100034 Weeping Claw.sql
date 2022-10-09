DELETE FROM `weenie` WHERE `class_Id` = 100034;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100034, 'starterclawisparianperfectweeping', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100034,   1,          1) /* ItemType - MeleeWeapon */
     , (100034,   5,        125) /* EncumbranceVal */
     , (100034,   8,        110) /* Mass */
     , (100034,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100034,  16,          1) /* ItemUseable - No */
     , (100034,  18,          1) /* UiEffects - Magical */
     , (100034,  19,       1) /* Value */
     , (100034,  33,          1) /* Bonded - Bonded */
     , (100034,  36,       9999) /* ResistMagic */
     , (100034,  44,         54) /* Damage */
     , (100034,  45,          1) /* DamageType - Slash */
     , (100034,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (100034,  47,          1) /* AttackType - Punch */
     , (100034,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (100034,  49,          1) /* WeaponTime */
     , (100034,  51,          1) /* CombatUse - Melee */
     , (100034,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100034, 106,        300) /* ItemSpellcraft */
     , (100034, 107,        800) /* ItemCurMana */
     , (100034, 108,        800) /* ItemMaxMana */
     , (100034, 109,         50) /* ItemDifficulty */
     , (100034, 114,          1) /* Attuned - Attuned */
     , (100034, 150,        103) /* HookPlacement - Hook */
     , (100034, 151,          2) /* HookType - Wall */
     , (100034, 158,          2) /* WieldRequirements - RawSkill */
     , (100034, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (100034, 160,        325) /* WieldDifficulty */
     , (100034, 166,         31) /* SlayerCreatureType - Human */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100034,  22, True ) /* Inscribable */
     , (100034,  69, False) /* IsSellable */
     , (100034,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100034,   5,  -0.025) /* ManaRate */
     , (100034,  21,    0.55) /* WeaponLength */
     , (100034,  22,     0.5) /* DamageVariance */
     , (100034,  26,       0) /* MaximumVelocity */
     , (100034,  29,    1.18) /* WeaponDefense */
     , (100034,  39,       1) /* DefaultScale */
     , (100034,  62,    1.23) /* WeaponOffense */
     , (100034,  63,       1) /* DamageMod */
     , (100034, 138,     3.4) /* SlayerDamageBonus */
     , (100034, 151,       1) /* IgnoreShield */
     , (100034, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100034,   1, 'Weeping Claw') /* Name */
     , (100034,  15, 'A claw infused with the Heart of the Innocent.The weapon appears to be guided by a preternatural force seeking flesh and blood with great tenacity.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100034,   1, 0x02000F16) /* Setup */
     , (100034,   3, 0x20000014) /* SoundTable */
     , (100034,   8, 0x06002ADC) /* Icon */
     , (100034,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100034,  36, 0x0E000014) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100034,  2694,      2)  /* Moderate Heavy Weapon Aptitude */;
