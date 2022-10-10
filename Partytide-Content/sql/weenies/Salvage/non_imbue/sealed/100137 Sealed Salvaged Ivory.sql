DELETE FROM `weenie` WHERE `class_Id` = 100137;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100137, 'custommaterialsealedivory', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100137,   1,        128) /* ItemType - Misc */
     , (100137,   3,         39) /* PaletteTemplate - Black */
     , (100137,   5,         10) /* EncumbranceVal */
     , (100137,  11,        100) /* MaxStackSize */
     , (100137,  12,          1) /* StackSize */
     , (100137,  13,         10) /* StackUnitEncumbrance */
     , (100137,  15,          1) /* StackUnitValue */
     , (100137,  16,          8) /* ItemUseable - Contained */
     , (100137,  19,          1) /* Value */
     , (100137,  33,          1) /* Bonded - Bonded */
     , (100137,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100137,  94,         16) /* TargetType - Creature */
	 , (100137, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100137,  22, True ) /* Inscribable */
     , (100137,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100137,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100137,   1, 'Sealed Bag of Salvaged Ivory') /* Name */
     , (100137,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100137,  16, 'A sealed and certified bag of perfectly salvaged Ivory. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100137,   1, 0x02000181) /* Setup */
     , (100137,   3, 0x20000014) /* SoundTable */
     , (100137,   6, 0x04000BEF) /* PaletteBase */
     , (100137,   7, 0x100003CE) /* ClothingBase */
     , (100137,   8, 0x0600102C) /* Icon */
     , (100137,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100137,  38,     100069) /* UseCreateItem - Salvaged Ivory */
     , (100137,  50, 0x060026FF) /* IconOverlay */;
