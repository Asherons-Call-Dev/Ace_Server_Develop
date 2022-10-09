DELETE FROM `weenie` WHERE `class_Id` = 100088;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100088, 'custommaterialcarnelian', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100088,   1,        128) /* ItemType - Misc */
     , (100088,   3,          2) /* PaletteTemplate - Blue */
     , (100088,   5,         10) /* EncumbranceVal */
     , (100088,  11,        100) /* MaxStackSize */
     , (100088,  12,          1) /* StackSize */
     , (100088,  13,         10) /* StackUnitEncumbrance */
     , (100088,  15,          1) /* StackUnitValue */
     , (100088,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100088,  19,          1) /* Value */
     , (100088,  33,          1) /* Bonded - Bonded */
     , (100088,  91,        100) /* MaxStructure */
	 , (100088,  92,        100) /* Structure */
     , (100088,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100088,  94,          8) /* TargetType - Jewelry */
	 , (100088, 105,        100) /* ItemWorkmanship */
     , (100088, 131,         18) /* MaterialType - Carnelian */
     , (100088, 150,        103) /* HookPlacement - Hook */
     , (100088, 151,          9) /* HookType - Floor, Yard */
	 , (100088, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100088,  22, True ) /* Inscribable */
     , (100088,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100088,   1, 'Salvaged Carnelian') /* Name */
     , (100088,  14, 'Apply this material to a piece of magical treasure-generated jewelry to imbue the target with Minor Strength. This will also raise the Arcane Lore difficulty and the Spellcraft of the piece by 25.') /* Use */
     , (100088,  15, 'Chips of carnelian material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100088,   1, 0x02000181) /* Setup */
     , (100088,   3, 0x20000014) /* SoundTable */
     , (100088,   6, 0x04000BEF) /* PaletteBase */
     , (100088,   7, 0x100003CE) /* ClothingBase */
     , (100088,   8, 0x0600102C) /* Icon */
     , (100088,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100088,  50, 0x060026F3) /* IconOverlay */;
