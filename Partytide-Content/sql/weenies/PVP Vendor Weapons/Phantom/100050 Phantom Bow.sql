DELETE FROM `weenie` WHERE `class_Id` = 100050;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100050, 'starterbowphantom', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100050,   1,        256) /* ItemType - MissileWeapon */
     , (100050,   3,         82) /* PaletteTemplate - PinkPurple */
     , (100050,   5,        450) /* EncumbranceVal */
     , (100050,   8,        140) /* Mass */
     , (100050,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (100050,  16,          1) /* ItemUseable - No */
     , (100050,  19,       1) /* Value */
     , (100050,  33,          1) /* Bonded - Bonded */
     , (100050,  36,       9999) /* ResistMagic */
     , (100050,  44,          0) /* Damage */
     , (100050,  46,         16) /* DefaultCombatStyle - Bow */
     , (100050,  48,         47) /* WeaponSkill - MissileWeapons */
     , (100050,  49,         30) /* WeaponTime */
     , (100050,  50,         64) /* AmmoType - ArrowChorizite */
     , (100050,  51,          2) /* CombatUse - Missile */
     , (100050,  52,          2) /* ParentLocation - LeftHand */
     , (100050,  53,          3) /* PlacementPosition - LeftHand */
     , (100050,  60,        175) /* WeaponRange */
     , (100050,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100050, 114,          1) /* Attuned - Attuned */
     , (100050, 150,        103) /* HookPlacement - Hook */
     , (100050, 151,          2) /* HookType - Wall */
     , (100050, 158,          2) /* WieldRequirements - RawSkill */
     , (100050, 159,         47) /* WieldSkillType - MissileWeapons */
     , (100050, 160,        250) /* WieldDifficulty */
     , (100050, 179, -2147483648) /* ImbuedEffect - IgnoreAllArmor */
     , (100050, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100050,  11, True ) /* IgnoreCollisions */
     , (100050,  13, True ) /* Ethereal */
     , (100050,  14, True ) /* GravityStatus */
     , (100050,  15, True ) /* LightsStatus */
     , (100050,  19, True ) /* Attackable */
     , (100050,  22, True ) /* Inscribable */
     , (100050,  23, True ) /* DestroyOnSell */
     , (100050,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100050,  21,       0) /* WeaponLength */
     , (100050,  22,       0) /* DamageVariance */
     , (100050,  26,      50) /* MaximumVelocity */
     , (100050,  29,     1.1) /* WeaponDefense */
     , (100050,  62,       1) /* WeaponOffense */
     , (100050,  63,     0.5) /* DamageMod */
     , (100050,  76,     0.7) /* Translucency */
     , (100050,  77,       1) /* PhysicsScriptIntensity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100050,   1, 'Phantom Bow') /* Name */
     , (100050,  16, 'A bow with a ghostly hue crafted from pure chorizite, resitant to any enchantment. ') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100050,   1, 0x02000128) /* Setup */
     , (100050,   3, 0x20000014) /* SoundTable */
     , (100050,   6, 0x04000BEF) /* PaletteBase */
     , (100050,   7, 0x1000012F) /* ClothingBase */
     , (100050,   8, 0x0600158F) /* Icon */
     , (100050,  19, 0x00000058) /* ActivationAnimation */
     , (100050,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100050,  30,         87) /* PhysicsScript - BreatheLightning */;
