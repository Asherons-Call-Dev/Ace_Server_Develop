DELETE FROM `weenie` WHERE `class_Id` = 100094;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100094, 'custommaterialhematite', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100094,   1,        128) /* ItemType - Misc */
     , (100094,   3,          2) /* PaletteTemplate - Blue */
     , (100094,   5,         10) /* EncumbranceVal */
     , (100094,  11,        100) /* MaxStackSize */
     , (100094,  12,          1) /* StackSize */
     , (100094,  13,         10) /* StackUnitEncumbrance */
     , (100094,  15,          1) /* StackUnitValue */
     , (100094,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100094,  19,          1) /* Value */
     , (100094,  33,          1) /* Bonded - Bonded */
     , (100094,  91,        100) /* MaxStructure */
	 , (100094,  92,        100) /* Structure */
     , (100094,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100094,  94,          8) /* TargetType - Jewelry */
	 , (100094, 105,        100) /* ItemWorkmanship */
     , (100094, 131,         25) /* MaterialType - Hematite */
     , (100094, 151,          9) /* HookType - Floor, Yard */
	 , (100094, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100094,  22, True ) /* Inscribable */
     , (100094,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100094,   1, 'Salvaged Hematite') /* Name */
     , (100094,  14, 'Apply this material to a piece of magical treasure-generated jewelry to imbue the target with Warrior''s Vitality. This will also raise the Arcane Lore difficulty and the Spellcraft of the piece by 25.') /* Use */
     , (100094,  15, 'Chips of hematite material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100094,   1, 0x02000181) /* Setup */
     , (100094,   3, 0x20000014) /* SoundTable */
     , (100094,   6, 0x04000BEF) /* PaletteBase */
     , (100094,   7, 0x100003CE) /* ClothingBase */
     , (100094,   8, 0x0600102C) /* Icon */
     , (100094,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100094,  50, 0x060026FD) /* IconOverlay */;
