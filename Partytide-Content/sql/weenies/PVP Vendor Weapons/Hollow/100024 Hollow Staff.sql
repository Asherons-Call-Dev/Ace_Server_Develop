DELETE FROM `weenie` WHERE `class_Id` = 100024;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100024, 'starternabuthollow', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100024,   1,          1) /* ItemType - MeleeWeapon */
     , (100024,   3,          4) /* PaletteTemplate - Brown */
     , (100024,   5,        450) /* EncumbranceVal */
     , (100024,   8,        110) /* Mass */
     , (100024,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (100024,  16,          1) /* ItemUseable - No */
     , (100024,  19,       1) /* Value */
     , (100024,  33,          1) /* Bonded - Bonded */
     , (100024,  36,       9999) /* ResistMagic */
     , (100024,  44,         42) /* Damage */
     , (100024,  45,          4) /* DamageType - Bludgeon */
     , (100024,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (100024,  47,          6) /* AttackType - Thrust, Slash */
     , (100024,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (100024,  49,         20) /* WeaponTime */
     , (100024,  51,          1) /* CombatUse - Melee */
     , (100024,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100024, 114,          1) /* Attuned - Attuned */
     , (100024, 353,          7) /* WeaponType - Staff */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100024,  11, True ) /* IgnoreCollisions */
     , (100024,  13, True ) /* Ethereal */
     , (100024,  14, True ) /* GravityStatus */
     , (100024,  15, True ) /* LightsStatus */
     , (100024,  19, True ) /* Attackable */
     , (100024,  22, True ) /* Inscribable */
     , (100024,  23, True ) /* DestroyOnSell */
     , (100024,  65, True ) /* IgnoreMagicResist */
     , (100024,  66, True ) /* IgnoreMagicArmor */
     , (100024,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100024,  21,    1.33) /* WeaponLength */
     , (100024,  22,     0.5) /* DamageVariance */
     , (100024,  26,       0) /* MaximumVelocity */
     , (100024,  29,       1) /* WeaponDefense */
     , (100024,  39,    0.67) /* DefaultScale */
     , (100024,  62,    1.05) /* WeaponOffense */
     , (100024,  63,       1) /* DamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100024,   1, 'Hollow Staff') /* Name */
     , (100024,  15, 'A staff crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* ShortDesc */
     , (100024,  16, 'A staff crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon is unenchantable and ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100024,   1, 0x020008A7) /* Setup */
     , (100024,   3, 0x20000014) /* SoundTable */
     , (100024,   6, 0x04000BEF) /* PaletteBase */
     , (100024,   7, 0x10000153) /* ClothingBase */
     , (100024,   8, 0x060016B1) /* Icon */
     , (100024,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100024,  36, 0x0E000014) /* MutateFilter */;
