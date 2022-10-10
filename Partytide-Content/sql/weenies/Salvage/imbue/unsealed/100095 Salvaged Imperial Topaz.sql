DELETE FROM `weenie` WHERE `class_Id` = 100095;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100095, 'custommaterialimperialtopaz', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100095,   1,        128) /* ItemType - Misc */
     , (100095,   3,         14) /* PaletteTemplate - Red */
     , (100095,   5,         10) /* EncumbranceVal */
     , (100095,  11,        100) /* MaxStackSize */
     , (100095,  12,          1) /* StackSize */
     , (100095,  13,         10) /* StackUnitEncumbrance */
     , (100095,  15,          1) /* StackUnitValue */
     , (100095,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100095,  19,          1) /* Value */
     , (100095,  33,          1) /* Bonded - Bonded */
     , (100095,  91,        100) /* MaxStructure */
	 , (100095,  92,        100) /* Structure */
     , (100095,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100095,  94,      33025) /* TargetType - WeaponOrCaster */
	 , (100095, 105,        100) /* ItemWorkmanship */
     , (100095, 131,         26) /* MaterialType - ImperialTopaz */
     , (100095, 151,          9) /* HookType - Floor, Yard */
	 , (100095, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100095,  22, True ) /* Inscribable */
     , (100095,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100095,   1, 'Salvaged Imperial Topaz') /* Name */
     , (100095,  14, 'Apply this material to a treasure-generated weapon or magic-casting implement to imbue the target with Slash Rending. Slash Rending gives the weapon the ability to make its opponent vulnerable to slashing attacks. The amount of vulnerability depends on the attack skill of the wielder. This effect does not stack with Slashing Vulnerability spells. ') /* Use */
     , (100095,  15, 'Chips of imperial topaz material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100095,   1, 0x02000181) /* Setup */
     , (100095,   3, 0x20000014) /* SoundTable */
     , (100095,   6, 0x04000BEF) /* PaletteBase */
     , (100095,   7, 0x100003CE) /* ClothingBase */
     , (100095,   8, 0x0600102C) /* Icon */
     , (100095,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100095,  50, 0x060026FE) /* IconOverlay */;
