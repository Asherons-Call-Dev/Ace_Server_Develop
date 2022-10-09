DELETE FROM `weenie` WHERE `class_Id` = 100091;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100091, 'custommaterialdiamond', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100091,   1,        128) /* ItemType - Misc */
     , (100091,   3,          4) /* PaletteTemplate - Brown */
     , (100091,   5,         10) /* EncumbranceVal */
     , (100091,  11,        100) /* MaxStackSize */
     , (100091,  12,          1) /* StackSize */
     , (100091,  13,         10) /* StackUnitEncumbrance */
     , (100091,  15,          1) /* StackUnitValue */
     , (100091,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100091,  19,          1) /* Value */
     , (100091,  33,          1) /* Bonded - Bonded */
     , (100091,  91,        100) /* MaxStructure */
	 , (100091,  92,        100) /* Structure */
     , (100091,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100091,  94, 1140850688) /* TargetType - CraftAlchemyIntermediate, TinkeringMaterial */
	 , (100091, 105,        100) /* ItemWorkmanship */
     , (100091, 131,         20) /* MaterialType - Diamond */
     , (100091, 150,        103) /* HookPlacement - Hook */
     , (100091, 151,          9) /* HookType - Floor, Yard */
	 , (100091, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100091,  22, True ) /* Inscribable */
     , (100091,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100091,   1, 'Salvaged Diamond') /* Name */
     , (100091,  14, 'Apply this material to a Minor, Moderate or Major Armature to prepare it. Then apply this material to the prepared Armature. This Armature can then be used on a magical loot-generated Trinket to add Minor, Moderate or Major Augmented Damage. This also increases the Spellcraft and Arcane Lore of the trinket by 25.') /* Use */
     , (100091,  15, 'Chips of Diamond material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100091,   1, 0x02000181) /* Setup */
     , (100091,   3, 0x20000014) /* SoundTable */
     , (100091,   6, 0x04000BEF) /* PaletteBase */
     , (100091,   7, 0x100003CE) /* ClothingBase */
     , (100091,   8, 0x0600102C) /* Icon */
     , (100091,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100091,  50, 0x060026F6) /* IconOverlay */;
