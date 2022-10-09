DELETE FROM `weenie` WHERE `class_Id` = 100138;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100138, 'custommaterialsealedleather', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100138,   1,        128) /* ItemType - Misc */
     , (100138,   3,         39) /* PaletteTemplate - Black */
     , (100138,   5,         10) /* EncumbranceVal */
     , (100138,  11,        100) /* MaxStackSize */
     , (100138,  12,          1) /* StackSize */
     , (100138,  13,         10) /* StackUnitEncumbrance */
     , (100138,  15,          1) /* StackUnitValue */
     , (100138,  16,          8) /* ItemUseable - Contained */
     , (100138,  19,          1) /* Value */
     , (100138,  33,          1) /* Bonded - Bonded */
     , (100138,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100138,  94,         16) /* TargetType - Creature */
	 , (100138, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100138,  22, True ) /* Inscribable */
     , (100138,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100138,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100138,   1, 'Sealed Bag of Salvaged Leather') /* Name */
     , (100138,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100138,  16, 'A sealed and certified bag of perfectly salvaged Leather. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100138,   1, 0x02000181) /* Setup */
     , (100138,   3, 0x20000014) /* SoundTable */
     , (100138,   6, 0x04000BEF) /* PaletteBase */
     , (100138,   7, 0x100003CE) /* ClothingBase */
     , (100138,   8, 0x0600102C) /* Icon */
     , (100138,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100138,  38,     100070) /* UseCreateItem - Salvaged Leather */
     , (100138,  50, 0x06002703) /* IconOverlay */;
