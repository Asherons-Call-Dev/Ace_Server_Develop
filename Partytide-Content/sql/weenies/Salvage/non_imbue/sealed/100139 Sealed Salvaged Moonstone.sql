DELETE FROM `weenie` WHERE `class_Id` = 100139;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100139, 'custommaterialsealedmoonstone', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100139,   1,        128) /* ItemType - Misc */
     , (100139,   3,         39) /* PaletteTemplate - Black */
     , (100139,   5,         10) /* EncumbranceVal */
     , (100139,  11,        100) /* MaxStackSize */
     , (100139,  12,          1) /* StackSize */
     , (100139,  13,         10) /* StackUnitEncumbrance */
     , (100139,  15,          1) /* StackUnitValue */
     , (100139,  16,          8) /* ItemUseable - Contained */
     , (100139,  19,          1) /* Value */
     , (100139,  33,          1) /* Bonded - Bonded */
     , (100139,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100139,  94,         16) /* TargetType - Creature */
	 , (100139, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100139,  22, True ) /* Inscribable */
     , (100139,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100139,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100139,   1, 'Sealed Bag of Salvaged Moonstone') /* Name */
     , (100139,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100139,  16, 'A sealed and certified bag of perfectly salvaged Moonstone. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100139,   1, 0x02000181) /* Setup */
     , (100139,   3, 0x20000014) /* SoundTable */
     , (100139,   6, 0x04000BEF) /* PaletteBase */
     , (100139,   7, 0x100003CE) /* ClothingBase */
     , (100139,   8, 0x0600102C) /* Icon */
     , (100139,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100139,  38,     100071) /* UseCreateItem - Salvaged Moonstone */
     , (100139,  50, 0x06002705) /* IconOverlay */;
