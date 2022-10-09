DELETE FROM `weenie` WHERE `class_Id` = 100085;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100085, 'custommaterialblackgarnet', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100085,   1,        128) /* ItemType - Misc */
     , (100085,   3,         14) /* PaletteTemplate - Red */
     , (100085,   5,         10) /* EncumbranceVal */
     , (100085,  11,        100) /* MaxStackSize */
     , (100085,  12,          1) /* StackSize */
     , (100085,  13,         10) /* StackUnitEncumbrance */
     , (100085,  15,          1) /* StackUnitValue */
     , (100085,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100085,  19,          1) /* Value */
     , (100085,  33,          1) /* Bonded - Bonded */
     , (100085,  91,        100) /* MaxStructure */
	 , (100085,  92,        100) /* Structure */
     , (100085,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100085,  94,      33025) /* TargetType - WeaponOrCaster */
	 , (100085, 105,        100) /* ItemWorkmanship */
     , (100085, 131,         15) /* MaterialType - BlackGarnet */
     , (100085, 151,          9) /* HookType - Floor, Yard */
	 , (100085, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100085,  22, True ) /* Inscribable */
     , (100085,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100085,   1, 'Salvaged Black Garnet') /* Name */
     , (100085,  14, 'Apply this material to a treasure-generated weapon or magic-casting implement to imbue the target with Pierce Rending. Pierce Rending gives the weapon the ability to make its opponent vulnerable to piercing attacks. The amount of vulnerability depends on the attack skill of the wielder. This effect does not stack with Piercing Vulnerability spells. ') /* Use */
     , (100085,  15, 'Chips of black garnet material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100085,   1, 0x02000181) /* Setup */
     , (100085,   3, 0x20000014) /* SoundTable */
     , (100085,   6, 0x04000BEF) /* PaletteBase */
     , (100085,   7, 0x100003CE) /* ClothingBase */
     , (100085,   8, 0x0600102C) /* Icon */
     , (100085,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100085,  50, 0x060026F0) /* IconOverlay */;
