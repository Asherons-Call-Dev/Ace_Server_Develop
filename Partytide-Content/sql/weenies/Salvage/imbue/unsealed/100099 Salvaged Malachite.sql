DELETE FROM `weenie` WHERE `class_Id` = 100099;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100099, 'custommaterialmalachite', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100099,   1,        128) /* ItemType - Misc */
     , (100099,   3,          2) /* PaletteTemplate - Blue */
     , (100099,   5,         10) /* EncumbranceVal */
     , (100099,  11,        100) /* MaxStackSize */
     , (100099,  12,          1) /* StackSize */
     , (100099,  13,         10) /* StackUnitEncumbrance */
     , (100099,  15,          1) /* StackUnitValue */
     , (100099,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100099,  19,          1) /* Value */
     , (100099,  33,          1) /* Bonded - Bonded */
     , (100099,  91,        100) /* MaxStructure */
	 , (100099,  92,        100) /* Structure */
     , (100099,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100099,  94,          8) /* TargetType - Jewelry */
	 , (100099, 105,        100) /* ItemWorkmanship */
     , (100099, 131,         30) /* MaterialType - Malachite */
     , (100099, 151,          9) /* HookType - Floor, Yard */
	 , (100099, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100099,  22, True ) /* Inscribable */
     , (100099,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100099,   1, 'Salvaged Malachite') /* Name */
     , (100099,  14, 'Apply this material to a piece of magical treasure-generated jewelry to imbue the target with Warrior''s Vigor. This will also raise the Arcane Lore difficulty and the Spellcraft of the piece by 25.') /* Use */
     , (100099,  15, 'Chips of malachite material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100099,   1, 0x02000181) /* Setup */
     , (100099,   3, 0x20000014) /* SoundTable */
     , (100099,   6, 0x04000BEF) /* PaletteBase */
     , (100099,   7, 0x100003CE) /* ClothingBase */
     , (100099,   8, 0x0600102C) /* Icon */
     , (100099,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100099,  50, 0x06002704) /* IconOverlay */;
