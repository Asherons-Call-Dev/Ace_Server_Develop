DELETE FROM `weenie` WHERE `class_Id` = 100052;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100052, 'starterphantomtwohandedspear', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100052,   1,          1) /* ItemType - MeleeWeapon */
     , (100052,   3,         20) /* PaletteTemplate - Silver */
     , (100052,   5,        700) /* EncumbranceVal */
     , (100052,   8,        140) /* Mass */
     , (100052,   9,   33554432) /* ValidLocations - TwoHanded */
     , (100052,  16,          1) /* ItemUseable - No */
     , (100052,  19,       1) /* Value */
     , (100052,  33,          1) /* Bonded - Bonded */
     , (100052,  36,       9999) /* ResistMagic */
     , (100052,  44,          6) /* Damage */
     , (100052,  45,          2) /* DamageType - Pierce */
     , (100052,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (100052,  47,          2) /* AttackType - Thrust */
     , (100052,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (100052,  49,         30) /* WeaponTime */
     , (100052,  51,          1) /* CombatUse - Melee */
     , (100052,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100052, 114,          1) /* Attuned - Attuned */
     , (100052, 150,        103) /* HookPlacement - Hook */
     , (100052, 151,          2) /* HookType - Wall */
     , (100052, 158,          2) /* WieldRequirements - RawSkill */
     , (100052, 159,         41) /* WieldSkillType - TwoHandedCombat */
     , (100052, 160,        275) /* WieldDifficulty */
     , (100052, 179, -2147483648) /* ImbuedEffect - IgnoreAllArmor */
     , (100052, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100052,  11, True ) /* IgnoreCollisions */
     , (100052,  13, True ) /* Ethereal */
     , (100052,  14, True ) /* GravityStatus */
     , (100052,  15, True ) /* LightsStatus */
     , (100052,  19, True ) /* Attackable */
     , (100052,  22, True ) /* Inscribable */
     , (100052,  23, True ) /* DestroyOnSell */
     , (100052,  69, False) /* IsSellable */
     , (100052,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100052,  21,     1.5) /* WeaponLength */
     , (100052,  22,     0.5) /* DamageVariance */
     , (100052,  29,       1) /* WeaponDefense */
     , (100052,  62,    1.15) /* WeaponOffense */
     , (100052,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100052,   1, 'Phantom Two Handed Spear') /* Name */
     , (100052,  15, 'A two handed spear with a ghostly blade crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* ShortDesc */
     , (100052,  16, 'A two handed spear with a ghostly blade crafted from pure chorizite, resistant to any enchantment. (Note: This weapon is unenchantable.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100052,   1, 0x020008AD) /* Setup */
     , (100052,   3, 0x20000014) /* SoundTable */
     , (100052,   6, 0x04000BEF) /* PaletteBase */
     , (100052,   7, 0x10000138) /* ClothingBase */
     , (100052,   8, 0x06006B81) /* Icon */
     , (100052,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100052,  36, 0x0E000014) /* MutateFilter */;
