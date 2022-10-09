DELETE FROM `weenie` WHERE `class_Id` = 100132;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100132, 'custommaterialsealedpine', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100132,   1,        128) /* ItemType - Misc */
     , (100132,   3,         39) /* PaletteTemplate - Black */
     , (100132,   5,         10) /* EncumbranceVal */
     , (100132,  11,        100) /* MaxStackSize */
     , (100132,  12,          1) /* StackSize */
     , (100132,  13,         10) /* StackUnitEncumbrance */
     , (100132,  15,          1) /* StackUnitValue */
     , (100132,  16,          8) /* ItemUseable - Contained */
     , (100132,  19,          1) /* Value */
     , (100132,  33,          1) /* Bonded - Bonded */
     , (100132,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100132,  94,         16) /* TargetType - Creature */
	 , (100132, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100132,  22, True ) /* Inscribable */
     , (100132,  23, True ) /* DestroyOnSell */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100132,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100132,   1, 'Sealed Bag of Salvaged Pine') /* Name */
     , (100132,  14, 'Use this bag to break the seal and open it.') /* Use */
     , (100132,  16, 'A sealed and certified bag of perfectly salvaged Pine. Not for individual resale.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100132,   1, 0x02000181) /* Setup */
     , (100132,   3, 0x20000014) /* SoundTable */
     , (100132,   6, 0x04000BEF) /* PaletteBase */
     , (100132,   7, 0x100003CE) /* ClothingBase */
     , (100132,   8, 0x0600102C) /* Icon */
     , (100132,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (100132,  38,     100064) /* UseCreateItem - Salvaged Pine */
     , (100132,  50, 0x060026D3) /* IconOverlay */;
