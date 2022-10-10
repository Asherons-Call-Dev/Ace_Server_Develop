DELETE FROM `weenie` WHERE `class_Id` = 100090;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100090, 'custommaterialcopper', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100090,   1,        128) /* ItemType - Misc */
     , (100090,   3,          8) /* PaletteTemplate - Green */
     , (100090,   5,         10) /* EncumbranceVal */
     , (100090,  11,        100) /* MaxStackSize */
     , (100090,  12,          1) /* StackSize */
     , (100090,  13,         10) /* StackUnitEncumbrance */
     , (100090,  15,          1) /* StackUnitValue */
     , (100090,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100090,  19,          1) /* Value */
     , (100090,  33,          1) /* Bonded - Bonded */
     , (100090,  91,        100) /* MaxStructure */
	 , (100090,  92,        100) /* Structure */
     , (100090,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100090,  94,          6) /* TargetType - Vestements */
	 , (100090, 105,        100) /* ItemWorkmanship */
     , (100090, 131,         59) /* MaterialType - Copper */
     , (100090, 150,        103) /* HookPlacement - Hook */
     , (100090, 151,          9) /* HookType - Floor, Yard */
	 , (100090, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100090,  22, True ) /* Inscribable */
     , (100090,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100090,   1, 'Salvaged Copper') /* Name */
     , (100090,  14, 'Apply this material to a magical, treasure-generated item with a Missile Defense activation requirement to change that requirement into an appropriate Melee Defense requirement.') /* Use */
     , (100090,  15, 'A bar of copper material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100090,   1, 0x02000181) /* Setup */
     , (100090,   3, 0x20000014) /* SoundTable */
     , (100090,   6, 0x04000BEF) /* PaletteBase */
     , (100090,   7, 0x100003CE) /* ClothingBase */
     , (100090,   8, 0x0600102C) /* Icon */
     , (100090,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100090,  50, 0x060026F5) /* IconOverlay */;
