DELETE FROM `weenie` WHERE `class_Id` = 100086;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100086, 'custommaterialblackopal', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100086,   1,        128) /* ItemType - Misc */
     , (100086,   3,          2) /* PaletteTemplate - Blue */
     , (100086,   5,         10) /* EncumbranceVal */
     , (100086,  11,        100) /* MaxStackSize */
     , (100086,  12,          1) /* StackSize */
     , (100086,  13,         10) /* StackUnitEncumbrance */
     , (100086,  15,          1) /* StackUnitValue */
     , (100086,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100086,  19,          1) /* Value */
     , (100086,  33,          1) /* Bonded - Bonded */
     , (100086,  91,        100) /* MaxStructure */
	 , (100086,  92,        100) /* Structure */
     , (100086,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100086,  94,      33025) /* TargetType - WeaponOrCaster */
	 , (100086, 105,        100) /* ItemWorkmanship */
     , (100086, 131,         16) /* MaterialType - BlackOpal */
     , (100086, 151,          9) /* HookType - Floor, Yard */
	 , (100086, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100086,  22, True ) /* Inscribable */
     , (100086,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100086,   1, 'Salvaged Black Opal') /* Name */
     , (100086,  14, 'Apply this material to a treasure-generated weapon or magic-casting implement to imbue the target with Critical Strike. Critical Strike increases the chance that the item critically hits its opponent. The increase in chance depends on the attack skill of the wielder.') /* Use */
     , (100086,  15, 'Chips of black opal material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100086,   1, 0x02000181) /* Setup */
     , (100086,   3, 0x20000014) /* SoundTable */
     , (100086,   6, 0x04000BEF) /* PaletteBase */
     , (100086,   7, 0x100003CE) /* ClothingBase */
     , (100086,   8, 0x0600102C) /* Icon */
     , (100086,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100086,  50, 0x060026F1) /* IconOverlay */;
