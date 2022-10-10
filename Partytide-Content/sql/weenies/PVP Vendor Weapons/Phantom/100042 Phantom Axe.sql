DELETE FROM `weenie` WHERE `class_Id` = 100042;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100042, 'starteraxebattlephantom', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100042,   1,          1) /* ItemType - MeleeWeapon */
     , (100042,   3,         21) /* PaletteTemplate - Gold */
     , (100042,   5,        800) /* EncumbranceVal */
     , (100042,   8,        320) /* Mass */
     , (100042,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100042,  16,          1) /* ItemUseable - No */
     , (100042,  19,       1) /* Value */
     , (100042,  33,          1) /* Bonded - Bonded */
     , (100042,  36,       9999) /* ResistMagic */
     , (100042,  44,         10) /* Damage */
     , (100042,  45,          1) /* DamageType - Slash */
     , (100042,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100042,  47,          4) /* AttackType - Slash */
     , (100042,  48,         45) /* WeaponSkill - LightWeapons */
     , (100042,  49,         30) /* WeaponTime */
     , (100042,  51,          1) /* CombatUse - Melee */
     , (100042,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100042, 114,          1) /* Attuned - Attuned */
     , (100042, 150,        103) /* HookPlacement - Hook */
     , (100042, 151,          2) /* HookType - Wall */
     , (100042, 158,          2) /* WieldRequirements - RawSkill */
     , (100042, 159,         45) /* WieldSkillType - LightWeapons */
     , (100042, 160,        275) /* WieldDifficulty */
     , (100042, 179, -2147483648) /* ImbuedEffect - IgnoreAllArmor */
     , (100042, 353,          3) /* WeaponType - Axe */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100042,  11, True ) /* IgnoreCollisions */
     , (100042,  13, True ) /* Ethereal */
     , (100042,  14, True ) /* GravityStatus */
     , (100042,  15, True ) /* LightsStatus */
     , (100042,  19, True ) /* Attackable */
     , (100042,  22, True ) /* Inscribable */
     , (100042,  23, True ) /* DestroyOnSell */
     , (100042,  69, False) /* IsSellable */
     , (100042,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100042,  21,    0.75) /* WeaponLength */
     , (100042,  22,     0.4) /* DamageVariance */
     , (100042,  26,       0) /* MaximumVelocity */
     , (100042,  29,       1) /* WeaponDefense */
     , (100042,  62,    1.15) /* WeaponOffense */
     , (100042,  63,       1) /* DamageMod */
     , (100042,  76,     0.7) /* Translucency */
     , (100042,  77,       1) /* PhysicsScriptIntensity */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100042,   1, 'Phantom Axe') /* Name */
     , (100042,  15, 'An axe with a ghostly blade crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* ShortDesc */
     , (100042,  16, 'An axe with a ghostly blade crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100042,   1, 0x020008B1) /* Setup */
     , (100042,   3, 0x20000014) /* SoundTable */
     , (100042,   6, 0x04000BEF) /* PaletteBase */
     , (100042,   7, 0x10000143) /* ClothingBase */
     , (100042,   8, 0x06001639) /* Icon */
     , (100042,  19, 0x00000058) /* ActivationAnimation */
     , (100042,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100042,  30,         87) /* PhysicsScript - BreatheLightning */
     , (100042,  36, 0x0E000014) /* MutateFilter */;
