DELETE FROM `weenie` WHERE `class_Id` = 100000;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100000, 'starterdappersuit', 2, '2022-08-14 04:32:07') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100000,   1,          4) /* ItemType - Clothing */
     , (100000,   4,      81664) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs, OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms, Feet */
     , (100000,   5,        500) /* EncumbranceVal */
     , (100000,   9,      32512) /* ValidLocations - Armor */
     , (100000,  16,          1) /* ItemUseable - No */
     , (100000,  19,       5000) /* Value */
     , (100000,  28,        200) /* ArmorLevel */
     , (100000,  33,          1) /* Bonded - Bonded */
     , (100000,  53,        101) /* PlacementPosition - Resting */
     , (100000,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100000, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100000,  11, True ) /* IgnoreCollisions */
     , (100000,  13, True ) /* Ethereal */
     , (100000,  14, True ) /* GravityStatus */
     , (100000,  19, True ) /* Attackable */
     , (100000,  22, True ) /* Inscribable */
     , (100000,  69, False) /* IsSellable */
     , (100000,  99, True ) /* Ivoryable */
     , (100000, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100000,  13,     0.1) /* ArmorModVsSlash */
     , (100000,  14,     0.1) /* ArmorModVsPierce */
     , (100000,  15,     0.1) /* ArmorModVsBludgeon */
     , (100000,  16,     0.1) /* ArmorModVsCold */
     , (100000,  17,     0.1) /* ArmorModVsFire */
     , (100000,  18,     0.1) /* ArmorModVsAcid */
     , (100000,  19,     0.1) /* ArmorModVsElectric */
     , (100000, 165,       1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100000,   1, 'Starter Dapper Suit ') /* Name */
     , (100000,  15, 'A suit designed by the Gharu''ndim tailor, Xuut. The fibers of the suit look as though they could withstand the dyeing process.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100000,   1, 0x020001A6) /* Setup */
     , (100000,   3, 0x20000014) /* SoundTable */
     , (100000,   6, 0x0400007E) /* PaletteBase */
     , (100000,   7, 0x100004F1) /* ClothingBase */
     , (100000,   8, 0x06002FB7) /* Icon */
     , (100000,  22, 0x3400002B) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "Changelog": [
    {
      "created": "2022-08-14T04:26:02.7594349Z",
      "author": "ACE.Adapter",
      "comment": "Weenie exported from ACEmulator world database using ACE.Adapter"
    }
  ],
  "IsDone": false
}
*/
