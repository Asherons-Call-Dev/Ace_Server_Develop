DELETE FROM `weenie` WHERE `class_Id` = 100077;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100077, 'custommaterialceramic', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100077,   1,        128) /* ItemType - Misc */
     , (100077,   3,         13) /* PaletteTemplate - Purple */
     , (100077,   5,         10) /* EncumbranceVal */
     , (100077,  11,        100) /* MaxStackSize */
     , (100077,  12,          1) /* StackSize */
     , (100077,  13,         10) /* StackUnitEncumbrance */
     , (100077,  15,          1) /* StackUnitValue */
     , (100077,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100077,  19,          1) /* Value */
     , (100077,  33,          1) /* Bonded - Bonded */
     , (100077,  91,        100) /* MaxStructure */
	 , (100077,  92,        100) /* Structure */
     , (100077,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100077,  94,          6) /* TargetType - Vestements */
	 , (100077, 105,        100) /* ItemWorkmanship */
     , (100077, 131,          1) /* MaterialType - Ceramic */
     , (100077, 151,          9) /* HookType - Floor, Yard */
	 , (100077, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100077,  22, True ) /* Inscribable */
     , (100077,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100077,   1, 'Salvaged Ceramic') /* Name */
     , (100077,  14, 'Apply this material to treasure-generated armor to increase the armor''s protection against fire by 0.4.') /* Use */
     , (100077,  15, 'A tile of ceramic material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100077,   1, 0x02000181) /* Setup */
     , (100077,   3, 0x20000014) /* SoundTable */
     , (100077,   6, 0x04000BEF) /* PaletteBase */
     , (100077,   7, 0x100003CE) /* ClothingBase */
     , (100077,   8, 0x0600102C) /* Icon */
     , (100077,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100077,  50, 0x060026CB) /* IconOverlay */;
