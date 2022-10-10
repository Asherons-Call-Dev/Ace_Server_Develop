DELETE FROM `weenie` WHERE `class_Id` = 100136;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100136, 'custommaterialsealedgreengarnet', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100136,   1,        128) /* ItemType - Misc */
     , (100136,   3,         39) /* PaletteTemplate - Black */
     , (100136,   5,         10) /* EncumbranceVal */
     , (100136,  11,        100) /* MaxStackSize */
     , (100136,  12,          1) /* StackSize */
     , (100136,  13,         10) /* StackUnitEncumbrance */
     , (100136,  15,          1) /* StackUnitValue */
     , (100136,  16,          8) /* ItemUseable - Contained */
     , (100136,  19,          1) /* Value */
     , (100136,  33,          1) /* Bonded - Bonded */
     , (100136,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100136,  94,         16) /* TargetType - Creature */
	 , (100136, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100136,  22, True ) /* Inscribable */
     , (100136,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100136,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100136,   1, 'Sealed Bag of Salvaged Green Garnet') /* Name */
     , (100136,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100136,  16, 'A sealed and certified bag of perfectly salvaged Green Garnet. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100136,   1, 0x02000181) /* Setup */
     , (100136,   3, 0x20000014) /* SoundTable */
     , (100136,   6, 0x04000BEF) /* PaletteBase */
     , (100136,   7, 0x100003CE) /* ClothingBase */
     , (100136,   8, 0x0600102C) /* Icon */
     , (100136,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100136,  38,     100068) /* UseCreateItem - Salvaged Green Garnet */
     , (100136,  50, 0x060026FA) /* IconOverlay */;
