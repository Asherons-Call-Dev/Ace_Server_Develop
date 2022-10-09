DELETE FROM `weenie` WHERE `class_Id` = 100044;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100044, 'starterkatarphantom', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100044,   1,          1) /* ItemType - MeleeWeapon */
     , (100044,   3,         21) /* PaletteTemplate - Gold */
     , (100044,   5,        135) /* EncumbranceVal */
     , (100044,   8,         90) /* Mass */
     , (100044,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100044,  16,          1) /* ItemUseable - No */
     , (100044,  19,       1) /* Value */
     , (100044,  33,          1) /* Bonded - Bonded */
     , (100044,  36,       9999) /* ResistMagic */
     , (100044,  44,          8) /* Damage */
     , (100044,  45,          3) /* DamageType - Slash, Pierce */
     , (100044,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (100044,  47,          1) /* AttackType - Punch */
     , (100044,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (100044,  49,         20) /* WeaponTime */
     , (100044,  51,          1) /* CombatUse - Melee */
     , (100044,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100044, 114,          1) /* Attuned - Attuned */
     , (100044, 150,        103) /* HookPlacement - Hook */
     , (100044, 151,          2) /* HookType - Wall */
     , (100044, 158,          2) /* WieldRequirements - RawSkill */
     , (100044, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (100044, 160,        275) /* WieldDifficulty */
     , (100044, 179, -2147483648) /* ImbuedEffect - IgnoreAllArmor */
     , (100044, 353,          1) /* WeaponType - Unarmed */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100044,  11, True ) /* IgnoreCollisions */
     , (100044,  13, True ) /* Ethereal */
     , (100044,  14, True ) /* GravityStatus */
     , (100044,  15, True ) /* LightsStatus */
     , (100044,  19, True ) /* Attackable */
     , (100044,  22, True ) /* Inscribable */
     , (100044,  23, True ) /* DestroyOnSell */
     , (100044,  69, False) /* IsSellable */
     , (100044,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100044,  21,    0.52) /* WeaponLength */
     , (100044,  22,     0.5) /* DamageVariance */
     , (100044,  26,       0) /* MaximumVelocity */
     , (100044,  29,    1.05) /* WeaponDefense */
     , (100044,  39,    1.25) /* DefaultScale */
     , (100044,  62,    1.15) /* WeaponOffense */
     , (100044,  63,       1) /* DamageMod */
     , (100044,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100044,   1, 'Phantom Katar') /* Name */
     , (100044,  15, 'A katar with a ghostly blade crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* ShortDesc */
     , (100044,  16, 'A katar with a ghostly blade crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100044,   1, 0x020008AF) /* Setup */
     , (100044,   3, 0x20000014) /* SoundTable */
     , (100044,   6, 0x04000BEF) /* PaletteBase */
     , (100044,   7, 0x1000014D) /* ClothingBase */
     , (100044,   8, 0x060015FD) /* Icon */
     , (100044,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100044,  36, 0x0E000014) /* MutateFilter */;
