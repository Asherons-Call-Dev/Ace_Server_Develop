DELETE FROM `weenie` WHERE `class_Id` = 100046;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100046, 'starternabutphantom', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100046,   1,          1) /* ItemType - MeleeWeapon */
     , (100046,   3,          4) /* PaletteTemplate - Brown */
     , (100046,   5,        450) /* EncumbranceVal */
     , (100046,   8,        110) /* Mass */
     , (100046,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100046,  16,          1) /* ItemUseable - No */
     , (100046,  19,       1) /* Value */
     , (100046,  33,          1) /* Bonded - Bonded */
     , (100046,  36,       9999) /* ResistMagic */
     , (100046,  44,          9) /* Damage */
     , (100046,  45,          4) /* DamageType - Bludgeon */
     , (100046,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100046,  47,          6) /* AttackType - Thrust, Slash */
     , (100046,  48,         45) /* WeaponSkill - LightWeapons */
     , (100046,  49,         40) /* WeaponTime */
     , (100046,  51,          1) /* CombatUse - Melee */
     , (100046,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100046, 114,          1) /* Attuned - Attuned */
     , (100046, 150,        103) /* HookPlacement - Hook */
     , (100046, 151,          2) /* HookType - Wall */
     , (100046, 158,          2) /* WieldRequirements - RawSkill */
     , (100046, 159,         45) /* WieldSkillType - LightWeapons */
     , (100046, 160,        275) /* WieldDifficulty */
     , (100046, 179, -2147483648) /* ImbuedEffect - IgnoreAllArmor */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100046,  11, True ) /* IgnoreCollisions */
     , (100046,  13, True ) /* Ethereal */
     , (100046,  14, True ) /* GravityStatus */
     , (100046,  15, True ) /* LightsStatus */
     , (100046,  19, True ) /* Attackable */
     , (100046,  22, True ) /* Inscribable */
     , (100046,  23, True ) /* DestroyOnSell */
     , (100046,  69, False) /* IsSellable */
     , (100046,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100046,  21,    1.33) /* WeaponLength */
     , (100046,  22,     0.3) /* DamageVariance */
     , (100046,  29,       1) /* WeaponDefense */
     , (100046,  39,    0.67) /* DefaultScale */
     , (100046,  62,    1.15) /* WeaponOffense */
     , (100046,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100046,   1, 'Phantom Staff') /* Name */
     , (100046,  15, 'A ghostly staff crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* ShortDesc */
     , (100046,  16, 'A ghostly staff crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100046,   1, 0x020008AC) /* Setup */
     , (100046,   3, 0x20000014) /* SoundTable */
     , (100046,   6, 0x04000BEF) /* PaletteBase */
     , (100046,   7, 0x10000153) /* ClothingBase */
     , (100046,   8, 0x060016B1) /* Icon */
     , (100046,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100046,  36, 0x0E000014) /* MutateFilter */;
