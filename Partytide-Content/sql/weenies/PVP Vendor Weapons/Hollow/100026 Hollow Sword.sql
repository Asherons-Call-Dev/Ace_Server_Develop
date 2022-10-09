DELETE FROM `weenie` WHERE `class_Id` = 100026;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100026, 'starterswordhollow', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100026,   1,          1) /* ItemType - MeleeWeapon */
     , (100026,   3,         20) /* PaletteTemplate - Silver */
     , (100026,   5,        450) /* EncumbranceVal */
     , (100026,   8,        180) /* Mass */
     , (100026,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100026,  16,          1) /* ItemUseable - No */
     , (100026,  19,       1) /* Value */
     , (100026,  33,          1) /* Bonded - Bonded */
     , (100026,  36,       9999) /* ResistMagic */
     , (100026,  44,         38) /* Damage */
     , (100026,  45,          3) /* DamageType - Slash, Pierce */
     , (100026,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100026,  47,          6) /* AttackType - Thrust, Slash */
     , (100026,  48,         45) /* WeaponSkill - LightWeapons */
     , (100026,  49,         30) /* WeaponTime */
     , (100026,  51,          1) /* CombatUse - Melee */
     , (100026,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100026, 114,          1) /* Attuned - Attuned */
     , (100026, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100026,  11, True ) /* IgnoreCollisions */
     , (100026,  13, True ) /* Ethereal */
     , (100026,  14, True ) /* GravityStatus */
     , (100026,  15, True ) /* LightsStatus */
     , (100026,  19, True ) /* Attackable */
     , (100026,  22, True ) /* Inscribable */
     , (100026,  23, True ) /* DestroyOnSell */
     , (100026,  65, True ) /* IgnoreMagicResist */
     , (100026,  66, True ) /* IgnoreMagicArmor */
     , (100026,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100026,  21,     1.1) /* WeaponLength */
     , (100026,  22,     0.5) /* DamageVariance */
     , (100026,  26,       0) /* MaximumVelocity */
     , (100026,  29,       1) /* WeaponDefense */
     , (100026,  62,    1.05) /* WeaponOffense */
     , (100026,  63,       1) /* DamageMod */
     , (100026,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100026,   1, 'Hollow Sword') /* Name */
     , (100026,  15, 'A sword crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (100026,  16, 'A sword crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100026,   1, 0x020008A5) /* Setup */
     , (100026,   3, 0x20000014) /* SoundTable */
     , (100026,   6, 0x04000BEF) /* PaletteBase */
     , (100026,   7, 0x1000014C) /* ClothingBase */
     , (100026,   8, 0x060015F3) /* Icon */
     , (100026,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100026,  36, 0x0E000014) /* MutateFilter */;
