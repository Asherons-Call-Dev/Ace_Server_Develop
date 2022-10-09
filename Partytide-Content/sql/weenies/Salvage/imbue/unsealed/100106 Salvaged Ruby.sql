DELETE FROM `weenie` WHERE `class_Id` = 100106;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100106, 'custommaterialruby', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100106,   1,        128) /* ItemType - Misc */
     , (100106,   3,          4) /* PaletteTemplate - Brown */
     , (100106,   5,         10) /* EncumbranceVal */
     , (100106,  11,        100) /* MaxStackSize */
     , (100106,  12,          1) /* StackSize */
     , (100106,  13,         10) /* StackUnitEncumbrance */
     , (100106,  15,          1) /* StackUnitValue */
     , (100106,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100106,  19,          1) /* Value */
     , (100106,  33,          1) /* Bonded - Bonded */
     , (100106,  91,        100) /* MaxStructure */
	 , (100106,  92,        100) /* Structure */
     , (100106,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100106,  94, 1140850688) /* TargetType - CraftAlchemyIntermediate, TinkeringMaterial */
	 , (100106, 105,        100) /* ItemWorkmanship */
     , (100106, 131,         38) /* MaterialType - Ruby */
     , (100106, 151,          9) /* HookType - Floor, Yard */
	 , (100106, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100106,  22, True ) /* Inscribable */
     , (100106,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100106,   1, 'Salvaged Ruby') /* Name */
     , (100106,  14, 'Apply this material to a Minor, Moderate or Major Armature to prepare it. Then apply this material to the prepared Armature. This Armature can then be used on a magical loot-generated Trinket to add Minor, Moderate or Major Augmented Health. This also increases the Spellcraft and Arcane Lore of the trinket by 25.') /* Use */
     , (100106,  15, 'Chips of ruby material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100106,   1, 0x02000181) /* Setup */
     , (100106,   3, 0x20000014) /* SoundTable */
     , (100106,   6, 0x04000BEF) /* PaletteBase */
     , (100106,   7, 0x100003CE) /* ClothingBase */
     , (100106,   8, 0x0600102C) /* Icon */
     , (100106,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100106,  50, 0x0600270F) /* IconOverlay */;
