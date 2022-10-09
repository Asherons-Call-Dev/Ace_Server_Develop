DELETE FROM `weenie` WHERE `class_Id` = 100127;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100127, 'custommaterialsealedgranite', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100127,   1,        128) /* ItemType - Misc */
     , (100127,   3,         39) /* PaletteTemplate - Black */
     , (100127,   5,         10) /* EncumbranceVal */
     , (100127,  11,        100) /* MaxStackSize */
     , (100127,  12,          1) /* StackSize */
     , (100127,  13,         10) /* StackUnitEncumbrance */
     , (100127,  15,          1) /* StackUnitValue */
     , (100127,  16,          8) /* ItemUseable - Contained */
     , (100127,  19,          1) /* Value */
     , (100127,  33,          1) /* Bonded - Bonded */
     , (100127,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100127,  94,         16) /* TargetType - Creature */
	 , (100127, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100127,  22, True ) /* Inscribable */
     , (100127,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100127,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100127,   1, 'Sealed Bag of Salvaged Granite') /* Name */
     , (100127,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100127,  16, 'A sealed and certified bag of perfectly salvaged Granite. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100127,   1, 0x02000181) /* Setup */
     , (100127,   3, 0x20000014) /* SoundTable */
     , (100127,   6, 0x04000BEF) /* PaletteBase */
     , (100127,   7, 0x100003CE) /* ClothingBase */
     , (100127,   8, 0x0600102C) /* Icon */
     , (100127,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100127,  38,     100059) /* UseCreateItem - Salvaged Granite */
     , (100127,  50, 0x060026CD) /* IconOverlay */;
