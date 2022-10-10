DELETE FROM `weenie` WHERE `class_Id` = 100130;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100130, 'custommaterialsealedmahogany', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100130,   1,        128) /* ItemType - Misc */
     , (100130,   3,         39) /* PaletteTemplate - Black */
     , (100130,   5,         10) /* EncumbranceVal */
     , (100130,  11,        100) /* MaxStackSize */
     , (100130,  12,          1) /* StackSize */
     , (100130,  13,         10) /* StackUnitEncumbrance */
     , (100130,  15,          1) /* StackUnitValue */
     , (100130,  16,          8) /* ItemUseable - Contained */
     , (100130,  19,          1) /* Value */
     , (100130,  33,          1) /* Bonded - Bonded */
     , (100130,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100130,  94,         16) /* TargetType - Creature */
	 , (100130, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100130,  22, True ) /* Inscribable */
     , (100130,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100130,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100130,   1, 'Sealed Bag of Salvaged Mahogany') /* Name */
     , (100130,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100130,  16, 'A sealed and certified bag of perfectly salvaged Mahogany. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100130,   1, 0x02000181) /* Setup */
     , (100130,   3, 0x20000014) /* SoundTable */
     , (100130,   6, 0x04000BEF) /* PaletteBase */
     , (100130,   7, 0x100003CE) /* ClothingBase */
     , (100130,   8, 0x0600102C) /* Icon */
     , (100130,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100130,  38,     100062) /* UseCreateItem - Salvaged Mahogany */
     , (100130,  50, 0x060026D0) /* IconOverlay */;
