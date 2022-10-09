DELETE FROM `weenie` WHERE `class_Id` = 100149;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100149, 'custommaterialsealedagate', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100149,   1,        128) /* ItemType - Misc */
     , (100149,   3,         39) /* PaletteTemplate - Black */
     , (100149,   5,         10) /* EncumbranceVal */
     , (100149,  11,        100) /* MaxStackSize */
     , (100149,  12,          1) /* StackSize */
     , (100149,  13,         10) /* StackUnitEncumbrance */
     , (100149,  15,          1) /* StackUnitValue */
     , (100149,  16,          8) /* ItemUseable - Contained */
     , (100149,  19,          1) /* Value */
     , (100149,  33,          1) /* Bonded - Bonded */
     , (100149,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100149,  94,         16) /* TargetType - Creature */
	 , (100149, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100149,  22, True ) /* Inscribable */
     , (100149,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100149,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100149,   1, 'Sealed Bag of Salvaged Agate') /* Name */
     , (100149,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100149,  16, 'A sealed and certified bag of perfectly salvaged Agate. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100149,   1, 0x02000181) /* Setup */
     , (100149,   3, 0x20000014) /* SoundTable */
     , (100149,   6, 0x04000BEF) /* PaletteBase */
     , (100149,   7, 0x100003CE) /* ClothingBase */
     , (100149,   8, 0x0600102C) /* Icon */
     , (100149,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100149,  38,     100081) /* UseCreateItem - Salvaged Agate */
     , (100149,  50, 0x060026EB) /* IconOverlay */;
