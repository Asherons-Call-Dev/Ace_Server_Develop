DELETE FROM `weenie` WHERE `class_Id` = 100022;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100022, 'starteraxebattlehollow', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100022,   1,          1) /* ItemType - MeleeWeapon */
     , (100022,   3,         20) /* PaletteTemplate - Silver */
     , (100022,   5,        800) /* EncumbranceVal */
     , (100022,   8,        320) /* Mass */
     , (100022,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100022,  16,          1) /* ItemUseable - No */
     , (100022,  19,       1) /* Value */
     , (100022,  33,          1) /* Bonded - Bonded */
     , (100022,  36,       9999) /* ResistMagic */
     , (100022,  44,         38) /* Damage */
     , (100022,  45,          1) /* DamageType - Slash */
     , (100022,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100022,  47,          4) /* AttackType - Slash */
     , (100022,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (100022,  49,         30) /* WeaponTime */
     , (100022,  51,          1) /* CombatUse - Melee */
     , (100022,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100022, 114,          1) /* Attuned - Attuned */
     , (100022, 353,          3) /* WeaponType - Axe */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100022,  11, True ) /* IgnoreCollisions */
     , (100022,  13, True ) /* Ethereal */
     , (100022,  14, True ) /* GravityStatus */
     , (100022,  15, True ) /* LightsStatus */
     , (100022,  19, True ) /* Attackable */
     , (100022,  22, True ) /* Inscribable */
     , (100022,  23, True ) /* DestroyOnSell */
     , (100022,  65, True ) /* IgnoreMagicResist */
     , (100022,  66, True ) /* IgnoreMagicArmor */
     , (100022,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100022,  21,    0.75) /* WeaponLength */
     , (100022,  22,     0.5) /* DamageVariance */
     , (100022,  26,       0) /* MaximumVelocity */
     , (100022,  29,       1) /* WeaponDefense */
     , (100022,  62,    1.05) /* WeaponOffense */
     , (100022,  63,       1) /* DamageMod */
     , (100022,  76,     0.7) /* Translucency */
     , (100022,  77,       1) /* PhysicsScriptIntensity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100022,   1, 'Hollow Axe') /* Name */
     , (100022,  15, 'An axe crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (100022,  16, 'An axe crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100022,   1, 0x020008AB) /* Setup */
     , (100022,   3, 0x20000014) /* SoundTable */
     , (100022,   6, 0x04000BEF) /* PaletteBase */
     , (100022,   7, 0x10000143) /* ClothingBase */
     , (100022,   8, 0x06001639) /* Icon */
     , (100022,  19, 0x00000058) /* ActivationAnimation */
     , (100022,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100022,  30,         87) /* PhysicsScript - BreatheLightning */
     , (100022,  36, 0x0E000014) /* MutateFilter */;
