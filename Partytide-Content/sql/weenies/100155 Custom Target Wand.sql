DELETE FROM `weenie` WHERE `class_Id` = 100155;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100155, 'customtargetwand', 35, '2005-02-09 10:00:00') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100155,   1,      32768) /* ItemType - Caster */
     , (100155,   3,          8) /* PaletteTemplate - Green */
     , (100155,   5,        125) /* EncumbranceVal */
     , (100155,   8,         50) /* Mass */
     , (100155,   9,   16777216) /* ValidLocations - Held */
     , (100155,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (100155,  18,          1) /* UiEffects - Magical */
     , (100155,  19,        100) /* Value */
     , (100155,  46,        512) /* DefaultCombatStyle - Magic */
     , (100155,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100155,  94,         16) /* TargetType - Creature */
     , (100155, 110,          0) /* ItemAllegianceRankLimit */
     , (100155, 150,        103) /* HookPlacement - Hook */
     , (100155, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES  (100155,  13, True) /* Ethereal */
	  ,	(100155,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100155,  29,       1) /* WeaponDefense */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100155,   1, 'Wand') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100155,   1, 0x02000620) /* Setup */
     , (100155,   3, 0x20000014) /* SoundTable */
     , (100155,   6, 0x04000BEF) /* PaletteBase */
     , (100155,   7, 0x10000176) /* ClothingBase */
     , (100155,   8, 0x06001075) /* Icon */
     , (100155,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100155,  27, 0x400000E1) /* UseUserAnimation - UseMagicWand */
     , (100155,  36, 0x0E000016) /* MutateFilter */;
