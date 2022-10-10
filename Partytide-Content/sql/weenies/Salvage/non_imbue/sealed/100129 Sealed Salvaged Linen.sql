DELETE FROM `weenie` WHERE `class_Id` = 100129;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100129, 'custommaterialsealedlinen', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100129,   1,        128) /* ItemType - Misc */
     , (100129,   3,         39) /* PaletteTemplate - Black */
     , (100129,   5,         10) /* EncumbranceVal */
     , (100129,  11,        100) /* MaxStackSize */
     , (100129,  12,          1) /* StackSize */
     , (100129,  13,         10) /* StackUnitEncumbrance */
     , (100129,  15,          1) /* StackUnitValue */
     , (100129,  16,          8) /* ItemUseable - Contained */
     , (100129,  19,          1) /* Value */
     , (100129,  33,          1) /* Bonded - Bonded */
     , (100129,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100129,  94,         16) /* TargetType - Creature */
	 , (100129, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100129,  22, True ) /* Inscribable */
     , (100129,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100129,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100129,   1, 'Sealed Bag of Salvaged Linen') /* Name */
     , (100129,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100129,  16, 'A sealed and certified bag of perfectly salvaged Linen. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100129,   1, 0x02000181) /* Setup */
     , (100129,   3, 0x20000014) /* SoundTable */
     , (100129,   6, 0x04000BEF) /* PaletteBase */
     , (100129,   7, 0x100003CE) /* ClothingBase */
     , (100129,   8, 0x0600102C) /* Icon */
     , (100129,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100129,  38,     100061) /* UseCreateItem - Salvaged Linen */
     , (100129,  50, 0x060026CF) /* IconOverlay */;
