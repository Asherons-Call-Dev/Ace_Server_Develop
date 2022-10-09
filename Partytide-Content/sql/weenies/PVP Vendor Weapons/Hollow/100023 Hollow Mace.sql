DELETE FROM `weenie` WHERE `class_Id` = 100023;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100023, 'startermacehollow', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100023,   1,          1) /* ItemType - MeleeWeapon */
     , (100023,   3,         20) /* PaletteTemplate - Silver */
     , (100023,   5,        900) /* EncumbranceVal */
     , (100023,   8,        360) /* Mass */
     , (100023,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100023,  16,          1) /* ItemUseable - No */
     , (100023,  19,       1) /* Value */
     , (100023,  33,          1) /* Bonded - Bonded */
     , (100023,  36,       9999) /* ResistMagic */
     , (100023,  44,         38) /* Damage */
     , (100023,  45,          4) /* DamageType - Bludgeon */
     , (100023,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100023,  47,          4) /* AttackType - Slash */
     , (100023,  48,         45) /* WeaponSkill - LightWeapons */
     , (100023,  49,         30) /* WeaponTime */
     , (100023,  51,          1) /* CombatUse - Melee */
     , (100023,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100023, 114,          1) /* Attuned - Attuned */
     , (100023, 353,          4) /* WeaponType - Mace */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100023,  11, True ) /* IgnoreCollisions */
     , (100023,  13, True ) /* Ethereal */
     , (100023,  14, True ) /* GravityStatus */
     , (100023,  15, True ) /* LightsStatus */
     , (100023,  19, True ) /* Attackable */
     , (100023,  22, True ) /* Inscribable */
     , (100023,  23, True ) /* DestroyOnSell */
     , (100023,  65, True ) /* IgnoreMagicResist */
     , (100023,  66, True ) /* IgnoreMagicArmor */
     , (100023,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100023,  21,    0.62) /* WeaponLength */
     , (100023,  22,     0.5) /* DamageVariance */
     , (100023,  29,       1) /* WeaponDefense */
     , (100023,  62,    1.05) /* WeaponOffense */
     , (100023,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100023,   1, 'Hollow Mace') /* Name */
     , (100023,  15, 'A mace crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (100023,  16, 'A mace crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100023,   1, 0x020008A9) /* Setup */
     , (100023,   3, 0x20000014) /* SoundTable */
     , (100023,   6, 0x04000BEF) /* PaletteBase */
     , (100023,   7, 0x10000150) /* ClothingBase */
     , (100023,   8, 0x0600161B) /* Icon */
     , (100023,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100023,  36, 0x0E000014) /* MutateFilter */;
