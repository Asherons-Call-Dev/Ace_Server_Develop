DELETE FROM `weenie` WHERE `class_Id` = 100102;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100102, 'custommaterialpyreal', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100102,   1,        128) /* ItemType - Misc */
     , (100102,   3,          4) /* PaletteTemplate - Brown */
     , (100102,   5,         10) /* EncumbranceVal */
     , (100102,  11,        100) /* MaxStackSize */
     , (100102,  12,          1) /* StackSize */
     , (100102,  13,         10) /* StackUnitEncumbrance */
     , (100102,  15,          1) /* StackUnitValue */
     , (100102,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100102,  19,          1) /* Value */
     , (100102,  33,          1) /* Bonded - Bonded */
     , (100102,  91,        100) /* MaxStructure */
	 , (100102,  92,        100) /* Structure */
     , (100102,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100102,  94, 1140850688) /* TargetType - CraftAlchemyIntermediate, TinkeringMaterial */
	 , (100102, 105,        100) /* ItemWorkmanship */
     , (100102, 131,         62) /* MaterialType - Pyreal */
     , (100102, 151,          9) /* HookType - Floor, Yard */
	 , (100102, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100102,  22, True ) /* Inscribable */
     , (100102,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100102,   1, 'Salvaged Pyreal') /* Name */
     , (100102,  14, 'Apply this material to a Minor, Moderate or Major Armature to prepare it. Then apply this material to the prepared Armature. This Armature can then be used on a magical loot-generated Trinket to add Minor, Moderate or Major Augmented Understanding. This also increases the Spellcraft and Arcane Lore of the trinket by 25.') /* Use */
     , (100102,  15, 'Chips of Pyreal material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100102,   1, 0x02000181) /* Setup */
     , (100102,   3, 0x20000014) /* SoundTable */
     , (100102,   6, 0x04000BEF) /* PaletteBase */
     , (100102,   7, 0x100003CE) /* ClothingBase */
     , (100102,   8, 0x0600102C) /* Icon */
     , (100102,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100102,  50, 0x0600270B) /* IconOverlay */;
