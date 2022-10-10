DELETE FROM `weenie` WHERE `class_Id` = 100067;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100067, 'custommaterialbrass', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100067,   1,        128) /* ItemType - Misc */
     , (100067,   3,         14) /* PaletteTemplate - Red */
     , (100067,   5,         10) /* EncumbranceVal */
     , (100067,  11,        100) /* MaxStackSize */
     , (100067,  12,          1) /* StackSize */
     , (100067,  13,         10) /* StackUnitEncumbrance */
     , (100067,  15,          1) /* StackUnitValue */
     , (100067,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100067,  19,          1) /* Value */
     , (100067,  33,          1) /* Bonded - Bonded */
     , (100067,  91,        100) /* MaxStructure */
	 , (100067,  92,        100) /* Structure */
     , (100067,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100067,  94,      33025) /* TargetType - WeaponOrCaster */
	 , (100067, 105,        100) /* ItemWorkmanship */
     , (100067, 131,         57) /* MaterialType - Brass */
     , (100067, 151,          9) /* HookType - Floor, Yard */
	 , (100067, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100067,  22, True ) /* Inscribable */
     , (100067,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100067,   1, 'Salvaged Brass') /* Name */
     , (100067,  14, 'Apply this material to a treasure-generated weapon to increase the weapon''s melee defense bonus by 1%.') /* Use */
     , (100067,  15, 'A bar of brass material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100067,   1, 0x02000181) /* Setup */
     , (100067,   3, 0x20000014) /* SoundTable */
     , (100067,   6, 0x04000BEF) /* PaletteBase */
     , (100067,   7, 0x100003CE) /* ClothingBase */
     , (100067,   8, 0x0600102C) /* Icon */
     , (100067,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100067,  50, 0x060026C9) /* IconOverlay */;
