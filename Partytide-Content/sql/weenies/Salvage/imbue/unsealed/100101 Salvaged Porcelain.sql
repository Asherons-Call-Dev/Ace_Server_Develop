DELETE FROM `weenie` WHERE `class_Id` = 100101;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100101, 'custommaterialporcelain', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100101,   1,        128) /* ItemType - Misc */
     , (100101,   3,          8) /* PaletteTemplate - Green */
     , (100101,   5,         10) /* EncumbranceVal */
     , (100101,  11,        100) /* MaxStackSize */
     , (100101,  12,          1) /* StackSize */
     , (100101,  13,         10) /* StackUnitEncumbrance */
     , (100101,  15,          1) /* StackUnitValue */
     , (100101,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100101,  19,          1) /* Value */
     , (100101,  33,          1) /* Bonded - Bonded */
     , (100101,  91,        100) /* MaxStructure */
	 , (100101,  92,        100) /* Structure */
     , (100101,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100101,  94,      35215) /* TargetType - Jewelry, Misc, Gem, RedirectableItemEnchantmentTarget */
	 , (100101, 105,        100) /* ItemWorkmanship */
     , (100101, 131,          2) /* MaterialType - Porcelain */
     , (100101, 151,          9) /* HookType - Floor, Yard */
	 , (100101, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100101,  22, True ) /* Inscribable */
     , (100101,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100101,   1, 'Salvaged Porcelain') /* Name */
     , (100101,  14, 'Apply this material to a magical, treasure-generated item with a heritage activation requirement to change that activation requirement to Sho.') /* Use */
     , (100101,  15, 'A tile of porcelain material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100101,   1, 0x02000181) /* Setup */
     , (100101,   3, 0x20000014) /* SoundTable */
     , (100101,   6, 0x04000BEF) /* PaletteBase */
     , (100101,   7, 0x100003CE) /* ClothingBase */
     , (100101,   8, 0x0600102C) /* Icon */
     , (100101,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100101,  50, 0x0600270A) /* IconOverlay */;
