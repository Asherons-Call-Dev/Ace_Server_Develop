DELETE FROM `weenie` WHERE `class_Id` = 100082;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100082, 'custommaterialamber', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100082,   1,        128) /* ItemType - Misc */
     , (100082,   3,          4) /* PaletteTemplate - Brown */
     , (100082,   5,         10) /* EncumbranceVal */
     , (100082,  11,        100) /* MaxStackSize */
     , (100082,  12,          1) /* StackSize */
     , (100082,  13,         10) /* StackUnitEncumbrance */
     , (100082,  15,          1) /* StackUnitValue */
     , (100082,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100082,  19,          1) /* Value */
     , (100082,  33,          1) /* Bonded - Bonded */
     , (100082,  91,        100) /* MaxStructure */
	 , (100082,  92,        100) /* Structure */
     , (100082,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100082,  94, 1140850688) /* TargetType - CraftAlchemyIntermediate, TinkeringMaterial */
	 , (100082, 105,        100) /* ItemWorkmanship */
     , (100082, 131,         11) /* MaterialType - Amber */
     , (100082, 151,          9) /* HookType - Floor, Yard */
	 , (100082, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100082,  22, True ) /* Inscribable */
     , (100082,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100082,   1, 'Salvaged Amber') /* Name */
     , (100082,  14, 'Apply this material to a Minor, Moderate or Major Armature to prepare it. Then apply this material to the prepared Armature. This Armature can then be used on a magical loot-generated Trinket to add Minor, Moderate or Major Augmented Stamina. This also increases the Spellcraft and Arcane Lore of the trinket by 25.') /* Use */
     , (100082,  15, 'Chips of Amber material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100082,   1, 0x02000181) /* Setup */
     , (100082,   3, 0x20000014) /* SoundTable */
     , (100082,   6, 0x04000BEF) /* PaletteBase */
     , (100082,   7, 0x100003CE) /* ClothingBase */
     , (100082,   8, 0x0600102C) /* Icon */
     , (100082,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100082,  50, 0x060026EC) /* IconOverlay */;
