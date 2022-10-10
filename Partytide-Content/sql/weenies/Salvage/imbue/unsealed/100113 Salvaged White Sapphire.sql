DELETE FROM `weenie` WHERE `class_Id` = 100113;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100113, 'custommaterialwhitesapphire', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100113,   1,        128) /* ItemType - Misc */
     , (100113,   3,         14) /* PaletteTemplate - Red */
     , (100113,   5,         10) /* EncumbranceVal */
     , (100113,  11,        100) /* MaxStackSize */
     , (100113,  12,          1) /* StackSize */
     , (100113,  13,         10) /* StackUnitEncumbrance */
     , (100113,  15,          1) /* StackUnitValue */
     , (100113,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100113,  19,          1) /* Value */
     , (100113,  33,          1) /* Bonded - Bonded */
     , (100113,  91,        100) /* MaxStructure */
	 , (100113,  92,        100) /* Structure */
     , (100113,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100113,  94,      33025) /* TargetType - WeaponOrCaster */
	 , (100113, 105,        100) /* ItemWorkmanship */
     , (100113, 131,         47) /* MaterialType - WhiteSapphire */
     , (100113, 151,          9) /* HookType - Floor, Yard */
	 , (100113, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100113,  22, True ) /* Inscribable */
     , (100113,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100113,   1, 'Salvaged White Sapphire') /* Name */
     , (100113,  14, 'Apply this material to a treasure-generated weapon or magic-casting implement to imbue the target with Bludgeon Rending. Bludgeon Rending gives the weapon the ability to make its opponent vulnerable to bludgeoning attacks. The amount of vulnerability depends on the attack skill of the wielder. This effect does not stack with Bludgeoning Vulnerability spells. ') /* Use */
     , (100113,  15, 'Chips of white sapphire material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100113,   1, 0x02000181) /* Setup */
     , (100113,   3, 0x20000014) /* SoundTable */
     , (100113,   6, 0x04000BEF) /* PaletteBase */
     , (100113,   7, 0x100003CE) /* ClothingBase */
     , (100113,   8, 0x0600102C) /* Icon */
     , (100113,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100113,  50, 0x0600271E) /* IconOverlay */;
