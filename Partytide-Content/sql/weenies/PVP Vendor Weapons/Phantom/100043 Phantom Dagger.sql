DELETE FROM `weenie` WHERE `class_Id` = 100043;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100043, 'starterdaggerphantom', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100043,   1,          1) /* ItemType - MeleeWeapon */
     , (100043,   3,         21) /* PaletteTemplate - Gold */
     , (100043,   5,        135) /* EncumbranceVal */
     , (100043,   8,         90) /* Mass */
     , (100043,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100043,  16,          1) /* ItemUseable - No */
     , (100043,  19,       1) /* Value */
     , (100043,  33,          1) /* Bonded - Bonded */
     , (100043,  36,       9999) /* ResistMagic */
     , (100043,  44,          9) /* Damage */
     , (100043,  45,          3) /* DamageType - Slash, Pierce */
     , (100043,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100043,  47,          6) /* AttackType - Thrust, Slash */
     , (100043,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (100043,  49,         20) /* WeaponTime */
     , (100043,  51,          1) /* CombatUse - Melee */
     , (100043,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100043, 114,          1) /* Attuned - Attuned */
     , (100043, 150,        103) /* HookPlacement - Hook */
     , (100043, 151,          2) /* HookType - Wall */
     , (100043, 158,          2) /* WieldRequirements - RawSkill */
     , (100043, 159,         46) /* WieldSkillType - FinesseWeapons */
     , (100043, 160,        275) /* WieldDifficulty */
     , (100043, 179, -2147483648) /* ImbuedEffect - IgnoreAllArmor */
     , (100043, 353,          6) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100043,  11, True ) /* IgnoreCollisions */
     , (100043,  13, True ) /* Ethereal */
     , (100043,  14, True ) /* GravityStatus */
     , (100043,  15, True ) /* LightsStatus */
     , (100043,  19, True ) /* Attackable */
     , (100043,  22, True ) /* Inscribable */
     , (100043,  23, True ) /* DestroyOnSell */
     , (100043,  69, False) /* IsSellable */
     , (100043,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100043,  21,     0.4) /* WeaponLength */
     , (100043,  22,     0.3) /* DamageVariance */
     , (100043,  26,       0) /* MaximumVelocity */
     , (100043,  29,       1) /* WeaponDefense */
     , (100043,  62,    1.15) /* WeaponOffense */
     , (100043,  63,       1) /* DamageMod */
     , (100043,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100043,   1, 'Phantom Dagger') /* Name */
     , (100043,  15, 'A dagger with a ghostly blade crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* ShortDesc */
     , (100043,  16, 'A dagger with a ghostly blade crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100043,   1, 0x020008B0) /* Setup */
     , (100043,   3, 0x20000014) /* SoundTable */
     , (100043,   6, 0x04000BEF) /* PaletteBase */
     , (100043,   7, 0x10000147) /* ClothingBase */
     , (100043,   8, 0x060015CB) /* Icon */
     , (100043,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100043,  36, 0x0E000014) /* MutateFilter */;
