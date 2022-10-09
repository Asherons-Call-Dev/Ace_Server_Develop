DELETE FROM `weenie` WHERE `class_Id` = 100140;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100140, 'custommaterialsealedopal', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100140,   1,        128) /* ItemType - Misc */
     , (100140,   3,         39) /* PaletteTemplate - Black */
     , (100140,   5,         10) /* EncumbranceVal */
     , (100140,  11,        100) /* MaxStackSize */
     , (100140,  12,          1) /* StackSize */
     , (100140,  13,         10) /* StackUnitEncumbrance */
     , (100140,  15,          1) /* StackUnitValue */
     , (100140,  16,          8) /* ItemUseable - Contained */
     , (100140,  19,          1) /* Value */
     , (100140,  33,          1) /* Bonded - Bonded */
     , (100140,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100140,  94,         16) /* TargetType - Creature */
	 , (100140, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100140,  22, True ) /* Inscribable */
     , (100140,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100140,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100140,   1, 'Sealed Bag of Salvaged Opal') /* Name */
     , (100140,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100140,  16, 'A sealed and certified bag of perfectly salvaged Opal. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100140,   1, 0x02000181) /* Setup */
     , (100140,   3, 0x20000014) /* SoundTable */
     , (100140,   6, 0x04000BEF) /* PaletteBase */
     , (100140,   7, 0x100003CE) /* ClothingBase */
     , (100140,   8, 0x0600102C) /* Icon */
     , (100140,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100140,  38,     100072) /* UseCreateItem - Salvaged Opal */
     , (100140,  50, 0x06002708) /* IconOverlay */;
