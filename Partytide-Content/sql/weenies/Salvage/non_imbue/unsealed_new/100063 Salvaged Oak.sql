DELETE FROM `weenie` WHERE `class_Id` = 100063;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100063, 'custommaterialoak', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100063,   1,        128) /* ItemType - Misc */
     , (100063,   3,         14) /* PaletteTemplate - Red */
     , (100063,   5,         10) /* EncumbranceVal */
     , (100063,  11,        100) /* MaxStackSize */
     , (100063,  12,          1) /* StackSize */
     , (100063,  13,         10) /* StackUnitEncumbrance */
     , (100063,  15,          1) /* StackUnitValue */
     , (100063,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100063,  19,          1) /* Value */
     , (100063,  33,          1) /* Bonded - Bonded */
     , (100063,  91,        100) /* MaxStructure */
	 , (100063,  92,        100) /* Structure */
     , (100063,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100063,  94,        257) /* TargetType - Weapon */
	 , (100063, 105,        100) /* ItemWorkmanship */
     , (100063, 131,         75) /* MaterialType - Oak */
     , (100063, 151,          9) /* HookType - Floor, Yard */
	 , (100063, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100063,  22, True ) /* Inscribable */
     , (100063,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100063,   1, 'Salvaged Oak') /* Name */
     , (100063,  14, 'Apply this material to a treasure-generated weapon to decrease the weapon''s speed by 50.') /* Use */
     , (100063,  15, 'A bundle of oak material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100063,   1, 0x02000181) /* Setup */
     , (100063,   3, 0x20000014) /* SoundTable */
     , (100063,   6, 0x04000BEF) /* PaletteBase */
     , (100063,   7, 0x100003CE) /* ClothingBase */
     , (100063,   8, 0x0600102C) /* Icon */
     , (100063,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100063,  50, 0x060026D2) /* IconOverlay */;
