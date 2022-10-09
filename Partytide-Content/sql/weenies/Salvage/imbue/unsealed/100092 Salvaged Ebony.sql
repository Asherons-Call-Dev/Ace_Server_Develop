DELETE FROM `weenie` WHERE `class_Id` = 100092;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100092, 'custommaterialebony', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100092,   1,        128) /* ItemType - Misc */
     , (100092,   3,          8) /* PaletteTemplate - Green */
     , (100092,   5,         10) /* EncumbranceVal */
     , (100092,  11,        100) /* MaxStackSize */
     , (100092,  12,          1) /* StackSize */
     , (100092,  13,         10) /* StackUnitEncumbrance */
     , (100092,  15,          1) /* StackUnitValue */
     , (100092,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100092,  19,          1) /* Value */
     , (100092,  33,          1) /* Bonded - Bonded */
     , (100092,  91,        100) /* MaxStructure */
	 , (100092,  92,        100) /* Structure */
     , (100092,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100092,  94,      35215) /* TargetType - Jewelry, Misc, Gem, RedirectableItemEnchantmentTarget */
	 , (100092, 105,        100) /* ItemWorkmanship */
     , (100092, 131,         73) /* MaterialType - Ebony */
     , (100092, 151,          9) /* HookType - Floor, Yard */
	 , (100092, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100092,  22, True ) /* Inscribable */
     , (100092,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100092,   1, 'Salvaged Ebony') /* Name */
     , (100092,  14, 'Apply this material to a magical, treasure-generated item with a heritage activation requirement to change that activation requirement to Gharu''ndim.') /* Use */
     , (100092,  15, 'A bundle of ebony material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100092,   1, 0x02000181) /* Setup */
     , (100092,   3, 0x20000014) /* SoundTable */
     , (100092,   6, 0x04000BEF) /* PaletteBase */
     , (100092,   7, 0x100003CE) /* ClothingBase */
     , (100092,   8, 0x0600102C) /* Icon */
     , (100092,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100092,  50, 0x060026F7) /* IconOverlay */;
