DELETE FROM `weenie` WHERE `class_Id` = 100074;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100074, 'custommaterialalabaster', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100074,   1,        128) /* ItemType - Misc */
     , (100074,   3,         13) /* PaletteTemplate - Purple */
     , (100074,   5,         10) /* EncumbranceVal */
     , (100074,  11,        100) /* MaxStackSize */
     , (100074,  12,          1) /* StackSize */
     , (100074,  13,         10) /* StackUnitEncumbrance */
     , (100074,  15,          1) /* StackUnitValue */
     , (100074,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100074,  19,          1) /* Value */
     , (100074,  33,          1) /* Bonded - Bonded */
     , (100074,  91,        100) /* MaxStructure */
	 , (100074,  92,        100) /* Structure */
     , (100074,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100074,  94,          6) /* TargetType - Vestements */
	 , (100074, 105,        100) /* ItemWorkmanship */
     , (100074, 131,         66) /* MaterialType - Alabaster */
     , (100074, 151,          9) /* HookType - Floor, Yard */
	 , (100074, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100074,  22, True ) /* Inscribable */
     , (100074,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100074,   1, 'Salvaged Alabaster') /* Name */
     , (100074,  14, 'Apply this material to treasure-generated armor to increase the armor''s protection against piercing by 0.2.') /* Use */
     , (100074,  15, 'A brick of alabaster material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100074,   1, 0x02000181) /* Setup */
     , (100074,   3, 0x20000014) /* SoundTable */
     , (100074,   6, 0x04000BEF) /* PaletteBase */
     , (100074,   7, 0x100003CE) /* ClothingBase */
     , (100074,   8, 0x0600102C) /* Icon */
     , (100074,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100074,  50, 0x060026C7) /* IconOverlay */;
