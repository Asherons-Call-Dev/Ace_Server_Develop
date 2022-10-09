DELETE FROM `weenie` WHERE `class_Id` = 100134;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100134, 'custommaterialsealedvelvet', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100134,   1,        128) /* ItemType - Misc */
     , (100134,   3,         39) /* PaletteTemplate - Black */
     , (100134,   5,         10) /* EncumbranceVal */
     , (100134,  11,        100) /* MaxStackSize */
     , (100134,  12,          1) /* StackSize */
     , (100134,  13,         10) /* StackUnitEncumbrance */
     , (100134,  15,          1) /* StackUnitValue */
     , (100134,  16,          8) /* ItemUseable - Contained */
     , (100134,  19,          1) /* Value */
     , (100134,  33,          1) /* Bonded - Bonded */
     , (100134,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100134,  94,         16) /* TargetType - Creature */
	 , (100134, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100134,  22, True ) /* Inscribable */
     , (100134,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100134,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100134,   1, 'Sealed Bag of Salvaged Velvet') /* Name */
     , (100134,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100134,  16, 'A sealed and certified bag of perfectly salvaged Velvet. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100134,   1, 0x02000181) /* Setup */
     , (100134,   3, 0x20000014) /* SoundTable */
     , (100134,   6, 0x04000BEF) /* PaletteBase */
     , (100134,   7, 0x100003CE) /* ClothingBase */
     , (100134,   8, 0x0600102C) /* Icon */
     , (100134,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100134,  38,     100066) /* UseCreateItem - Salvaged Velvet */
     , (100134,  50, 0x060026D6) /* IconOverlay */;
