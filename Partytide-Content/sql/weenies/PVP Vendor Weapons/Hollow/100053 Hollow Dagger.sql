DELETE FROM `weenie` WHERE `class_Id` = 100053;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100053, 'starterdaggerhollow', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100053,   1,          1) /* ItemType - MeleeWeapon */
     , (100053,   3,         20) /* PaletteTemplate - Silver */
     , (100053,   5,        135) /* EncumbranceVal */
     , (100053,   8,         90) /* Mass */
     , (100053,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100053,  16,          1) /* ItemUseable - No */
     , (100053,  19,       1) /* Value */
     , (100053,  33,          1) /* Bonded - Bonded */
     , (100053,  36,       9999) /* ResistMagic */
     , (100053,  44,         42) /* Damage */
     , (100053,  45,          3) /* DamageType - Slash, Pierce */
     , (100053,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100053,  47,          6) /* AttackType - Thrust, Slash */
     , (100053,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (100053,  49,         20) /* WeaponTime */
     , (100053,  51,          1) /* CombatUse - Melee */
     , (100053,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100053, 114,          1) /* Attuned - Attuned */
     , (100053, 151,          2) /* HookType - Wall */
     , (100053, 353,          6) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100053,  11, True ) /* IgnoreCollisions */
     , (100053,  13, True ) /* Ethereal */
     , (100053,  14, True ) /* GravityStatus */
     , (100053,  15, True ) /* LightsStatus */
     , (100053,  19, True ) /* Attackable */
     , (100053,  22, True ) /* Inscribable */
     , (100053,  23, True ) /* DestroyOnSell */
     , (100053,  65, True ) /* IgnoreMagicResist */
     , (100053,  66, True ) /* IgnoreMagicArmor */
     , (100053,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100053,  21,     0.4) /* WeaponLength */
     , (100053,  22,     0.5) /* DamageVariance */
     , (100053,  26,       0) /* MaximumVelocity */
     , (100053,  29,       1) /* WeaponDefense */
     , (100053,  62,    1.05) /* WeaponOffense */
     , (100053,  63,       1) /* DamageMod */
     , (100053,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100053,   1, 'Hollow Dagger') /* Name */
     , (100053,  15, 'A dagger crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (100053,  16, 'A dagger crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100053,   1, 0x020008AA) /* Setup */
     , (100053,   3, 0x20000014) /* SoundTable */
     , (100053,   6, 0x04000BEF) /* PaletteBase */
     , (100053,   7, 0x10000147) /* ClothingBase */
     , (100053,   8, 0x060015CB) /* Icon */
     , (100053,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100053,  36, 0x0E000014) /* MutateFilter */;
