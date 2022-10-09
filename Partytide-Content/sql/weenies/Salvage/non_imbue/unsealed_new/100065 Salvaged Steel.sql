DELETE FROM `weenie` WHERE `class_Id` = 100065;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100065, 'custommaterialsteel', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100065,   1,        128) /* ItemType - Misc */
     , (100065,   3,         13) /* PaletteTemplate - Purple */
     , (100065,   5,         10) /* EncumbranceVal */
     , (100065,  11,        100) /* MaxStackSize */
     , (100065,  12,          1) /* StackSize */
     , (100065,  13,         10) /* StackUnitEncumbrance */
     , (100065,  15,          1) /* StackUnitValue */
     , (100065,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100065,  19,          1) /* Value */
     , (100065,  33,          1) /* Bonded - Bonded */
     , (100065,  91,        100) /* MaxStructure */
	 , (100065,  92,        100) /* Structure */
     , (100065,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100065,  94,          6) /* TargetType - Vestements */
	 , (100065, 105,        100) /* ItemWorkmanship */
     , (100065, 131,         64) /* MaterialType - Steel */
     , (100065, 151,          9) /* HookType - Floor, Yard */
	 , (100065, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100065,  22, True ) /* Inscribable */
     , (100065,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100065,   1, 'Salvaged Steel') /* Name */
     , (100065,  14, 'Apply this material to treasure-generated armor to increase the armor''s armor level by 20. This material cannot be used on Covenant Armor.') /* Use */
     , (100065,  15, 'A bar of steel material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100065,   1, 0x02000181) /* Setup */
     , (100065,   3, 0x20000014) /* SoundTable */
     , (100065,   6, 0x04000BEF) /* PaletteBase */
     , (100065,   7, 0x100003CE) /* ClothingBase */
     , (100065,   8, 0x0600102C) /* Icon */
     , (100065,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100065,  50, 0x060026D5) /* IconOverlay */;
