DELETE FROM `weenie` WHERE `class_Id` = 100025;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100025, 'starterspearhollow', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100025,   1,          1) /* ItemType - MeleeWeapon */
     , (100025,   3,         20) /* PaletteTemplate - Silver */
     , (100025,   5,        700) /* EncumbranceVal */
     , (100025,   8,        140) /* Mass */
     , (100025,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100025,  16,          1) /* ItemUseable - No */
     , (100025,  19,       1) /* Value */
     , (100025,  33,          1) /* Bonded - Bonded */
     , (100025,  36,       9999) /* ResistMagic */
     , (100025,  44,         38) /* Damage */
     , (100025,  45,          2) /* DamageType - Pierce */
     , (100025,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100025,  47,          2) /* AttackType - Thrust */
     , (100025,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (100025,  49,         30) /* WeaponTime */
     , (100025,  51,          1) /* CombatUse - Melee */
     , (100025,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100025, 114,          1) /* Attuned - Attuned */
     , (100025, 353,          5) /* WeaponType - Spear */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100025,  11, True ) /* IgnoreCollisions */
     , (100025,  13, True ) /* Ethereal */
     , (100025,  14, True ) /* GravityStatus */
     , (100025,  15, True ) /* LightsStatus */
     , (100025,  19, True ) /* Attackable */
     , (100025,  22, True ) /* Inscribable */
     , (100025,  23, True ) /* DestroyOnSell */
     , (100025,  65, True ) /* IgnoreMagicResist */
     , (100025,  66, True ) /* IgnoreMagicArmor */
     , (100025,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100025,  21,     1.5) /* WeaponLength */
     , (100025,  22,     0.5) /* DamageVariance */
     , (100025,  26,       0) /* MaximumVelocity */
     , (100025,  29,       1) /* WeaponDefense */
     , (100025,  62,    1.05) /* WeaponOffense */
     , (100025,  63,       1) /* DamageMod */
     , (100025,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100025,   1, 'Hollow Spear') /* Name */
     , (100025,  15, 'A spear crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (100025,  16, 'A spear crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100025,   1, 0x020008A6) /* Setup */
     , (100025,   3, 0x20000014) /* SoundTable */
     , (100025,   6, 0x04000BEF) /* PaletteBase */
     , (100025,   7, 0x10000138) /* ClothingBase */
     , (100025,   8, 0x0600164D) /* Icon */
     , (100025,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100025,  36, 0x0E000014) /* MutateFilter */;
