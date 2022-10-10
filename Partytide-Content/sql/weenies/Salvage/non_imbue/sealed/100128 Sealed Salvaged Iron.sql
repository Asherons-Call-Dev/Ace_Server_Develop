DELETE FROM `weenie` WHERE `class_Id` = 100128;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100128, 'custommaterialsealediron', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100128,   1,        128) /* ItemType - Misc */
     , (100128,   3,         39) /* PaletteTemplate - Black */
     , (100128,   5,         10) /* EncumbranceVal */
     , (100128,  11,        100) /* MaxStackSize */
     , (100128,  12,          1) /* StackSize */
     , (100128,  13,         10) /* StackUnitEncumbrance */
     , (100128,  15,          1) /* StackUnitValue */
     , (100128,  16,          8) /* ItemUseable - Contained */
     , (100128,  19,          1) /* Value */
     , (100128,  33,          1) /* Bonded - Bonded */
     , (100128,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100128,  94,         16) /* TargetType - Creature */
	 , (100128, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100128,  22, True ) /* Inscribable */
     , (100128,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100128,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100128,   1, 'Sealed Bag of Salvaged Iron') /* Name */
     , (100128,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100128,  16, 'A sealed and certified bag of perfectly salvaged Iron. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100128,   1, 0x02000181) /* Setup */
     , (100128,   3, 0x20000014) /* SoundTable */
     , (100128,   6, 0x04000BEF) /* PaletteBase */
     , (100128,   7, 0x100003CE) /* ClothingBase */
     , (100128,   8, 0x0600102C) /* Icon */
     , (100128,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100128,  38,     100060) /* UseCreateItem - Salvaged Iron */
     , (100128,  50, 0x060026CE) /* IconOverlay */;
