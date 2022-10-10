DELETE FROM `weenie` WHERE `class_Id` = 100072;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100072, 'custommaterialopal', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100072,   1,        128) /* ItemType - Misc */
     , (100072,   3,          2) /* PaletteTemplate - Blue */
     , (100072,   5,         10) /* EncumbranceVal */
     , (100072,  11,        100) /* MaxStackSize */
     , (100072,  12,          1) /* StackSize */
     , (100072,  13,         10) /* StackUnitEncumbrance */
     , (100072,  15,          1) /* StackUnitValue */
     , (100072,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100072,  19,          1) /* Value */
     , (100072,  33,          1) /* Bonded - Bonded */
     , (100072,  91,        100) /* MaxStructure */
	 , (100072,  92,        100) /* Structure */
     , (100072,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100072,  94,      32768) /* TargetType - Caster */
	 , (100072, 105,        100) /* ItemWorkmanship */
     , (100072, 131,         33) /* MaterialType - Opal */
     , (100072, 151,          9) /* HookType - Floor, Yard */
	 , (100072, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100072,  22, True ) /* Inscribable */
     , (100072,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100072,   1, 'Salvaged Opal') /* Name */
     , (100072,  14, 'Apply this material to a treasure-generated magic caster to increase the its mana conversion bonus by 1%.') /* Use */
     , (100072,  15, 'Chips of opal material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100072,   1, 0x02000181) /* Setup */
     , (100072,   3, 0x20000014) /* SoundTable */
     , (100072,   6, 0x04000BEF) /* PaletteBase */
     , (100072,   7, 0x100003CE) /* ClothingBase */
     , (100072,   8, 0x0600102C) /* Icon */
     , (100072,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100072,  50, 0x06002708) /* IconOverlay */;
