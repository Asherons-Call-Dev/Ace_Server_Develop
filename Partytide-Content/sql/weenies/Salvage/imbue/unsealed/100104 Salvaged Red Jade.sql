DELETE FROM `weenie` WHERE `class_Id` = 100104;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100104, 'custommaterialredjade', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100104,   1,        128) /* ItemType - Misc */
     , (100104,   3,          2) /* PaletteTemplate - Blue */
     , (100104,   5,         10) /* EncumbranceVal */
     , (100104,  11,        100) /* MaxStackSize */
     , (100104,  12,          1) /* StackSize */
     , (100104,  13,         10) /* StackUnitEncumbrance */
     , (100104,  15,          1) /* StackUnitValue */
     , (100104,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100104,  19,          1) /* Value */
     , (100104,  33,          1) /* Bonded - Bonded */
     , (100104,  91,        100) /* MaxStructure */
	 , (100104,  92,        100) /* Structure */
     , (100104,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100104,  94,          8) /* TargetType - Jewelry */
	 , (100104, 105,        100) /* ItemWorkmanship */
     , (100104, 131,         36) /* MaterialType - RedJade */
     , (100104, 151,          9) /* HookType - Floor, Yard */
	 , (100104, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100104,  22, True ) /* Inscribable */
     , (100104,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100104,   1, 'Salvaged Red Jade') /* Name */
     , (100104,  14, 'Apply this material to a piece of magical treasure-generated jewelry to imbue the target with Minor Health Gain. This will also raise the Arcane Lore difficulty and the Spellcraft of the piece by 25.') /* Use */
     , (100104,  15, 'Chips of red jade material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100104,   1, 0x02000181) /* Setup */
     , (100104,   3, 0x20000014) /* SoundTable */
     , (100104,   6, 0x04000BEF) /* PaletteBase */
     , (100104,   7, 0x100003CE) /* ClothingBase */
     , (100104,   8, 0x0600102C) /* Icon */
     , (100104,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100104,  50, 0x0600270D) /* IconOverlay */;
