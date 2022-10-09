DELETE FROM `weenie` WHERE `class_Id` = 100080;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100080, 'custommaterialmarble', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100080,   1,        128) /* ItemType - Misc */
     , (100080,   3,         13) /* PaletteTemplate - Purple */
     , (100080,   5,         10) /* EncumbranceVal */
     , (100080,  11,        100) /* MaxStackSize */
     , (100080,  12,          1) /* StackSize */
     , (100080,  13,         10) /* StackUnitEncumbrance */
     , (100080,  15,          1) /* StackUnitValue */
     , (100080,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100080,  19,          1) /* Value */
     , (100080,  33,          1) /* Bonded - Bonded */
     , (100080,  91,        100) /* MaxStructure */
	 , (100080,  92,        100) /* Structure */
     , (100080,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100080,  94,          6) /* TargetType - Vestements */
	 , (100080, 105,        100) /* ItemWorkmanship */
     , (100080, 131,         68) /* MaterialType - Marble */
     , (100080, 151,          9) /* HookType - Floor, Yard */
	 , (100080, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100080,  22, True ) /* Inscribable */
     , (100080,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100080,   1, 'Salvaged Marble') /* Name */
     , (100080,  14, 'Apply this material to treasure-generated armor to increase the armor''s protection against bludgeoning by 0.2.') /* Use */
     , (100080,  15, 'A brick of marble material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100080,   1, 0x02000181) /* Setup */
     , (100080,   3, 0x20000014) /* SoundTable */
     , (100080,   6, 0x04000BEF) /* PaletteBase */
     , (100080,   7, 0x100003CE) /* ClothingBase */
     , (100080,   8, 0x0600102C) /* Icon */
     , (100080,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100080,  50, 0x060026D1) /* IconOverlay */;
