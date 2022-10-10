DELETE FROM `weenie` WHERE `class_Id` = 100133;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100133, 'custommaterialsealedsteel', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100133,   1,        128) /* ItemType - Misc */
     , (100133,   3,         39) /* PaletteTemplate - Black */
     , (100133,   5,         10) /* EncumbranceVal */
     , (100133,  11,        100) /* MaxStackSize */
     , (100133,  12,          1) /* StackSize */
     , (100133,  13,         10) /* StackUnitEncumbrance */
     , (100133,  15,          1) /* StackUnitValue */
     , (100133,  16,          8) /* ItemUseable - Contained */
     , (100133,  19,          1) /* Value */
     , (100133,  33,          1) /* Bonded - Bonded */
     , (100133,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100133,  94,         16) /* TargetType - Creature */
	 , (100133, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100133,  22, True ) /* Inscribable */
     , (100133,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100133,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100133,   1, 'Sealed Bag of Salvaged Steel') /* Name */
     , (100133,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100133,  16, 'A sealed and certified bag of perfectly salvaged Steel. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100133,   1, 0x02000181) /* Setup */
     , (100133,   3, 0x20000014) /* SoundTable */
     , (100133,   6, 0x04000BEF) /* PaletteBase */
     , (100133,   7, 0x100003CE) /* ClothingBase */
     , (100133,   8, 0x0600102C) /* Icon */
     , (100133,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100133,  38,     100065) /* UseCreateItem - Salvaged Steel */
     , (100133,  50, 0x060026D5) /* IconOverlay */;
