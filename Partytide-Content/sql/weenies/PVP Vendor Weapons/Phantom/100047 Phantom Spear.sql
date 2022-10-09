DELETE FROM `weenie` WHERE `class_Id` = 100047;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100047, 'starterspearphantom', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100047,   1,          1) /* ItemType - MeleeWeapon */
     , (100047,   3,         21) /* PaletteTemplate - Gold */
     , (100047,   5,        700) /* EncumbranceVal */
     , (100047,   8,        140) /* Mass */
     , (100047,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100047,  16,          1) /* ItemUseable - No */
     , (100047,  19,       1) /* Value */
     , (100047,  33,          1) /* Bonded - Bonded */
     , (100047,  36,       9999) /* ResistMagic */
     , (100047,  44,         11) /* Damage */
     , (100047,  45,          2) /* DamageType - Pierce */
     , (100047,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100047,  47,          2) /* AttackType - Thrust */
     , (100047,  48,         45) /* WeaponSkill - LightWeapons */
     , (100047,  49,         40) /* WeaponTime */
     , (100047,  51,          1) /* CombatUse - Melee */
     , (100047,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100047, 114,          1) /* Attuned - Attuned */
     , (100047, 150,        103) /* HookPlacement - Hook */
     , (100047, 151,          2) /* HookType - Wall */
     , (100047, 158,          2) /* WieldRequirements - RawSkill */
     , (100047, 159,         45) /* WieldSkillType - LightWeapons */
     , (100047, 160,        275) /* WieldDifficulty */
     , (100047, 179, -2147483648) /* ImbuedEffect - IgnoreAllArmor */
     , (100047, 353,          5) /* WeaponType - Spear */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100047,  11, True ) /* IgnoreCollisions */
     , (100047,  13, True ) /* Ethereal */
     , (100047,  14, True ) /* GravityStatus */
     , (100047,  15, True ) /* LightsStatus */
     , (100047,  19, True ) /* Attackable */
     , (100047,  22, True ) /* Inscribable */
     , (100047,  23, True ) /* DestroyOnSell */
     , (100047,  69, False) /* IsSellable */
     , (100047,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100047,  21,     1.5) /* WeaponLength */
     , (100047,  22,     0.5) /* DamageVariance */
     , (100047,  29,       1) /* WeaponDefense */
     , (100047,  62,    1.15) /* WeaponOffense */
     , (100047,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100047,   1, 'Phantom Spear') /* Name */
     , (100047,  15, 'A spear with a ghostly blade crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* ShortDesc */
     , (100047,  16, 'A spear with a ghostly blade crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100047,   1, 0x020008AD) /* Setup */
     , (100047,   3, 0x20000014) /* SoundTable */
     , (100047,   6, 0x04000BEF) /* PaletteBase */
     , (100047,   7, 0x10000138) /* ClothingBase */
     , (100047,   8, 0x0600164D) /* Icon */
     , (100047,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100047,  36, 0x0E000014) /* MutateFilter */;
