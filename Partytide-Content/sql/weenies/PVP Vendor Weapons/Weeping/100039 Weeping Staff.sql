DELETE FROM `weenie` WHERE `class_Id` = 100039;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100039, 'starterstaffisparianperfectweeping', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100039,   1,          1) /* ItemType - MeleeWeapon */
     , (100039,   5,        450) /* EncumbranceVal */
     , (100039,   8,        350) /* Mass */
     , (100039,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100039,  16,          1) /* ItemUseable - No */
     , (100039,  18,          1) /* UiEffects - Magical */
     , (100039,  19,       1) /* Value */
     , (100039,  33,          1) /* Bonded - Bonded */
     , (100039,  36,       9999) /* ResistMagic */
     , (100039,  44,         54) /* Damage */
     , (100039,  45,          4) /* DamageType - Bludgeon */
     , (100039,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100039,  47,          6) /* AttackType - Thrust, Slash */
     , (100039,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (100039,  49,          1) /* WeaponTime */
     , (100039,  51,          1) /* CombatUse - Melee */
     , (100039,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100039, 106,        300) /* ItemSpellcraft */
     , (100039, 107,        800) /* ItemCurMana */
     , (100039, 108,        800) /* ItemMaxMana */
     , (100039, 109,         50) /* ItemDifficulty */
     , (100039, 114,          1) /* Attuned - Attuned */
     , (100039, 150,        103) /* HookPlacement - Hook */
     , (100039, 151,          2) /* HookType - Wall */
     , (100039, 158,          2) /* WieldRequirements - RawSkill */
     , (100039, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (100039, 160,        325) /* WieldDifficulty */
     , (100039, 166,         31) /* SlayerCreatureType - Human */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100039,  22, True ) /* Inscribable */
     , (100039,  69, False) /* IsSellable */
     , (100039,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100039,   5,  -0.025) /* ManaRate */
     , (100039,  21,    1.33) /* WeaponLength */
     , (100039,  22,     0.3) /* DamageVariance */
     , (100039,  29,    1.18) /* WeaponDefense */
     , (100039,  39,       1) /* DefaultScale */
     , (100039,  62,    1.23) /* WeaponOffense */
     , (100039, 138,     3.4) /* SlayerDamageBonus */
     , (100039, 151,       1) /* IgnoreShield */
     , (100039, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100039,   1, 'Weeping Staff') /* Name */
     , (100039,  15, 'A staff infused with the Heart of the Innocent.The weapon appears to be guided by a preternatural force seeking flesh and blood with great tenacity.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100039,   1, 0x02000F19) /* Setup */
     , (100039,   3, 0x20000014) /* SoundTable */
     , (100039,   8, 0x06002AD6) /* Icon */
     , (100039,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100039,  36, 0x0E000014) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100039,  2689,      2)  /* Moderate Finesse Weapon Aptitude */;
