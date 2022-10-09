DELETE FROM `weenie` WHERE `class_Id` = 100100;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100100, 'custommaterialperidot', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100100,   1,        128) /* ItemType - Misc */
     , (100100,   3,         13) /* PaletteTemplate - Purple */
     , (100100,   5,         10) /* EncumbranceVal */
     , (100100,  11,        100) /* MaxStackSize */
     , (100100,  12,          1) /* StackSize */
     , (100100,  13,         10) /* StackUnitEncumbrance */
     , (100100,  15,          1) /* StackUnitValue */
     , (100100,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100100,  19,          1) /* Value */
     , (100100,  33,          1) /* Bonded - Bonded */
     , (100100,  91,        100) /* MaxStructure */
	 , (100100,  92,        100) /* Structure */
     , (100100,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100100,  94,          6) /* TargetType - Vestements */
	 , (100100, 105,        100) /* ItemWorkmanship */
     , (100100, 131,         34) /* MaterialType - Peridot */
     , (100100, 151,          9) /* HookType - Floor, Yard */
	 , (100100, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100100,  22, True ) /* Inscribable */
     , (100100,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100100,   1, 'Salvaged Peridot') /* Name */
     , (100100,  14, 'Apply this material to treasure-generated armor to imbue the target with a +1 bonus to Melee Defense.') /* Use */
     , (100100,  15, 'Chips of peridot material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100100,   1, 0x02000181) /* Setup */
     , (100100,   3, 0x20000014) /* SoundTable */
     , (100100,   6, 0x04000BEF) /* PaletteBase */
     , (100100,   7, 0x100003CE) /* ClothingBase */
     , (100100,   8, 0x0600102C) /* Icon */
     , (100100,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100100,  50, 0x06002709) /* IconOverlay */;
