DELETE FROM `weenie` WHERE `class_Id` = 100135;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100135, 'custommaterialsealedbrass', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100135,   1,        128) /* ItemType - Misc */
     , (100135,   3,         39) /* PaletteTemplate - Black */
     , (100135,   5,         10) /* EncumbranceVal */
     , (100135,  11,        100) /* MaxStackSize */
     , (100135,  12,          1) /* StackSize */
     , (100135,  13,         10) /* StackUnitEncumbrance */
     , (100135,  15,          1) /* StackUnitValue */
     , (100135,  16,          8) /* ItemUseable - Contained */
     , (100135,  19,          1) /* Value */
     , (100135,  33,          1) /* Bonded - Bonded */
     , (100135,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100135,  94,         16) /* TargetType - Creature */
	 , (100135, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100135,  22, True ) /* Inscribable */
     , (100135,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100135,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100135,   1, 'Sealed Bag of Salvaged Brass') /* Name */
     , (100135,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100135,  16, 'A sealed and certified bag of perfectly salvaged Brass. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100135,   1, 0x02000181) /* Setup */
     , (100135,   3, 0x20000014) /* SoundTable */
     , (100135,   6, 0x04000BEF) /* PaletteBase */
     , (100135,   7, 0x100003CE) /* ClothingBase */
     , (100135,   8, 0x0600102C) /* Icon */
     , (100135,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100135,  38,     100067) /* UseCreateItem - Salvaged Brass */
     , (100135,  50, 0x060026C9) /* IconOverlay */;
