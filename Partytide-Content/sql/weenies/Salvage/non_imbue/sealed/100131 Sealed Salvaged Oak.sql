DELETE FROM `weenie` WHERE `class_Id` = 100131;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100131, 'custommaterialsealedoak', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100131,   1,        128) /* ItemType - Misc */
     , (100131,   3,         39) /* PaletteTemplate - Black */
     , (100131,   5,         10) /* EncumbranceVal */
     , (100131,  11,        100) /* MaxStackSize */
     , (100131,  12,          1) /* StackSize */
     , (100131,  13,         10) /* StackUnitEncumbrance */
     , (100131,  15,          1) /* StackUnitValue */
     , (100131,  16,          8) /* ItemUseable - Contained */
     , (100131,  19,          1) /* Value */
     , (100131,  33,          1) /* Bonded - Bonded */
     , (100131,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100131,  94,         16) /* TargetType - Creature */
	 , (100131, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100131,  22, True ) /* Inscribable */
     , (100131,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100131,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100131,   1, 'Sealed Bag of Salvaged Oak') /* Name */
     , (100131,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100131,  16, 'A sealed and certified bag of perfectly salvaged Oak. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100131,   1, 0x02000181) /* Setup */
     , (100131,   3, 0x20000014) /* SoundTable */
     , (100131,   6, 0x04000BEF) /* PaletteBase */
     , (100131,   7, 0x100003CE) /* ClothingBase */
     , (100131,   8, 0x0600102C) /* Icon */
     , (100131,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100131,  38,     100063) /* UseCreateItem - Salvaged Oak */
     , (100131,  50, 0x060026D2) /* IconOverlay */;
