DELETE FROM `weenie` WHERE `class_Id` = 100064;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100064, 'custommaterialpine', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100064,   1,        128) /* ItemType - Misc */
     , (100064,   3,          8) /* PaletteTemplate - Green */
     , (100064,   5,         10) /* EncumbranceVal */
     , (100064,  11,        100) /* MaxStackSize */
     , (100064,  12,          1) /* StackSize */
     , (100064,  13,         10) /* StackUnitEncumbrance */
     , (100064,  15,          1) /* StackUnitValue */
     , (100064,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100064,  19,          1) /* Value */
     , (100064,  33,          1) /* Bonded - Bonded */
     , (100064,  91,        100) /* MaxStructure */
	 , (100064,  92,        100) /* Structure */
     , (100064,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100064,  94,      35215) /* TargetType - Jewelry, Misc, Gem, RedirectableItemEnchantmentTarget */
	 , (100064, 105,        100) /* ItemWorkmanship */
     , (100064, 131,         76) /* MaterialType - Pine */
     , (100064, 151,          9) /* HookType - Floor, Yard */
	 , (100064, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100064,  22, True ) /* Inscribable */
     , (100064,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100064,   1, 'Salvaged Pine') /* Name */
     , (100064,  14, 'Apply this material to a treasure-generated item to reduce the item''s value by 25%.') /* Use */
     , (100064,  15, 'A bundle of pine material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100064,   1, 0x02000181) /* Setup */
     , (100064,   3, 0x20000014) /* SoundTable */
     , (100064,   6, 0x04000BEF) /* PaletteBase */
     , (100064,   7, 0x100003CE) /* ClothingBase */
     , (100064,   8, 0x0600102C) /* Icon */
     , (100064,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100064,  50, 0x060026D3) /* IconOverlay */;
