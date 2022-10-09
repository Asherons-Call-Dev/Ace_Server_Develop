DELETE FROM `weenie` WHERE `class_Id` = 100049;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100049, 'starteratlatlphantom', 3, '2021-11-01 00:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100049,   1,        256) /* ItemType - MissileWeapon */
     , (100049,   3,         82) /* PaletteTemplate - PinkPurple */
     , (100049,   5,        200) /* EncumbranceVal */
     , (100049,   8,         15) /* Mass */
     , (100049,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (100049,  16,          1) /* ItemUseable - No */
     , (100049,  19,       1) /* Value */
     , (100049,  33,          1) /* Bonded - Bonded */
     , (100049,  36,       9999) /* ResistMagic */
     , (100049,  44,          0) /* Damage */
     , (100049,  46,       1024) /* DefaultCombatStyle - Atlatl */
     , (100049,  48,         47) /* WeaponSkill - MissileWeapons */
     , (100049,  49,         15) /* WeaponTime */
     , (100049,  50,        256) /* AmmoType - AtlatlChorizite */
     , (100049,  51,          2) /* CombatUse - Missile */
     , (100049,  60,        120) /* WeaponRange */
     , (100049,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100049, 114,          1) /* Attuned - Attuned */
     , (100049, 150,        103) /* HookPlacement - Hook */
     , (100049, 151,          2) /* HookType - Wall */
     , (100049, 158,          2) /* WieldRequirements - RawSkill */
     , (100049, 159,         47) /* WieldSkillType - MissileWeapons */
     , (100049, 160,        250) /* WieldDifficulty */
     , (100049, 179, -2147483648) /* ImbuedEffect - IgnoreAllArmor */
     , (100049, 353,         10) /* WeaponType - Thrown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100049,  11, True ) /* IgnoreCollisions */
     , (100049,  13, True ) /* Ethereal */
     , (100049,  14, True ) /* GravityStatus */
     , (100049,  15, True ) /* LightsStatus */
     , (100049,  19, True ) /* Attackable */
     , (100049,  22, True ) /* Inscribable */
     , (100049,  23, True ) /* DestroyOnSell */
     , (100049,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100049,  26,      50) /* MaximumVelocity */
     , (100049,  29,     1.1) /* WeaponDefense */
     , (100049,  39,    1.25) /* DefaultScale */
     , (100049,  62,       1) /* WeaponOffense */
     , (100049,  63,     0.6) /* DamageMod */
     , (100049,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100049,   1, 'Phantom Atlatl') /* Name */
     , (100049,  16, 'An atlatl with a ghostly hue crafted from pure chorizite, resitant to any enchantment. ') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100049,   1, 0x02000BB9) /* Setup */
     , (100049,   3, 0x20000014) /* SoundTable */
     , (100049,   6, 0x04000BEF) /* PaletteBase */
     , (100049,   7, 0x10000350) /* ClothingBase */
     , (100049,   8, 0x06002374) /* Icon */
     , (100049,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100049,  30,         87) /* PhysicsScript - BreatheLightning */;
