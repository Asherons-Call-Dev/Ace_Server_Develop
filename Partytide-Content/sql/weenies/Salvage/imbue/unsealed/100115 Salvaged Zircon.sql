DELETE FROM `weenie` WHERE `class_Id` = 100115;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100115, 'custommaterialzircon', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100115,   1,        128) /* ItemType - Misc */
     , (100115,   3,         13) /* PaletteTemplate - Purple */
     , (100115,   5,         10) /* EncumbranceVal */
     , (100115,  11,        100) /* MaxStackSize */
     , (100115,  12,          1) /* StackSize */
     , (100115,  13,         10) /* StackUnitEncumbrance */
     , (100115,  15,          1) /* StackUnitValue */
     , (100115,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100115,  19,          1) /* Value */
     , (100115,  33,          1) /* Bonded - Bonded */
     , (100115,  91,        100) /* MaxStructure */
	 , (100115,  92,        100) /* Structure */
     , (100115,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100115,  94,          6) /* TargetType - Vestements */
	 , (100115, 105,        100) /* ItemWorkmanship */
     , (100115, 131,         50) /* MaterialType - Zircon */
     , (100115, 151,          9) /* HookType - Floor, Yard */
	 , (100115, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100115,  22, True ) /* Inscribable */
     , (100115,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100115,   1, 'Salvaged Zircon') /* Name */
     , (100115,  14, 'Apply this material to treasure-generated armor to imbue the target with a +1 bonus to Magic Defense.') /* Use */
     , (100115,  15, 'Chips of zircon material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100115,   1, 0x02000181) /* Setup */
     , (100115,   3, 0x20000014) /* SoundTable */
     , (100115,   6, 0x04000BEF) /* PaletteBase */
     , (100115,   7, 0x100003CE) /* ClothingBase */
     , (100115,   8, 0x0600102C) /* Icon */
     , (100115,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100115,  50, 0x06002721) /* IconOverlay */;
