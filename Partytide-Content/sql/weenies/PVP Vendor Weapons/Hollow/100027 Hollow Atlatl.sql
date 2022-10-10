DELETE FROM `weenie` WHERE `class_Id` = 100027;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100027, 'starteratlatlhollow', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100027,   1,        256) /* ItemType - MissileWeapon */
     , (100027,   3,         82) /* PaletteTemplate - PinkPurple */
     , (100027,   5,        200) /* EncumbranceVal */
     , (100027,   8,         15) /* Mass */
     , (100027,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (100027,  16,          1) /* ItemUseable - No */
     , (100027,  19,       1) /* Value */
     , (100027,  33,          1) /* Bonded - Bonded */
     , (100027,  36,       9999) /* ResistMagic */
     , (100027,  44,          0) /* Damage */
     , (100027,  46,       1024) /* DefaultCombatStyle - Atlatl */
     , (100027,  48,         47) /* WeaponSkill - MissileWeapons */
     , (100027,  49,         30) /* WeaponTime */
     , (100027,  50,        256) /* AmmoType - AtlatlChorizite */
     , (100027,  51,          2) /* CombatUse - Missile */
     , (100027,  52,          1) /* ParentLocation - RightHand */
     , (100027,  53,        101) /* PlacementPosition - Resting */
     , (100027,  60,        120) /* WeaponRange */
     , (100027,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100027, 114,          1) /* Attuned - Attuned */
     , (100027, 150,        103) /* HookPlacement - Hook */
     , (100027, 151,          2) /* HookType - Wall */
     , (100027, 353,         10) /* WeaponType - Thrown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100027,  11, True ) /* IgnoreCollisions */
     , (100027,  13, True ) /* Ethereal */
     , (100027,  14, True ) /* GravityStatus */
     , (100027,  15, True ) /* LightsStatus */
     , (100027,  19, True ) /* Attackable */
     , (100027,  22, True ) /* Inscribable */
     , (100027,  23, True ) /* DestroyOnSell */
     , (100027,  65, True ) /* IgnoreMagicResist */
     , (100027,  66, True ) /* IgnoreMagicArmor */
     , (100027,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100027,  21,       0) /* WeaponLength */
     , (100027,  22,       0) /* DamageVariance */
     , (100027,  26,      50) /* MaximumVelocity */
     , (100027,  29,    1.06) /* WeaponDefense */
     , (100027,  39,    1.25) /* DefaultScale */
     , (100027,  62,       1) /* WeaponOffense */
     , (100027,  63,    3.75) /* DamageMod */
     , (100027,  76,     0.5) /* Translucency */
     , (100027,  77,       1) /* PhysicsScriptIntensity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100027,   1, 'Hollow Atlatl') /* Name */
     , (100027,  16, 'An atlatl crafted from high-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100027,   1, 0x02000E1C) /* Setup */
     , (100027,   3, 0x20000014) /* SoundTable */
     , (100027,   6, 0x04000BEF) /* PaletteBase */
     , (100027,   7, 0x10000350) /* ClothingBase */
     , (100027,   8, 0x06002374) /* Icon */
     , (100027,  19, 0x00000058) /* ActivationAnimation */
     , (100027,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100027,  30,         87) /* PhysicsScript - BreatheLightning */;
