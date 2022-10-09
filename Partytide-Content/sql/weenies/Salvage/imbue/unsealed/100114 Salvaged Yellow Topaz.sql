DELETE FROM `weenie` WHERE `class_Id` = 100114;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100114, 'custommaterialyellowtopaz', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100114,   1,        128) /* ItemType - Misc */
     , (100114,   3,         13) /* PaletteTemplate - Purple */
     , (100114,   5,         10) /* EncumbranceVal */
     , (100114,  11,        100) /* MaxStackSize */
     , (100114,  12,          1) /* StackSize */
     , (100114,  13,         10) /* StackUnitEncumbrance */
     , (100114,  15,          1) /* StackUnitValue */
     , (100114,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100114,  19,          1) /* Value */
     , (100114,  33,          1) /* Bonded - Bonded */
     , (100114,  91,        100) /* MaxStructure */
	 , (100114,  92,        100) /* Structure */
     , (100114,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100114,  94,          6) /* TargetType - Vestements */
	 , (100114, 105,        100) /* ItemWorkmanship */
     , (100114, 131,         49) /* MaterialType - YellowTopaz */
     , (100114, 151,          9) /* HookType - Floor, Yard */
	 , (100114, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100114,  22, True ) /* Inscribable */
     , (100114,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100114,   1, 'Salvaged Yellow Topaz') /* Name */
     , (100114,  14, 'Apply this material to treasure-generated armor to imbue the target with a +1 bonus to Missile Defense.') /* Use */
     , (100114,  15, 'Chips of yellow topaz material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100114,   1, 0x02000181) /* Setup */
     , (100114,   3, 0x20000014) /* SoundTable */
     , (100114,   6, 0x04000BEF) /* PaletteBase */
     , (100114,   7, 0x100003CE) /* ClothingBase */
     , (100114,   8, 0x0600102C) /* Icon */
     , (100114,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100114,  50, 0x06002720) /* IconOverlay */;
