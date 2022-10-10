DELETE FROM `weenie` WHERE `class_Id` = 100144;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100144, 'custommaterialsealedbronze', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100144,   1,        128) /* ItemType - Misc */
     , (100144,   3,         39) /* PaletteTemplate - Black */
     , (100144,   5,         10) /* EncumbranceVal */
     , (100144,  11,        100) /* MaxStackSize */
     , (100144,  12,          1) /* StackSize */
     , (100144,  13,         10) /* StackUnitEncumbrance */
     , (100144,  15,          1) /* StackUnitValue */
     , (100144,  16,          8) /* ItemUseable - Contained */
     , (100144,  19,          1) /* Value */
     , (100144,  33,          1) /* Bonded - Bonded */
     , (100144,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100144,  94,         16) /* TargetType - Creature */
	 , (100144, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100144,  22, True ) /* Inscribable */
     , (100144,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100144,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100144,   1, 'Sealed Bag of Salvaged Bronze') /* Name */
     , (100144,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100144,  16, 'A sealed and certified bag of perfectly salvaged Bronze. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100144,   1, 0x02000181) /* Setup */
     , (100144,   3, 0x20000014) /* SoundTable */
     , (100144,   6, 0x04000BEF) /* PaletteBase */
     , (100144,   7, 0x100003CE) /* ClothingBase */
     , (100144,   8, 0x0600102C) /* Icon */
     , (100144,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100144,  38,     100076) /* UseCreateItem - Salvaged Bronze */
     , (100144,  50, 0x060026CA) /* IconOverlay */;
