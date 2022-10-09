DELETE FROM `weenie` WHERE `class_Id` = 100105;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100105, 'custommaterialrosequartz', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100105,   1,        128) /* ItemType - Misc */
     , (100105,   3,          2) /* PaletteTemplate - Blue */
     , (100105,   5,         10) /* EncumbranceVal */
     , (100105,  11,        100) /* MaxStackSize */
     , (100105,  12,          1) /* StackSize */
     , (100105,  13,         10) /* StackUnitEncumbrance */
     , (100105,  15,          1) /* StackUnitValue */
     , (100105,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100105,  19,          1) /* Value */
     , (100105,  33,          1) /* Bonded - Bonded */
     , (100105,  91,        100) /* MaxStructure */
	 , (100105,  92,        100) /* Structure */
     , (100105,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100105,  94,          8) /* TargetType - Jewelry */
	 , (100105, 105,        100) /* ItemWorkmanship */
     , (100105, 131,         37) /* MaterialType - RoseQuartz */
     , (100105, 151,          9) /* HookType - Floor, Yard */
	 , (100105, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100105,  22, True ) /* Inscribable */
     , (100105,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100105,   1, 'Salvaged Rose Quartz') /* Name */
     , (100105,  14, 'Apply this material to a piece of magical treasure-generated jewelry to imbue the target with Minor Quickness. This will also raise the Arcane Lore difficulty and the Spellcraft of the piece by 25.') /* Use */
     , (100105,  15, 'Chips of rose quartz material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100105,   1, 0x02000181) /* Setup */
     , (100105,   3, 0x20000014) /* SoundTable */
     , (100105,   6, 0x04000BEF) /* PaletteBase */
     , (100105,   7, 0x100003CE) /* ClothingBase */
     , (100105,   8, 0x0600102C) /* Icon */
     , (100105,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100105,  50, 0x0600270E) /* IconOverlay */;
