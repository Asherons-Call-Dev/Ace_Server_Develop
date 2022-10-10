DELETE FROM `weenie` WHERE `class_Id` = 100001;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100001, 'starterfedora', 2, '2022-08-13 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100001,   1,          4) /* ItemType - Clothing */
     , (100001,   3,          2) /* PaletteTemplate - Blue */
     , (100001,   4,      16384) /* ClothingPriority - Head */
     , (100001,   5,         50) /* EncumbranceVal */
     , (100001,   8,         15) /* Mass */
     , (100001,   9,          1) /* ValidLocations - HeadWear */
     , (100001,  16,          1) /* ItemUseable - No */
     , (100001,  19,       2000) /* Value */
     , (100001,  27,          1) /* ArmorType - Cloth */
     , (100001,  28,          250) /* ArmorLevel */
	 , (100001,  33,          1) /* Bonded - Bonded */
     , (100001,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (100001, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100001,  22, True ) /* Inscribable */
     , (100001,  69, False) /* IsSellable */
	 , (100001,  99, True ) /* Ivoryable */
     , (100001, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100001,  12,    0.66) /* Shade */
     , (100001,  13,     0.8) /* ArmorModVsSlash */
     , (100001,  14,     0.8) /* ArmorModVsPierce */
     , (100001,  15,       1) /* ArmorModVsBludgeon */
     , (100001,  16,     0.2) /* ArmorModVsCold */
     , (100001,  17,     0.2) /* ArmorModVsFire */
     , (100001,  18,     0.1) /* ArmorModVsAcid */
     , (100001,  19,     0.2) /* ArmorModVsElectric */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100001,   1, 'Starter Crimped Hat') /* Name */
     , (100001,  15, 'Here is your hat.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100001,   1, 0x020000D3) /* Setup */
     , (100001,   3, 0x20000014) /* SoundTable */
     , (100001,   6, 0x0400007E) /* PaletteBase */
     , (100001,   7, 0x100004F0) /* ClothingBase */
     , (100001,   8, 0x06002F97) /* Icon */
     , (100001,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100001,  36, 0x0E000016) /* MutateFilter */;
