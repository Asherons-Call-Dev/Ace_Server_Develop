DELETE FROM `weenie` WHERE `class_Id` = 100054;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100054, 'imbuesalvagevendorcoin', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100054,   1,        128) /* ItemType - Misc */
     , (100054,   5,          1) /* EncumbranceVal */
     , (100054,  11,        100) /* MaxStackSize */
     , (100054,  12,          1) /* StackSize */
     , (100054,  13,          1) /* StackUnitEncumbrance */
     , (100054,  15,          1) /* StackUnitValue */
     , (100054,  16,          1) /* ItemUseable - No */
     , (100054,  19,          1) /* Value */
     , (100054,  33,          1) /* Bonded - Bonded */
     , (100054,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100054,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100054,   1, 'Imbue Vendor Coin') /* Name */
     , (100054,  15, 'This coin can be exchanged for a bag of foolproof imbue salvage. ') /* ShortDesc */
     , (100054,  20, 'Imbue Vendor Coins') /* PluralName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100054,   1, 0x02001709) /* Setup */
     , (100054,   3, 0x20000014) /* SoundTable */
     , (100054,   8, 0x06006635) /* Icon */
     , (100054,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100054,  50, 0x06006910) /* IconOverlay */;
