DELETE FROM `weenie` WHERE `class_Id` = 100143;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100143, 'custommaterialsealedarmoredillohide', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100143,   1,        128) /* ItemType - Misc */
     , (100143,   3,         39) /* PaletteTemplate - Black */
     , (100143,   5,         10) /* EncumbranceVal */
     , (100143,  11,        100) /* MaxStackSize */
     , (100143,  12,          1) /* StackSize */
     , (100143,  13,         10) /* StackUnitEncumbrance */
     , (100143,  15,          1) /* StackUnitValue */
     , (100143,  16,          8) /* ItemUseable - Contained */
     , (100143,  19,          1) /* Value */
     , (100143,  33,          1) /* Bonded - Bonded */
     , (100143,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100143,  94,         16) /* TargetType - Creature */
	 , (100143, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100143,  22, True ) /* Inscribable */
     , (100143,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100143,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100143,   1, 'Sealed Bag of Salvaged Armoredillo Hide') /* Name */
     , (100143,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100143,  16, 'A sealed and certified bag of perfectly salvaged Armoredillo Hide. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100143,   1, 0x02000181) /* Setup */
     , (100143,   3, 0x20000014) /* SoundTable */
     , (100143,   6, 0x04000BEF) /* PaletteBase */
     , (100143,   7, 0x100003CE) /* ClothingBase */
     , (100143,   8, 0x0600102C) /* Icon */
     , (100143,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100143,  38,     100075) /* UseCreateItem - Salvaged Armoredillo Hide */
     , (100143,  50, 0x060026C8) /* IconOverlay */;
