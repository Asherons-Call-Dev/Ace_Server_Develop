DELETE FROM `weenie` WHERE `class_Id` = 100066;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100066, 'custommaterialvelvet', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100066,   1,        128) /* ItemType - Misc */
     , (100066,   3,         14) /* PaletteTemplate - Red */
     , (100066,   5,         10) /* EncumbranceVal */
     , (100066,  11,        100) /* MaxStackSize */
     , (100066,  12,          1) /* StackSize */
     , (100066,  13,         10) /* StackUnitEncumbrance */
     , (100066,  15,          1) /* StackUnitValue */
     , (100066,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100066,  19,          1) /* Value */
     , (100066,  33,          1) /* Bonded - Bonded */
     , (100066,  91,        100) /* MaxStructure */
	 , (100066,  92,        100) /* Structure */
     , (100066,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100066,  94,        257) /* TargetType - Weapon */
	 , (100066, 105,        100) /* ItemWorkmanship */
     , (100066, 131,          7) /* MaterialType - Velvet */
     , (100066, 151,          9) /* HookType - Floor, Yard */
	 , (100066, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100066,  22, True ) /* Inscribable */
     , (100066,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100066,   1, 'Salvaged Velvet') /* Name */
     , (100066,  14, 'Apply this material to a treasure-generated weapon to increase the weapon''s attack skill bonus by 1%.') /* Use */
     , (100066,  15, 'A bolt of velvet material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100066,   1, 0x02000181) /* Setup */
     , (100066,   3, 0x20000014) /* SoundTable */
     , (100066,   6, 0x04000BEF) /* PaletteBase */
     , (100066,   7, 0x100003CE) /* ClothingBase */
     , (100066,   8, 0x0600102C) /* Icon */
     , (100066,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100066,  50, 0x060026D6) /* IconOverlay */;
