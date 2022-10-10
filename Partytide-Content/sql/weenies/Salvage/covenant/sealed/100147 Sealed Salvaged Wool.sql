DELETE FROM `weenie` WHERE `class_Id` = 100147;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100147, 'custommaterialsealedwool', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100147,   1,        128) /* ItemType - Misc */
     , (100147,   3,         39) /* PaletteTemplate - Black */
     , (100147,   5,         10) /* EncumbranceVal */
     , (100147,  11,        100) /* MaxStackSize */
     , (100147,  12,          1) /* StackSize */
     , (100147,  13,         10) /* StackUnitEncumbrance */
     , (100147,  15,          1) /* StackUnitValue */
     , (100147,  16,          8) /* ItemUseable - Contained */
     , (100147,  19,          1) /* Value */
     , (100147,  33,          1) /* Bonded - Bonded */
     , (100147,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100147,  94,         16) /* TargetType - Creature */
	 , (100147, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100147,  22, True ) /* Inscribable */
     , (100147,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100147,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100147,   1, 'Sealed Bag of Salvaged Wool') /* Name */
     , (100147,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100147,  16, 'A sealed and certified bag of perfectly salvaged Wool. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100147,   1, 0x02000181) /* Setup */
     , (100147,   3, 0x20000014) /* SoundTable */
     , (100147,   6, 0x04000BEF) /* PaletteBase */
     , (100147,   7, 0x100003CE) /* ClothingBase */
     , (100147,   8, 0x0600102C) /* Icon */
     , (100147,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100147,  38,     100079) /* UseCreateItem - Salvaged Wool */
     , (100147,  50, 0x060026D7) /* IconOverlay */;
