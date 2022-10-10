DELETE FROM `weenie` WHERE `class_Id` = 100028;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100028, 'starterbowhollow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100028,   1,        256) /* ItemType - MissileWeapon */
     , (100028,   3,         82) /* PaletteTemplate - PinkPurple */
     , (100028,   5,        450) /* EncumbranceVal */
     , (100028,   8,        140) /* Mass */
     , (100028,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (100028,  16,          1) /* ItemUseable - No */
     , (100028,  19,       1) /* Value */
     , (100028,  33,          1) /* Bonded - Bonded */
     , (100028,  36,       9999) /* ResistMagic */
     , (100028,  44,          0) /* Damage */
     , (100028,  46,         16) /* DefaultCombatStyle - Bow */
     , (100028,  48,         47) /* WeaponSkill - MissileWeapons */
     , (100028,  49,         30) /* WeaponTime */
     , (100028,  50,         64) /* AmmoType - ArrowChorizite */
     , (100028,  51,          2) /* CombatUse - Missile */
     , (100028,  52,          2) /* ParentLocation - LeftHand */
     , (100028,  53,          3) /* PlacementPosition - LeftHand */
     , (100028,  60,        175) /* WeaponRange */
     , (100028,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100028, 114,          1) /* Attuned - Attuned */
     , (100028, 150,        103) /* HookPlacement - Hook */
     , (100028, 151,          2) /* HookType - Wall */
     , (100028, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100028,  11, True ) /* IgnoreCollisions */
     , (100028,  13, True ) /* Ethereal */
     , (100028,  14, True ) /* GravityStatus */
     , (100028,  15, True ) /* LightsStatus */
     , (100028,  19, True ) /* Attackable */
     , (100028,  22, True ) /* Inscribable */
     , (100028,  23, True ) /* DestroyOnSell */
     , (100028,  65, True ) /* IgnoreMagicResist */
     , (100028,  66, True ) /* IgnoreMagicArmor */
     , (100028,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100028,  21,       0) /* WeaponLength */
     , (100028,  22,       0) /* DamageVariance */
     , (100028,  26,      50) /* MaximumVelocity */
     , (100028,  29,    1.06) /* WeaponDefense */
     , (100028,  62,       1) /* WeaponOffense */
     , (100028,  63,       3) /* DamageMod */
     , (100028,  76,     0.5) /* Translucency */
     , (100028,  77,       1) /* PhysicsScriptIntensity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100028,   1, 'Hollow Bow') /* Name */
     , (100028,  16, 'A bow crafted from high-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100028,   1, 0x02000E2B) /* Setup */
     , (100028,   3, 0x20000014) /* SoundTable */
     , (100028,   6, 0x04000BEF) /* PaletteBase */
     , (100028,   7, 0x1000012F) /* ClothingBase */
     , (100028,   8, 0x0600158F) /* Icon */
     , (100028,  19, 0x00000058) /* ActivationAnimation */
     , (100028,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100028,  30,         87) /* PhysicsScript - BreatheLightning */;
