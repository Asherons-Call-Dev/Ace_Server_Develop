DELETE FROM `weenie` WHERE `class_Id` = 100076;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100076, 'custommaterialbronze', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100076,   1,        128) /* ItemType - Misc */
     , (100076,   3,         13) /* PaletteTemplate - Purple */
     , (100076,   5,         10) /* EncumbranceVal */
     , (100076,  11,        100) /* MaxStackSize */
     , (100076,  12,          1) /* StackSize */
     , (100076,  13,         10) /* StackUnitEncumbrance */
     , (100076,  15,          1) /* StackUnitValue */
     , (100076,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100076,  19,          1) /* Value */
     , (100076,  33,          1) /* Bonded - Bonded */
     , (100076,  91,        100) /* MaxStructure */
	 , (100076,  92,        100) /* Structure */
     , (100076,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100076,  94,          6) /* TargetType - Vestements */
	 , (100076, 105,        100) /* ItemWorkmanship */
     , (100076, 131,         58) /* MaterialType - Bronze */
     , (100076, 151,          9) /* HookType - Floor, Yard */
	 , (100076, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100076,  22, True ) /* Inscribable */
     , (100076,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100076,   1, 'Salvaged Bronze') /* Name */
     , (100076,  14, 'Apply this material to treasure-generated armor to increase the armor''s protection against slashing by 0.2.') /* Use */
     , (100076,  15, 'A bar of bronze material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100076,   1, 0x02000181) /* Setup */
     , (100076,   3, 0x20000014) /* SoundTable */
     , (100076,   6, 0x04000BEF) /* PaletteBase */
     , (100076,   7, 0x100003CE) /* ClothingBase */
     , (100076,   8, 0x0600102C) /* Icon */
     , (100076,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100076,  50, 0x060026CA) /* IconOverlay */;
