DELETE FROM `weenie` WHERE `class_Id` = 100037;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100037, 'startermaceisparianperfectweeping', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100037,   1,          1) /* ItemType - MeleeWeapon */
     , (100037,   5,        750) /* EncumbranceVal */
     , (100037,   8,        800) /* Mass */
     , (100037,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100037,  16,          1) /* ItemUseable - No */
     , (100037,  18,          1) /* UiEffects - Magical */
     , (100037,  19,       1) /* Value */
     , (100037,  33,          1) /* Bonded - Bonded */
     , (100037,  36,       9999) /* ResistMagic */
     , (100037,  44,         68) /* Damage */
     , (100037,  45,          4) /* DamageType - Bludgeon */
     , (100037,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100037,  47,          4) /* AttackType - Slash */
     , (100037,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (100037,  49,          5) /* WeaponTime */
     , (100037,  51,          1) /* CombatUse - Melee */
     , (100037,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100037, 106,        300) /* ItemSpellcraft */
     , (100037, 107,        800) /* ItemCurMana */
     , (100037, 108,        800) /* ItemMaxMana */
     , (100037, 109,         50) /* ItemDifficulty */
     , (100037, 114,          1) /* Attuned - Attuned */
     , (100037, 150,        103) /* HookPlacement - Hook */
     , (100037, 151,          2) /* HookType - Wall */
     , (100037, 158,          2) /* WieldRequirements - RawSkill */
     , (100037, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (100037, 160,        325) /* WieldDifficulty */
     , (100037, 166,         31) /* SlayerCreatureType - Human */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100037,  22, True ) /* Inscribable */
     , (100037,  69, False) /* IsSellable */
     , (100037,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100037,   5,  -0.025) /* ManaRate */
     , (100037,  21,     0.6) /* WeaponLength */
     , (100037,  22,     0.3) /* DamageVariance */
     , (100037,  26,       0) /* MaximumVelocity */
     , (100037,  29,    1.21) /* WeaponDefense */
     , (100037,  39,       1) /* DefaultScale */
     , (100037,  62,     1.2) /* WeaponOffense */
     , (100037,  63,       1) /* DamageMod */
     , (100037, 138,     3.4) /* SlayerDamageBonus */
     , (100037, 151,       1) /* IgnoreShield */
     , (100037, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100037,   1, 'Weeping Mace') /* Name */
     , (100037,  15, 'A mace infused with the Heart of the Innocent.The weapon appears to be guided by a preternatural force seeking flesh and blood with great tenacity.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100037,   1, 0x02000F17) /* Setup */
     , (100037,   3, 0x20000014) /* SoundTable */
     , (100037,   8, 0x06002ADD) /* Icon */
     , (100037,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100037,  36, 0x0E000014) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100037,  2694,      2)  /* Moderate Heavy Weapon Aptitude */;
