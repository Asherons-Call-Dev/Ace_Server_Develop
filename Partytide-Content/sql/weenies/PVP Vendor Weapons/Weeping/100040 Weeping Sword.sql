DELETE FROM `weenie` WHERE `class_Id` = 100040;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100040, 'starterswordisparianperfectweeping', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100040,   1,          1) /* ItemType - MeleeWeapon */
     , (100040,   5,        550) /* EncumbranceVal */
     , (100040,   8,        450) /* Mass */
     , (100040,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100040,  16,          1) /* ItemUseable - No */
     , (100040,  18,          1) /* UiEffects - Magical */
     , (100040,  19,       1) /* Value */
     , (100040,  33,          1) /* Bonded - Bonded */
     , (100040,  36,       9999) /* ResistMagic */
     , (100040,  44,         61) /* Damage */
     , (100040,  45,          3) /* DamageType - Slash, Pierce */
     , (100040,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100040,  47,          6) /* AttackType - Thrust, Slash */
     , (100040,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (100040,  49,          5) /* WeaponTime */
     , (100040,  51,          1) /* CombatUse - Melee */
     , (100040,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100040, 106,        300) /* ItemSpellcraft */
     , (100040, 107,        800) /* ItemCurMana */
     , (100040, 108,        800) /* ItemMaxMana */
     , (100040, 109,         50) /* ItemDifficulty */
     , (100040, 114,          1) /* Attuned - Attuned */
     , (100040, 150,        103) /* HookPlacement - Hook */
     , (100040, 151,          2) /* HookType - Wall */
     , (100040, 158,          2) /* WieldRequirements - RawSkill */
     , (100040, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (100040, 160,        325) /* WieldDifficulty */
     , (100040, 166,         31) /* SlayerCreatureType - Human */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100040,  22, True ) /* Inscribable */
     , (100040,  69, False) /* IsSellable */
     , (100040,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100040,   5,  -0.025) /* ManaRate */
     , (100040,  21,       1) /* WeaponLength */
     , (100040,  22,     0.4) /* DamageVariance */
     , (100040,  26,       0) /* MaximumVelocity */
     , (100040,  29,     1.2) /* WeaponDefense */
     , (100040,  39,       1) /* DefaultScale */
     , (100040,  62,    1.21) /* WeaponOffense */
     , (100040,  63,       1) /* DamageMod */
     , (100040, 138,     3.4) /* SlayerDamageBonus */
     , (100040, 151,       1) /* IgnoreShield */
     , (100040, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100040,   1, 'Weeping Sword') /* Name */
     , (100040,  15, 'A sword infused with the Heart of the Innocent.The weapon appears to be guided by a preternatural force seeking flesh and blood with great tenacity.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100040,   1, 0x02000F1A) /* Setup */
     , (100040,   3, 0x20000014) /* SoundTable */
     , (100040,   8, 0x06002AD8) /* Icon */
     , (100040,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100040,  36, 0x0E000014) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100040,  2689,      2)  /* Moderate Finesse Weapon Aptitude */;
