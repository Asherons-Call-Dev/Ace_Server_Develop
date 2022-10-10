DELETE FROM `weenie` WHERE `class_Id` = 100148;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100148, 'custommaterialsealedmarble', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100148,   1,        128) /* ItemType - Misc */
     , (100148,   3,         39) /* PaletteTemplate - Black */
     , (100148,   5,         10) /* EncumbranceVal */
     , (100148,  11,        100) /* MaxStackSize */
     , (100148,  12,          1) /* StackSize */
     , (100148,  13,         10) /* StackUnitEncumbrance */
     , (100148,  15,          1) /* StackUnitValue */
     , (100148,  16,          8) /* ItemUseable - Contained */
     , (100148,  19,          1) /* Value */
     , (100148,  33,          1) /* Bonded - Bonded */
     , (100148,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100148,  94,         16) /* TargetType - Creature */
	 , (100148, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100148,  22, True ) /* Inscribable */
     , (100148,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100148,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100148,   1, 'Sealed Bag of Salvaged Marble') /* Name */
     , (100148,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100148,  16, 'A sealed and certified bag of perfectly salvaged Marble. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100148,   1, 0x02000181) /* Setup */
     , (100148,   3, 0x20000014) /* SoundTable */
     , (100148,   6, 0x04000BEF) /* PaletteBase */
     , (100148,   7, 0x100003CE) /* ClothingBase */
     , (100148,   8, 0x0600102C) /* Icon */
     , (100148,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100148,  38,     100080) /* UseCreateItem - Salvaged Marble */
     , (100148,  50, 0x060026D1) /* IconOverlay */;
