DELETE FROM `weenie` WHERE `class_Id` = 100075;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100075, 'custommaterialarmoredillohide', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100075,   1,        128) /* ItemType - Misc */
     , (100075,   3,         13) /* PaletteTemplate - Purple */
     , (100075,   5,         10) /* EncumbranceVal */
     , (100075,  11,        100) /* MaxStackSize */
     , (100075,  12,          1) /* StackSize */
     , (100075,  13,         10) /* StackUnitEncumbrance */
     , (100075,  15,          1) /* StackUnitValue */
     , (100075,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100075,  19,          1) /* Value */
     , (100075,  33,          1) /* Bonded - Bonded */
     , (100075,  91,        100) /* MaxStructure */
	 , (100075,  92,        100) /* Structure */
     , (100075,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100075,  94,          6) /* TargetType - Vestements */
	 , (100075, 105,        100) /* ItemWorkmanship */
     , (100075, 131,         53) /* MaterialType - ArmoredilloHide */
     , (100075, 151,          9) /* HookType - Floor, Yard */
	 , (100075, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100075,  22, True ) /* Inscribable */
     , (100075,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100075,   1, 'Salvaged Armoredillo Hide') /* Name */
     , (100075,  14, 'Apply this material to treasure-generated armor to increase the armor''s protection against acid by 0.4.') /* Use */
     , (100075,  15, 'A strip of armoredillo hide material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100075,   1, 0x02000181) /* Setup */
     , (100075,   3, 0x20000014) /* SoundTable */
     , (100075,   6, 0x04000BEF) /* PaletteBase */
     , (100075,   7, 0x100003CE) /* ClothingBase */
     , (100075,   8, 0x0600102C) /* Icon */
     , (100075,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100075,  50, 0x060026C8) /* IconOverlay */;
