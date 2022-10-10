DELETE FROM `weenie` WHERE `class_Id` = 100078;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100078, 'custommaterialreedsharkhide', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100078,   1,        128) /* ItemType - Misc */
     , (100078,   3,         13) /* PaletteTemplate - Purple */
     , (100078,   5,         10) /* EncumbranceVal */
     , (100078,  11,        100) /* MaxStackSize */
     , (100078,  12,          1) /* StackSize */
     , (100078,  13,         10) /* StackUnitEncumbrance */
     , (100078,  15,          1) /* StackUnitValue */
     , (100078,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100078,  19,          1) /* Value */
     , (100078,  33,          1) /* Bonded - Bonded */
     , (100078,  91,        100) /* MaxStructure */
	 , (100078,  92,        100) /* Structure */
     , (100078,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100078,  94,          6) /* TargetType - Vestements */
	 , (100078, 105,        100) /* ItemWorkmanship */
     , (100078, 131,         55) /* MaterialType - ReedSharkHide */
     , (100078, 151,          9) /* HookType - Floor, Yard */
	 , (100078, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100078,  22, True ) /* Inscribable */
     , (100078,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100078,   1, 'Salvaged Reedshark Hide') /* Name */
     , (100078,  14, 'Apply this material to treasure-generated armor to increase the armor''s protection against lightning by 0.4.') /* Use */
     , (100078,  15, 'A strip of reedshark hide material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100078,   1, 0x02000181) /* Setup */
     , (100078,   3, 0x20000014) /* SoundTable */
     , (100078,   6, 0x04000BEF) /* PaletteBase */
     , (100078,   7, 0x100003CE) /* ClothingBase */
     , (100078,   8, 0x0600102C) /* Icon */
     , (100078,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100078,  50, 0x060026D4) /* IconOverlay */;
