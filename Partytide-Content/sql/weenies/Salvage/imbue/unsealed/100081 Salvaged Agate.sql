DELETE FROM `weenie` WHERE `class_Id` = 100081;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100081, 'custommaterialagate', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100081,   1,        128) /* ItemType - Misc */
     , (100081,   3,          2) /* PaletteTemplate - Blue */
     , (100081,   5,         10) /* EncumbranceVal */
     , (100081,  11,        100) /* MaxStackSize */
     , (100081,  12,          1) /* StackSize */
     , (100081,  13,         10) /* StackUnitEncumbrance */
     , (100081,  15,          1) /* StackUnitValue */
     , (100081,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100081,  19,          1) /* Value */
     , (100081,  33,          1) /* Bonded - Bonded */
     , (100081,  91,        100) /* MaxStructure */
	 , (100081,  92,        100) /* Structure */
     , (100081,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100081,  94,          8) /* TargetType - Jewelry */
	 , (100081, 105,        100) /* ItemWorkmanship */
     , (100081, 131,         10) /* MaterialType - Agate */
     , (100081, 151,          9) /* HookType - Floor, Yard */
	 , (100081, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100081,  22, True ) /* Inscribable */
     , (100081,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100081,   1, 'Salvaged Agate') /* Name */
     , (100081,  14, 'Apply this material to a piece of magical treasure-generated jewelry to imbue the target with Minor Focus. This will also raise the Arcane Lore difficulty and the Spellcraft of the piece by 25.') /* Use */
     , (100081,  15, 'Chips of agate material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100081,   1, 0x02000181) /* Setup */
     , (100081,   3, 0x20000014) /* SoundTable */
     , (100081,   6, 0x04000BEF) /* PaletteBase */
     , (100081,   7, 0x100003CE) /* ClothingBase */
     , (100081,   8, 0x0600102C) /* Icon */
     , (100081,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100081,  50, 0x060026EB) /* IconOverlay */;
