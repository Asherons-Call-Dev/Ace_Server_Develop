DELETE FROM `weenie` WHERE `class_Id` = 100030;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100030, 'starterhollowtwohandedspear', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100030,   1,          1) /* ItemType - MeleeWeapon */
     , (100030,   5,        700) /* EncumbranceVal */
     , (100030,   9,   33554432) /* ValidLocations - TwoHanded */
     , (100030,  16,          1) /* ItemUseable - No */
     , (100030,  19,       1) /* Value */
     , (100030,  33,          1) /* Bonded - Bonded */
     , (100030,  36,       9999) /* ResistMagic */
     , (100030,  44,         31) /* Damage */
     , (100030,  45,          2) /* DamageType - Pierce */
     , (100030,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (100030,  47,          2) /* AttackType - Thrust */
     , (100030,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (100030,  49,         30) /* WeaponTime */
     , (100030,  51,          5) /* CombatUse - TwoHanded */
     , (100030,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (100030, 114,          1) /* Attuned - Attuned */
     , (100030, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100030,  11, True ) /* IgnoreCollisions */
     , (100030,  13, True ) /* Ethereal */
     , (100030,  14, True ) /* GravityStatus */
     , (100030,  15, True ) /* LightsStatus */
     , (100030,  19, True ) /* Attackable */
     , (100030,  22, True ) /* Inscribable */
     , (100030,  23, True ) /* DestroyOnSell */
     , (100030,  65, True ) /* IgnoreMagicResist */
     , (100030,  66, True ) /* IgnoreMagicArmor */
     , (100030,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100030,  21,       0) /* WeaponLength */
     , (100030,  22,    0.55) /* DamageVariance */
     , (100030,  26,       0) /* MaximumVelocity */
     , (100030,  29,       1) /* WeaponDefense */
     , (100030,  62,    1.05) /* WeaponOffense */
     , (100030,  63,       1) /* DamageMod */
     , (100030,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100030,   1, 'Hollow Two Handed Spear') /* Name */
     , (100030,  16, 'A spear crafted from low-quality chorizite, seemingly impervious to magical protections. (Note: This weapon ignores modified armor and protection values.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100030,   1, 0x020008A6) /* Setup */
     , (100030,   3, 0x20000014) /* SoundTable */
     , (100030,   8, 0x06006B83) /* Icon */
     , (100030,  22, 0x3400002B) /* PhysicsEffectTable */;
