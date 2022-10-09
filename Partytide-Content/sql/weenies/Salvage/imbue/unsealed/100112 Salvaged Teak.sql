DELETE FROM `weenie` WHERE `class_Id` = 100112;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100112, 'custommaterialteak', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100112,   1,        128) /* ItemType - Misc */
     , (100112,   3,          8) /* PaletteTemplate - Green */
     , (100112,   5,         10) /* EncumbranceVal */
     , (100112,  11,        100) /* MaxStackSize */
     , (100112,  12,          1) /* StackSize */
     , (100112,  13,         10) /* StackUnitEncumbrance */
     , (100112,  15,          1) /* StackUnitValue */
     , (100112,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100112,  19,          1) /* Value */
     , (100112,  33,          1) /* Bonded - Bonded */
     , (100112,  91,        100) /* MaxStructure */
	 , (100112,  92,        100) /* Structure */
     , (100112,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100112,  94,      35215) /* TargetType - Jewelry, Misc, Gem, RedirectableItemEnchantmentTarget */
	 , (100112, 105,        100) /* ItemWorkmanship */
     , (100112, 131,         77) /* MaterialType - Teak */
     , (100112, 151,          9) /* HookType - Floor, Yard */
	 , (100112, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100112,  22, True ) /* Inscribable */
     , (100112,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100112,   1, 'Salvaged Teak') /* Name */
     , (100112,  14, 'Apply this material to a magical, treasure-generated item with a heritage activation requirement to change that activation requirement to Aluvian.') /* Use */
     , (100112,  15, 'A bundle of teak material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100112,   1, 0x02000181) /* Setup */
     , (100112,   3, 0x20000014) /* SoundTable */
     , (100112,   6, 0x04000BEF) /* PaletteBase */
     , (100112,   7, 0x100003CE) /* ClothingBase */
     , (100112,   8, 0x0600102C) /* Icon */
     , (100112,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100112,  50, 0x06002718) /* IconOverlay */;
