DELETE FROM `weenie` WHERE `class_Id` = 100005;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100005, 'ace100005-testcurrency', 38, '2022-08-14 19:48:24') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100005,   1,       2048) /* ItemType - Gem */
     , (100005,   5,          5) /* EncumbranceVal */
     , (100005,   8,          5) /* Mass */
     , (100005,   9,          0) /* ValidLocations - None */
     , (100005,  11,          1) /* MaxStackSize */
     , (100005,  12,          1) /* StackSize */
     , (100005,  13,          5) /* StackUnitEncumbrance */
     , (100005,  14,          5) /* StackUnitMass */
     , (100005,  15,          0) /* StackUnitValue */
     , (100005,  16,          1) /* ItemUseable - No */
     , (100005,  19,          0) /* Value */
     , (100005,  33,          1) /* Bonded - Bonded */
     , (100005,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100005, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100005,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100005,   1, 'Test Currency') /* Name */
     , (100005,  14, 'Use this coin to buy items from the Colosseum Vendor.') /* Use */
     , (100005,  15, 'This token will grant the title Defender of Dereth when turned into the High Queen, or a royal guard who grant this title.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100005,   1, 0x02000B20) /* Setup */
     , (100005,   3, 0x20000014) /* SoundTable */
     , (100005,   6, 0x040008B4) /* PaletteBase */
     , (100005,   7, 0x1000034D) /* ClothingBase */
     , (100005,   8, 0x06002C91) /* Icon */
     , (100005,  22, 0x3400002B) /* PhysicsEffectTable */;

/* Lifestoned Changelog:
{
  "Changelog": [
    {
      "created": "2022-08-14T19:48:22.8458631Z",
      "author": "ACE.Adapter",
      "comment": "Weenie exported from ACEmulator world database using ACE.Adapter"
    }
  ],
  "IsDone": false
}
*/
