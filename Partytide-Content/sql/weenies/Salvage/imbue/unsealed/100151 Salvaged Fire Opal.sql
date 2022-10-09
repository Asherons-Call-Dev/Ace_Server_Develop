DELETE FROM `weenie` WHERE `class_Id` = 100151;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100151, 'custommaterialfireopal', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100151,   1,        128) /* ItemType - Misc */
     , (100151,   3,          2) /* PaletteTemplate - Blue */
     , (100151,   5,         10) /* EncumbranceVal */
     , (100151,  11,        100) /* MaxStackSize */
     , (100151,  12,          1) /* StackSize */
     , (100151,  13,         10) /* StackUnitEncumbrance */
     , (100151,  15,          1) /* StackUnitValue */
     , (100151,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100151,  19,         10) /* Value */
     , (100151,  33,          1) /* Bonded - Bonded */
     , (100151,  91,        100) /* MaxStructure */
	 , (100151,  92,        100) /* Structure */
     , (100151,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100151,  94,      33025) /* TargetType - WeaponOrCaster */
	 , (100151, 105,        100) /* ItemWorkmanship */
     , (100151, 131,         22) /* MaterialType - FireOpal */
     , (100151, 151,          9) /* HookType - Floor, Yard */
	 , (100151, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100151,  22, True ) /* Inscribable */
     , (100151,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100151,   1, 'Salvaged Fire Opal') /* Name */
     , (100151,  14, 'Apply this material to a treasure-generated weapon or magic-casting implement to imbue the target with Crippling Blow. Crippling Blow increases the amount of damage that the item does when it critically hits its opponent. The amount of extra damage depends on the attack skill of the wielder.') /* Use */
     , (100151,  15, 'Chips of fire opal material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100151,   1, 0x02000181) /* Setup */
     , (100151,   3, 0x20000014) /* SoundTable */
     , (100151,   6, 0x04000BEF) /* PaletteBase */
     , (100151,   7, 0x100003CE) /* ClothingBase */
     , (100151,   8, 0x0600102C) /* Icon */
     , (100151,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100151,  50, 0x060026F9) /* IconOverlay */;
