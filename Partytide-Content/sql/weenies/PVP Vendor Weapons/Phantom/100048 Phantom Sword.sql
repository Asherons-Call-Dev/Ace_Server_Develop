DELETE FROM `weenie` WHERE `class_Id` = 100048;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100048, 'starterswordphantom', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100048,   1,          1) /* ItemType - MeleeWeapon */
     , (100048,   3,         21) /* PaletteTemplate - Gold */
     , (100048,   5,        450) /* EncumbranceVal */
     , (100048,   8,        180) /* Mass */
     , (100048,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100048,  16,          1) /* ItemUseable - No */
     , (100048,  19,       1) /* Value */
     , (100048,  33,          1) /* Bonded - Bonded */
     , (100048,  36,       9999) /* ResistMagic */
     , (100048,  44,         12) /* Damage */
     , (100048,  45,          3) /* DamageType - Slash, Pierce */
     , (100048,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100048,  47,          6) /* AttackType - Thrust, Slash */
     , (100048,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (100048,  49,         30) /* WeaponTime */
     , (100048,  51,          1) /* CombatUse - Melee */
     , (100048,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100048, 114,          1) /* Attuned - Attuned */
     , (100048, 150,        103) /* HookPlacement - Hook */
     , (100048, 151,          2) /* HookType - Wall */
     , (100048, 158,          2) /* WieldRequirements - RawSkill */
     , (100048, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (100048, 160,        275) /* WieldDifficulty */
     , (100048, 179, -2147483648) /* ImbuedEffect - IgnoreAllArmor */
     , (100048, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100048,  11, True ) /* IgnoreCollisions */
     , (100048,  13, True ) /* Ethereal */
     , (100048,  14, True ) /* GravityStatus */
     , (100048,  15, True ) /* LightsStatus */
     , (100048,  19, True ) /* Attackable */
     , (100048,  22, True ) /* Inscribable */
     , (100048,  23, True ) /* DestroyOnSell */
     , (100048,  69, False) /* IsSellable */
     , (100048,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100048,  21,     1.1) /* WeaponLength */
     , (100048,  22,     0.5) /* DamageVariance */
     , (100048,  26,       0) /* MaximumVelocity */
     , (100048,  29,       1) /* WeaponDefense */
     , (100048,  62,    1.15) /* WeaponOffense */
     , (100048,  63,       1) /* DamageMod */
     , (100048,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100048,   1, 'Phantom Sword') /* Name */
     , (100048,  15, 'A sword with a ghostly blade crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* ShortDesc */
     , (100048,  16, 'A sword with a ghostly blade crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100048,   1, 0x020008B2) /* Setup */
     , (100048,   3, 0x20000014) /* SoundTable */
     , (100048,   6, 0x04000BEF) /* PaletteBase */
     , (100048,   7, 0x1000014C) /* ClothingBase */
     , (100048,   8, 0x060015F3) /* Icon */
     , (100048,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100048,  36, 0x0E000014) /* MutateFilter */;
