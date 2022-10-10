DELETE FROM `weenie` WHERE `class_Id` = 100055;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100055, 'salvagevendorcurrency', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100055,   1,   67108864) /* ItemType - CraftAlchemyIntermediate */
     , (100055,   3,         93) /* PaletteTemplate - Brown */
     , (100055,   5,        100) /* EncumbranceVal */
     , (100055,  11,        100) /* MaxStackSize */
     , (100055,  12,          1) /* StackSize */
     , (100055,  13,        100) /* StackUnitEncumbrance */
     , (100055,  16,          1) /* ItemUseable - No */
     , (100055,  19,          1) /* Value */
	 , (100055,  33,          1) /* Bonded - Bonded */
     , (100055,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100055,  94,   67108864) /* TargetType - CraftAlchemyIntermediate */
     , (100055, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100055,   1, False) /* Stuck */
     , (100055,  11, True ) /* IgnoreCollisions */
     , (100055,  13, True ) /* Ethereal */
     , (100055,  14, True ) /* GravityStatus */
     , (100055,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100055,   1, 'Salvage Vendor Trade Bag') /* Name */
     , (100055,  15, 'Exchange this bag for a bag of 100% success salvage.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100055,   1, 0x02000181) /* Setup */
     , (100055,   3, 0x20000014) /* SoundTable */
     , (100055,   6, 0x04000BEF) /* PaletteBase */
     , (100055,   7, 0x100003CE) /* ClothingBase */
     , (100055,   8, 0x060026C0) /* Icon */
     , (100055,  22, 0x3400002B) /* PhysicsEffectTable */;
