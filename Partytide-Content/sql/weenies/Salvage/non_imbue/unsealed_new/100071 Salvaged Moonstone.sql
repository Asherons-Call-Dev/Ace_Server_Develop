DELETE FROM `weenie` WHERE `class_Id` = 100071;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100071, 'custommaterialmoonstone', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100071,   1,        128) /* ItemType - Misc */
     , (100071,   3,          8) /* PaletteTemplate - Green */
     , (100071,   5,         10) /* EncumbranceVal */
     , (100071,  11,        100) /* MaxStackSize */
     , (100071,  12,          1) /* StackSize */
     , (100071,  13,         10) /* StackUnitEncumbrance */
     , (100071,  15,          1) /* StackUnitValue */
     , (100071,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100071,  19,          1) /* Value */
     , (100071,  33,          1) /* Bonded - Bonded */
     , (100071,  91,        100) /* MaxStructure */
	 , (100071,  92,        100) /* Structure */
     , (100071,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100071,  94,      35215) /* TargetType - Jewelry, Misc, Gem, RedirectableItemEnchantmentTarget */
	 , (100071, 105,        100) /* ItemWorkmanship */
     , (100071, 131,         31) /* MaterialType - Moonstone */
     , (100071, 151,          9) /* HookType - Floor, Yard */
	 , (100071, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100071,  22, True ) /* Inscribable */
     , (100071,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100071,   1, 'Salvaged Moonstone') /* Name */
     , (100071,  14, 'Apply this material to a treasure-generated item to increase its maximum mana by 250.') /* Use */
     , (100071,  15, 'Chips of moonstone material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100071,   1, 0x02000181) /* Setup */
     , (100071,   3, 0x20000014) /* SoundTable */
     , (100071,   6, 0x04000BEF) /* PaletteBase */
     , (100071,   7, 0x100003CE) /* ClothingBase */
     , (100071,   8, 0x0600102C) /* Icon */
     , (100071,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100071,  50, 0x06002705) /* IconOverlay */;
