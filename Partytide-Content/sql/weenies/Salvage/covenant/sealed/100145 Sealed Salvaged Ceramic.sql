DELETE FROM `weenie` WHERE `class_Id` = 100145;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100145, 'custommaterialsealedceramic', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100145,   1,        128) /* ItemType - Misc */
     , (100145,   3,         39) /* PaletteTemplate - Black */
     , (100145,   5,         10) /* EncumbranceVal */
     , (100145,  11,        100) /* MaxStackSize */
     , (100145,  12,          1) /* StackSize */
     , (100145,  13,         10) /* StackUnitEncumbrance */
     , (100145,  15,          1) /* StackUnitValue */
     , (100145,  16,          8) /* ItemUseable - Contained */
     , (100145,  19,          1) /* Value */
     , (100145,  33,          1) /* Bonded - Bonded */
     , (100145,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100145,  94,         16) /* TargetType - Creature */
	 , (100145, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100145,  22, True ) /* Inscribable */
     , (100145,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100145,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100145,   1, 'Sealed Bag of Salvaged Ceramic') /* Name */
     , (100145,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100145,  16, 'A sealed and certified bag of perfectly salvaged Ceramic. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100145,   1, 0x02000181) /* Setup */
     , (100145,   3, 0x20000014) /* SoundTable */
     , (100145,   6, 0x04000BEF) /* PaletteBase */
     , (100145,   7, 0x100003CE) /* ClothingBase */
     , (100145,   8, 0x0600102C) /* Icon */
     , (100145,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100145,  38,     100077) /* UseCreateItem - Salvaged Ceramic */
     , (100145,  50, 0x060026CB) /* IconOverlay */;
