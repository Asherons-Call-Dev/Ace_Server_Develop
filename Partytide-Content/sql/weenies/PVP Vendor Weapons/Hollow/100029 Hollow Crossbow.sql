DELETE FROM `weenie` WHERE `class_Id` = 100029;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100029, 'startercrossbowhollow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100029,   1,        256) /* ItemType - MissileWeapon */
     , (100029,   3,         82) /* PaletteTemplate - PinkPurple */
     , (100029,   5,        980) /* EncumbranceVal */
     , (100029,   8,        640) /* Mass */
     , (100029,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (100029,  16,          1) /* ItemUseable - No */
     , (100029,  19,       1) /* Value */
     , (100029,  33,          1) /* Bonded - Bonded */
     , (100029,  36,       9999) /* ResistMagic */
     , (100029,  44,          0) /* Damage */
     , (100029,  46,         32) /* DefaultCombatStyle - Crossbow */
     , (100029,  48,         47) /* WeaponSkill - MissileWeapons */
     , (100029,  49,         60) /* WeaponTime */
     , (100029,  50,        128) /* AmmoType - BoltChorizite */
     , (100029,  51,          2) /* CombatUse - Missile */
     , (100029,  52,          2) /* ParentLocation - LeftHand */
     , (100029,  53,          3) /* PlacementPosition - LeftHand */
     , (100029,  60,        192) /* WeaponRange */
     , (100029,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100029, 114,          1) /* Attuned - Attuned */
     , (100029, 150,        103) /* HookPlacement - Hook */
     , (100029, 151,          2) /* HookType - Wall */
     , (100029, 353,          9) /* WeaponType - Crossbow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100029,  11, True ) /* IgnoreCollisions */
     , (100029,  13, True ) /* Ethereal */
     , (100029,  14, True ) /* GravityStatus */
     , (100029,  15, True ) /* LightsStatus */
     , (100029,  19, True ) /* Attackable */
     , (100029,  22, True ) /* Inscribable */
     , (100029,  23, True ) /* DestroyOnSell */
     , (100029,  65, True ) /* IgnoreMagicResist */
     , (100029,  66, True ) /* IgnoreMagicArmor */
     , (100029,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100029,  21,       0) /* WeaponLength */
     , (100029,  22,       0) /* DamageVariance */
     , (100029,  26,      50) /* MaximumVelocity */
     , (100029,  29,    1.06) /* WeaponDefense */
     , (100029,  39,    1.25) /* DefaultScale */
     , (100029,  62,       1) /* WeaponOffense */
     , (100029,  63,    3.75) /* DamageMod */
     , (100029,  76,     0.5) /* Translucency */
     , (100029,  77,       1) /* PhysicsScriptIntensity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100029,   1, 'Hollow Crossbow') /* Name */
     , (100029,  16, 'A crossbow crafted from high-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100029,   1, 0x02000E2A) /* Setup */
     , (100029,   3, 0x20000014) /* SoundTable */
     , (100029,   6, 0x04000BEF) /* PaletteBase */
     , (100029,   7, 0x10000132) /* ClothingBase */
     , (100029,   8, 0x060015A3) /* Icon */
     , (100029,  19, 0x00000058) /* ActivationAnimation */
     , (100029,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100029,  30,         87) /* PhysicsScript - BreatheLightning */;
