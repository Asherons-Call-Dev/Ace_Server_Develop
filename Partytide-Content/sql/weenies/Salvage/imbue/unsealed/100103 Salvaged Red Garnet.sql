DELETE FROM `weenie` WHERE `class_Id` = 100103;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100103, 'custommaterialredgarnet', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100103,   1,        128) /* ItemType - Misc */
     , (100103,   3,         14) /* PaletteTemplate - Red */
     , (100103,   5,         10) /* EncumbranceVal */
     , (100103,  11,        100) /* MaxStackSize */
     , (100103,  12,          1) /* StackSize */
     , (100103,  13,         10) /* StackUnitEncumbrance */
     , (100103,  15,          1) /* StackUnitValue */
     , (100103,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100103,  19,          1) /* Value */
     , (100103,  33,          1) /* Bonded - Bonded */
     , (100103,  91,        100) /* MaxStructure */
	 , (100103,  92,        100) /* Structure */
     , (100103,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100103,  94,      33025) /* TargetType - WeaponOrCaster */
	 , (100103, 105,        100) /* ItemWorkmanship */
     , (100103, 131,         35) /* MaterialType - RedGarnet */
     , (100103, 151,          9) /* HookType - Floor, Yard */
	 , (100103, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100103,  22, True ) /* Inscribable */
     , (100103,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100103,   1, 'Salvaged Red Garnet') /* Name */
     , (100103,  14, 'Apply this material to a treasure-generated weapon or magic-casting implement to imbue the target with Fire Rending. Fire Rending gives the weapon the ability to make its opponent vulnerable to fire attacks. The amount of vulnerability depends on the attack skill of the wielder. This effect does not stack with Fire Vulnerability spells. ') /* Use */
     , (100103,  15, 'Chips of red garnet material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100103,   1, 0x02000181) /* Setup */
     , (100103,   3, 0x20000014) /* SoundTable */
     , (100103,   6, 0x04000BEF) /* PaletteBase */
     , (100103,   7, 0x100003CE) /* ClothingBase */
     , (100103,   8, 0x0600102C) /* Icon */
     , (100103,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100103,  50, 0x0600270C) /* IconOverlay */;
