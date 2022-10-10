DELETE FROM `weenie` WHERE `class_Id` = 100142;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100142, 'custommaterialsealedalabaster', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100142,   1,        128) /* ItemType - Misc */
     , (100142,   3,         39) /* PaletteTemplate - Black */
     , (100142,   5,         10) /* EncumbranceVal */
     , (100142,  11,        100) /* MaxStackSize */
     , (100142,  12,          1) /* StackSize */
     , (100142,  13,         10) /* StackUnitEncumbrance */
     , (100142,  15,          1) /* StackUnitValue */
     , (100142,  16,          8) /* ItemUseable - Contained */
     , (100142,  19,          1) /* Value */
     , (100142,  33,          1) /* Bonded - Bonded */
     , (100142,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100142,  94,         16) /* TargetType - Creature */
	 , (100142, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100142,  22, True ) /* Inscribable */
     , (100142,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100142,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100142,   1, 'Sealed Bag of Salvaged Alabaster') /* Name */
     , (100142,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100142,  16, 'A sealed and certified bag of perfectly salvaged Alabaster. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100142,   1, 0x02000181) /* Setup */
     , (100142,   3, 0x20000014) /* SoundTable */
     , (100142,   6, 0x04000BEF) /* PaletteBase */
     , (100142,   7, 0x100003CE) /* ClothingBase */
     , (100142,   8, 0x0600102C) /* Icon */
     , (100142,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100142,  38,     100074) /* UseCreateItem - Salvaged Alabaster */
     , (100142,  50, 0x060026C7) /* IconOverlay */;
