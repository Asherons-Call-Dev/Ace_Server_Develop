DELETE FROM `weenie` WHERE `class_Id` = 100051;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100051, 'startercrossbowphantom', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100051,   1,        256) /* ItemType - MissileWeapon */
     , (100051,   3,         82) /* PaletteTemplate - PinkPurple */
     , (100051,   5,        980) /* EncumbranceVal */
     , (100051,   8,        640) /* Mass */
     , (100051,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (100051,  16,          1) /* ItemUseable - No */
     , (100051,  19,       1) /* Value */
     , (100051,  33,          1) /* Bonded - Bonded */
     , (100051,  36,       9999) /* ResistMagic */
     , (100051,  44,          0) /* Damage */
     , (100051,  46,         32) /* DefaultCombatStyle - Crossbow */
     , (100051,  48,         47) /* WeaponSkill - MissileWeapons */
     , (100051,  49,         60) /* WeaponTime */
     , (100051,  50,        128) /* AmmoType - BoltChorizite */
     , (100051,  51,          2) /* CombatUse - Missile */
     , (100051,  52,          2) /* ParentLocation - LeftHand */
     , (100051,  53,          3) /* PlacementPosition - LeftHand */
     , (100051,  60,        192) /* WeaponRange */
     , (100051,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100051, 114,          1) /* Attuned - Attuned */
     , (100051, 150,        103) /* HookPlacement - Hook */
     , (100051, 151,          2) /* HookType - Wall */
     , (100051, 158,          2) /* WieldRequirements - RawSkill */
     , (100051, 159,         47) /* WieldSkillType - MissileWeapons */
     , (100051, 160,        250) /* WieldDifficulty */
     , (100051, 179, -2147483648) /* ImbuedEffect - IgnoreAllArmor */
     , (100051, 353,          9) /* WeaponType - Crossbow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100051,  11, True ) /* IgnoreCollisions */
     , (100051,  13, True ) /* Ethereal */
     , (100051,  14, True ) /* GravityStatus */
     , (100051,  15, True ) /* LightsStatus */
     , (100051,  19, True ) /* Attackable */
     , (100051,  22, True ) /* Inscribable */
     , (100051,  23, True ) /* DestroyOnSell */
     , (100051,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100051,  21,       0) /* WeaponLength */
     , (100051,  22,       0) /* DamageVariance */
     , (100051,  26,      50) /* MaximumVelocity */
     , (100051,  29,     1.1) /* WeaponDefense */
     , (100051,  39,    1.25) /* DefaultScale */
     , (100051,  62,       1) /* WeaponOffense */
     , (100051,  63,     0.6) /* DamageMod */
     , (100051,  76,     0.7) /* Translucency */
     , (100051,  77,       1) /* PhysicsScriptIntensity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100051,   1, 'Phantom Crossbow') /* Name */
     , (100051,  16, 'A crossbow with a ghostly hue crafted from pure chorizite, resitant to any enchantment.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100051,   1, 0x0200012C) /* Setup */
     , (100051,   3, 0x20000014) /* SoundTable */
     , (100051,   6, 0x04000BEF) /* PaletteBase */
     , (100051,   7, 0x10000132) /* ClothingBase */
     , (100051,   8, 0x060015A3) /* Icon */
     , (100051,  19, 0x00000058) /* ActivationAnimation */
     , (100051,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100051,  30,         87) /* PhysicsScript - BreatheLightning */;
