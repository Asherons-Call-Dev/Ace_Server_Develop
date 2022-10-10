DELETE FROM `weenie` WHERE `class_Id` = 100045;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100045, 'startermacephantom', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100045,   1,          1) /* ItemType - MeleeWeapon */
     , (100045,   3,         21) /* PaletteTemplate - Gold */
     , (100045,   5,        900) /* EncumbranceVal */
     , (100045,   8,        360) /* Mass */
     , (100045,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100045,  16,          1) /* ItemUseable - No */
     , (100045,  19,       1) /* Value */
     , (100045,  33,          1) /* Bonded - Bonded */
     , (100045,  36,       9999) /* ResistMagic */
     , (100045,  44,         11) /* Damage */
     , (100045,  45,          4) /* DamageType - Bludgeon */
     , (100045,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100045,  47,          4) /* AttackType - Slash */
     , (100045,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (100045,  49,         30) /* WeaponTime */
     , (100045,  51,          1) /* CombatUse - Melee */
     , (100045,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100045, 114,          1) /* Attuned - Attuned */
     , (100045, 150,        103) /* HookPlacement - Hook */
     , (100045, 151,          2) /* HookType - Wall */
     , (100045, 158,          2) /* WieldRequirements - RawSkill */
     , (100045, 159,         44) /* WieldSkillType - HeavyWeapons */
     , (100045, 160,        275) /* WieldDifficulty */
     , (100045, 179, -2147483648) /* ImbuedEffect - IgnoreAllArmor */
     , (100045, 353,          4) /* WeaponType - Mace */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100045,  11, True ) /* IgnoreCollisions */
     , (100045,  13, True ) /* Ethereal */
     , (100045,  14, True ) /* GravityStatus */
     , (100045,  15, True ) /* LightsStatus */
     , (100045,  19, True ) /* Attackable */
     , (100045,  22, True ) /* Inscribable */
     , (100045,  23, True ) /* DestroyOnSell */
     , (100045,  69, False) /* IsSellable */
     , (100045,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100045,  21,    0.62) /* WeaponLength */
     , (100045,  22,     0.4) /* DamageVariance */
     , (100045,  26,       0) /* MaximumVelocity */
     , (100045,  29,       1) /* WeaponDefense */
     , (100045,  62,    1.15) /* WeaponOffense */
     , (100045,  63,       1) /* DamageMod */
     , (100045,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100045,   1, 'Phantom Mace') /* Name */
     , (100045,  15, 'A mace with a ghostly head crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* ShortDesc */
     , (100045,  16, 'A mace with a ghostly head crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100045,   1, 0x020008AE) /* Setup */
     , (100045,   3, 0x20000014) /* SoundTable */
     , (100045,   6, 0x04000BEF) /* PaletteBase */
     , (100045,   7, 0x10000150) /* ClothingBase */
     , (100045,   8, 0x0600161B) /* Icon */
     , (100045,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100045,  36, 0x0E000014) /* MutateFilter */;
