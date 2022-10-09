DELETE FROM `weenie` WHERE `class_Id` = 100146;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100146, 'custommaterialsealedreedsharkhide', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100146,   1,        128) /* ItemType - Misc */
     , (100146,   3,         39) /* PaletteTemplate - Black */
     , (100146,   5,         10) /* EncumbranceVal */
     , (100146,  11,        100) /* MaxStackSize */
     , (100146,  12,          1) /* StackSize */
     , (100146,  13,         10) /* StackUnitEncumbrance */
     , (100146,  15,          1) /* StackUnitValue */
     , (100146,  16,          8) /* ItemUseable - Contained */
     , (100146,  19,          1) /* Value */
     , (100146,  33,          1) /* Bonded - Bonded */
     , (100146,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100146,  94,         16) /* TargetType - Creature */
	 , (100146, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100146,  22, True ) /* Inscribable */
     , (100146,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100146,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100146,   1, 'Sealed Bag of Salvaged Reedshark Hide') /* Name */
     , (100146,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100146,  16, 'A sealed and certified bag of perfectly salvaged Reedshark Hide. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100146,   1, 0x02000181) /* Setup */
     , (100146,   3, 0x20000014) /* SoundTable */
     , (100146,   6, 0x04000BEF) /* PaletteBase */
     , (100146,   7, 0x100003CE) /* ClothingBase */
     , (100146,   8, 0x0600102C) /* Icon */
     , (100146,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100146,  38,     100078) /* UseCreateItem - Salvaged Reedshark Hide */
     , (100146,  50, 0x060026D4) /* IconOverlay */;
