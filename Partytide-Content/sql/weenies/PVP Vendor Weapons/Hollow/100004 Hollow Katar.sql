DELETE FROM `weenie` WHERE `class_Id` = 100004;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100004, 'starterkatarhollow', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100004,   1,          1) /* ItemType - MeleeWeapon */
     , (100004,   3,         20) /* PaletteTemplate - Silver */
     , (100004,   5,        135) /* EncumbranceVal */
     , (100004,   8,         90) /* Mass */
     , (100004,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100004,  16,          1) /* ItemUseable - No */
     , (100004,  19,       1) /* Value */
     , (100004,  33,          1) /* Bonded - Bonded */
     , (100004,  36,       9999) /* ResistMagic */
     , (100004,  44,         30) /* Damage */
     , (100004,  45,          3) /* DamageType - Slash, Pierce */
     , (100004,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (100004,  47,          1) /* AttackType - Punch */
     , (100004,  48,         45) /* WeaponSkill - LightWeapons */
     , (100004,  49,         20) /* WeaponTime */
     , (100004,  51,          1) /* CombatUse - Melee */
     , (100004,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100004, 114,          1) /* Attuned - Attuned */
     , (100004, 353,          1) /* WeaponType - Unarmed */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100004,  11, True ) /* IgnoreCollisions */
     , (100004,  13, True ) /* Ethereal */
     , (100004,  14, True ) /* GravityStatus */
     , (100004,  15, True ) /* LightsStatus */
     , (100004,  19, True ) /* Attackable */
     , (100004,  22, True ) /* Inscribable */
     , (100004,  23, True ) /* DestroyOnSell */
     , (100004,  65, True ) /* IgnoreMagicResist */
     , (100004,  66, True ) /* IgnoreMagicArmor */
     , (100004,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100004,  21,    0.52) /* WeaponLength */
     , (100004,  22,     0.5) /* DamageVariance */
     , (100004,  26,       0) /* MaximumVelocity */
     , (100004,  29,    1.05) /* WeaponDefense */
     , (100004,  62,    1.05) /* WeaponOffense */
     , (100004,  63,       1) /* DamageMod */
     , (100004,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100004,   1, 'Hollow Katar') /* Name */
     , (100004,  15, 'A katar crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (100004,  16, 'A katar crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100004,   1, 0x020008A8) /* Setup */
     , (100004,   3, 0x20000014) /* SoundTable */
     , (100004,   6, 0x04000BEF) /* PaletteBase */
     , (100004,   7, 0x1000014D) /* ClothingBase */
     , (100004,   8, 0x060015FD) /* Icon */
     , (100004,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100004,  36, 0x0E000014) /* MutateFilter */;
