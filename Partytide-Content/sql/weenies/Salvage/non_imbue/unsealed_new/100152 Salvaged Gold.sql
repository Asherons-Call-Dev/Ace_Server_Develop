DELETE FROM `weenie` WHERE `class_Id` = 100152;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100152, 'custommaterialgold', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100152,   1,        128) /* ItemType - Misc */
     , (100152,   3,          8) /* PaletteTemplate - Green */
     , (100152,   5,         10) /* EncumbranceVal */
     , (100152,  11,        100) /* MaxStackSize */
     , (100152,  12,          1) /* StackSize */
     , (100152,  13,         10) /* StackUnitEncumbrance */
     , (100152,  15,          1) /* StackUnitValue */
     , (100152,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100152,  19,          1) /* Value */
     , (100152,  33,          1) /* Bonded - Bonded */
     , (100152,  91,        100) /* MaxStructure */
	 , (100152,  92,        100) /* Structure */
     , (100152,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100152,  94,      35215) /* TargetType - Jewelry, Misc, Gem, RedirectableItemEnchantmentTarget */
	 , (100152, 105,        100) /* ItemWorkmanship */
     , (100152, 131,         60) /* MaterialType - Gold */
     , (100152, 151,          9) /* HookType - Floor, Yard */
	 , (100152, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100152,  22, True ) /* Inscribable */
     , (100152,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100152,   1, 'Salvaged Gold') /* Name */
     , (100152,  14, 'Apply this material to a treasure-generated item to raise the item''s value by 25%.') /* Use */
     , (100152,  15, 'A bar of gold material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100152,   1, 0x02000181) /* Setup */
     , (100152,   3, 0x20000014) /* SoundTable */
     , (100152,   6, 0x04000BEF) /* PaletteBase */
     , (100152,   7, 0x100003CE) /* ClothingBase */
     , (100152,   8, 0x0600102C) /* Icon */
     , (100152,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100152,  50, 0x060026CC) /* IconOverlay */;
