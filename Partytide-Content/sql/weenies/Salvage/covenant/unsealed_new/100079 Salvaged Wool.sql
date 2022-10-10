DELETE FROM `weenie` WHERE `class_Id` = 100079;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100079, 'custommaterialwool', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100079,   1,        128) /* ItemType - Misc */
     , (100079,   3,         13) /* PaletteTemplate - Purple */
     , (100079,   5,         10) /* EncumbranceVal */
     , (100079,  11,        100) /* MaxStackSize */
     , (100079,  12,          1) /* StackSize */
     , (100079,  13,         10) /* StackUnitEncumbrance */
     , (100079,  15,          1) /* StackUnitValue */
     , (100079,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100079,  19,          1) /* Value */
     , (100079,  33,          1) /* Bonded - Bonded */
     , (100079,  91,        100) /* MaxStructure */
	 , (100079,  92,        100) /* Structure */
     , (100079,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100079,  94,          6) /* TargetType - Vestements */
	 , (100079, 105,        100) /* ItemWorkmanship */
     , (100079, 131,          8) /* MaterialType - Wool */
     , (100079, 151,          9) /* HookType - Floor, Yard */
	 , (100079, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100079,  22, True ) /* Inscribable */
     , (100079,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100079,   1, 'Salvaged Wool') /* Name */
     , (100079,  14, 'Apply this material to treasure-generated armor to increase the armor''s protection against cold by 0.4.') /* Use */
     , (100079,  15, 'A bolt of wool material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100079,   1, 0x02000181) /* Setup */
     , (100079,   3, 0x20000014) /* SoundTable */
     , (100079,   6, 0x04000BEF) /* PaletteBase */
     , (100079,   7, 0x100003CE) /* ClothingBase */
     , (100079,   8, 0x0600102C) /* Icon */
     , (100079,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100079,  50, 0x060026D7) /* IconOverlay */;
