DELETE FROM `weenie` WHERE `class_Id` = 100107;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100107, 'custommaterialsapphire', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100107,   1,        128) /* ItemType - Misc */
     , (100107,   3,          4) /* PaletteTemplate - Brown */
     , (100107,   5,         10) /* EncumbranceVal */
     , (100107,  11,        100) /* MaxStackSize */
     , (100107,  12,          1) /* StackSize */
     , (100107,  13,         10) /* StackUnitEncumbrance */
     , (100107,  15,          1) /* StackUnitValue */
     , (100107,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100107,  19,          1) /* Value */
     , (100107,  33,          1) /* Bonded - Bonded */
     , (100107,  91,        100) /* MaxStructure */
	 , (100107,  92,        100) /* Structure */
     , (100107,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100107,  94, 1140850688) /* TargetType - CraftAlchemyIntermediate, TinkeringMaterial */
	 , (100107, 105,        100) /* ItemWorkmanship */
     , (100107, 131,         39) /* MaterialType - Sapphire */
     , (100107, 151,          9) /* HookType - Floor, Yard */
	 , (100107, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100107,  22, True ) /* Inscribable */
     , (100107,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100107,   1, 'Salvaged Sapphire') /* Name */
     , (100107,  14, 'Apply this material to a Minor, Moderate or Major Armature to prepare it. Then apply this material to the prepared Armature. This Armature can then be used on a magical loot-generated Trinket to add Minor, Moderate or Major Augmented Mana. This also increases the Spellcraft and Arcane Lore of the trinket by 25.') /* Use */
     , (100107,  15, 'Chips of sapphire material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100107,   1, 0x02000181) /* Setup */
     , (100107,   3, 0x20000014) /* SoundTable */
     , (100107,   6, 0x04000BEF) /* PaletteBase */
     , (100107,   7, 0x100003CE) /* ClothingBase */
     , (100107,   8, 0x0600102C) /* Icon */
     , (100107,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100107,  50, 0x06002711) /* IconOverlay */;
