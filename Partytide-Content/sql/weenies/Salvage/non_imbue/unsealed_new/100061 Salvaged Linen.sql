DELETE FROM `weenie` WHERE `class_Id` = 100061;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100061, 'custommateriallinen', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100061,   1,        128) /* ItemType - Misc */
     , (100061,   3,          8) /* PaletteTemplate - Green */
     , (100061,   5,         10) /* EncumbranceVal */
     , (100061,  11,        100) /* MaxStackSize */
     , (100061,  12,          1) /* StackSize */
     , (100061,  13,         10) /* StackUnitEncumbrance */
     , (100061,  15,          1) /* StackUnitValue */
     , (100061,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100061,  19,          1) /* Value */
     , (100061,  33,          1) /* Bonded - Bonded */
     , (100061,  91,        100) /* MaxStructure */
	 , (100061,  92,        100) /* Structure */
     , (100061,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100061,  94,      35215) /* TargetType - Jewelry, Misc, Gem, RedirectableItemEnchantmentTarget */
	 , (100061, 105,        100) /* ItemWorkmanship */
     , (100061, 131,          4) /* MaterialType - Linen */
     , (100061, 151,          9) /* HookType - Floor, Yard */
	 , (100061, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100061,  22, True ) /* Inscribable */
     , (100061,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100061,   1, 'Salvaged Linen') /* Name */
     , (100061,  14, 'Apply this material to a treasure-generated item to reduce the item''s burden by 25%.') /* Use */
     , (100061,  15, 'A bolt of linen material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100061,   1, 0x02000181) /* Setup */
     , (100061,   3, 0x20000014) /* SoundTable */
     , (100061,   6, 0x04000BEF) /* PaletteBase */
     , (100061,   7, 0x100003CE) /* ClothingBase */
     , (100061,   8, 0x0600102C) /* Icon */
     , (100061,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100061,  50, 0x060026CF) /* IconOverlay */;
