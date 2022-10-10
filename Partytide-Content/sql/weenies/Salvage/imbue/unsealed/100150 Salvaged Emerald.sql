DELETE FROM `weenie` WHERE `class_Id` = 100150;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100150, 'custommaterialemerald', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100150,   1,        128) /* ItemType - Misc */
     , (100150,   3,         14) /* PaletteTemplate - Red */
     , (100150,   5,         10) /* EncumbranceVal */
     , (100150,  11,        100) /* MaxStackSize */
     , (100150,  12,          1) /* StackSize */
     , (100150,  13,         10) /* StackUnitEncumbrance */
     , (100150,  15,          1) /* StackUnitValue */
     , (100150,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100150,  19,         10) /* Value */
     , (100150,  33,          1) /* Bonded - Bonded */
     , (100150,  91,        100) /* MaxStructure */
	 , (100150,  92,        100) /* Structure */
     , (100150,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100150,  94,      33025) /* TargetType - WeaponOrCaster */
	 , (100150, 105,        100) /* ItemWorkmanship */
     , (100150, 131,         21) /* MaterialType - Emerald */
     , (100150, 151,          9) /* HookType - Floor, Yard */
	 , (100150, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100150,  22, True ) /* Inscribable */
     , (100150,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100150,   1, 'Salvaged Emerald') /* Name */
     , (100150,  14, 'Apply this material to a treasure-generated weapon or magic-casting implement to imbue the target with Acid Rending. Acid Rending gives the weapon the ability to make its opponent vulnerable to acid attacks. The amount of vulnerability depends on the attack skill of the wielder. This effect does not stack with Acid Vulnerability spells. ') /* Use */
     , (100150,  15, 'Chips of emerald material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100150,   1, 0x02000181) /* Setup */
     , (100150,   3, 0x20000014) /* SoundTable */
     , (100150,   6, 0x04000BEF) /* PaletteBase */
     , (100150,   7, 0x100003CE) /* ClothingBase */
     , (100150,   8, 0x0600102C) /* Icon */
     , (100150,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100150,  50, 0x060026F8) /* IconOverlay */;
