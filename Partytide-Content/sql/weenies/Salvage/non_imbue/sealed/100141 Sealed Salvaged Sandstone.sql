DELETE FROM `weenie` WHERE `class_Id` = 100141;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100141, 'custommaterialsealedsandstone', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100141,   1,        128) /* ItemType - Misc */
     , (100141,   3,         39) /* PaletteTemplate - Black */
     , (100141,   5,         10) /* EncumbranceVal */
     , (100141,  11,        100) /* MaxStackSize */
     , (100141,  12,          1) /* StackSize */
     , (100141,  13,         10) /* StackUnitEncumbrance */
     , (100141,  15,          1) /* StackUnitValue */
     , (100141,  16,          8) /* ItemUseable - Contained */
     , (100141,  19,          1) /* Value */
     , (100141,  33,          1) /* Bonded - Bonded */
     , (100141,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100141,  94,         16) /* TargetType - Creature */
	 , (100141, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100141,  22, True ) /* Inscribable */
     , (100141,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100141,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100141,   1, 'Sealed Bag of Salvaged Sandstone') /* Name */
     , (100141,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100141,  16, 'A sealed and certified bag of perfectly salvaged Sandstone. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100141,   1, 0x02000181) /* Setup */
     , (100141,   3, 0x20000014) /* SoundTable */
     , (100141,   6, 0x04000BEF) /* PaletteBase */
     , (100141,   7, 0x100003CE) /* ClothingBase */
     , (100141,   8, 0x0600102C) /* Icon */
     , (100141,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100141,  38,     100073) /* UseCreateItem - Salvaged Sandstone */
     , (100141,  50, 0x06002710) /* IconOverlay */;
