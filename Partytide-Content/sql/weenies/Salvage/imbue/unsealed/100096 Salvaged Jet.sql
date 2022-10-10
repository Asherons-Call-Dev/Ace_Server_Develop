DELETE FROM `weenie` WHERE `class_Id` = 100096;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100096, 'custommaterialjet', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100096,   1,        128) /* ItemType - Misc */
     , (100096,   3,         14) /* PaletteTemplate - Red */
     , (100096,   5,         10) /* EncumbranceVal */
     , (100096,  11,        100) /* MaxStackSize */
     , (100096,  12,          1) /* StackSize */
     , (100096,  13,         10) /* StackUnitEncumbrance */
     , (100096,  15,          1) /* StackUnitValue */
     , (100096,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100096,  19,          1) /* Value */
     , (100096,  33,          1) /* Bonded - Bonded */
     , (100096,  91,        100) /* MaxStructure */
	 , (100096,  92,        100) /* Structure */
     , (100096,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100096,  94,      33025) /* TargetType - WeaponOrCaster */
	 , (100096, 105,        100) /* ItemWorkmanship */
     , (100096, 131,         27) /* MaterialType - Jet */
     , (100096, 151,          9) /* HookType - Floor, Yard */
	 , (100096, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100096,  22, True ) /* Inscribable */
     , (100096,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100096,   1, 'Salvaged Jet') /* Name */
     , (100096,  14, 'Apply this material to a treasure-generated weapon or magic-casting implement to imbue the target with Lightning Rending. Lightning Rending gives the weapon the ability to make its opponent vulnerable to lightning attacks. The amount of vulnerability depends on the attack skill of the wielder. This effect does not stack with Lightning Vulnerability spells. ') /* Use */
     , (100096,  15, 'Chips of jet material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100096,   1, 0x02000181) /* Setup */
     , (100096,   3, 0x20000014) /* SoundTable */
     , (100096,   6, 0x04000BEF) /* PaletteBase */
     , (100096,   7, 0x100003CE) /* ClothingBase */
     , (100096,   8, 0x0600102C) /* Icon */
     , (100096,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100096,  50, 0x06002700) /* IconOverlay */;
