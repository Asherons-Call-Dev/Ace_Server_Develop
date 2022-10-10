DELETE FROM `weenie` WHERE `class_Id` = 100108;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100108, 'custommaterialsilk', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100108,   1,        128) /* ItemType - Misc */
     , (100108,   3,          8) /* PaletteTemplate - Green */
     , (100108,   5,         10) /* EncumbranceVal */
     , (100108,  11,        100) /* MaxStackSize */
     , (100108,  12,          1) /* StackSize */
     , (100108,  13,         10) /* StackUnitEncumbrance */
     , (100108,  15,          1) /* StackUnitValue */
     , (100108,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100108,  19,          1) /* Value */
     , (100108,  33,          1) /* Bonded - Bonded */
     , (100108,  91,        100) /* MaxStructure */
	 , (100108,  92,        100) /* Structure */
     , (100108,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100108,  94,      33035) /* TargetType - Armor, Jewelry, WeaponOrCaster */
	 , (100108, 105,        100) /* ItemWorkmanship */
     , (100108, 131,          6) /* MaterialType - Silk */
     , (100108, 151,          9) /* HookType - Floor, Yard */
	 , (100108, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100108,  22, True ) /* Inscribable */
     , (100108,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100108,   1, 'Salvaged Silk') /* Name */
     , (100108,  14, 'Apply this material to a magical, treasure-generated item with an allegiance rank activation requirement to remove the rank requirement. In exchange, the item will gain an Arcane Lore difficulty equal to the its Spellcraft.') /* Use */
     , (100108,  15, 'A bolt of silk material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100108,   1, 0x02000181) /* Setup */
     , (100108,   3, 0x20000014) /* SoundTable */
     , (100108,   6, 0x04000BEF) /* PaletteBase */
     , (100108,   7, 0x100003CE) /* ClothingBase */
     , (100108,   8, 0x0600102C) /* Icon */
     , (100108,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100108,  50, 0x06002714) /* IconOverlay */;
