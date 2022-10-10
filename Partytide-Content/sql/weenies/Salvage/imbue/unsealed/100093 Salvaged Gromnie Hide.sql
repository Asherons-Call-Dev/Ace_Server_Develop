DELETE FROM `weenie` WHERE `class_Id` = 100093;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100093, 'custommaterialgromniehide', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100093,   1,        128) /* ItemType - Misc */
     , (100093,   3,          4) /* PaletteTemplate - Brown */
     , (100093,   5,         10) /* EncumbranceVal */
     , (100093,  11,        100) /* MaxStackSize */
     , (100093,  12,          1) /* StackSize */
     , (100093,  13,         10) /* StackUnitEncumbrance */
     , (100093,  15,          1) /* StackUnitValue */
     , (100093,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100093,  19,          1) /* Value */
     , (100093,  33,          1) /* Bonded - Bonded */
     , (100093,  91,        100) /* MaxStructure */
	 , (100093,  92,        100) /* Structure */
     , (100093,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100093,  94, 1140850688) /* TargetType - CraftAlchemyIntermediate, TinkeringMaterial */
	 , (100093, 105,        100) /* ItemWorkmanship */
     , (100093, 131,         54) /* MaterialType - GromnieHide */
     , (100093, 151,          9) /* HookType - Floor, Yard */
	 , (100093, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100093,  22, True ) /* Inscribable */
     , (100093,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100093,   1, 'Salvaged Gromnie Hide') /* Name */
     , (100093,  14, 'Apply this material to a Minor, Moderate or Major Armature to prepare it. Then apply this material to the prepared Armature. This Armature can then be used on a magical loot-generated Trinket to add Minor, Moderate or Major Augmented Damage Reduction. This also increases the Spellcraft and Arcane Lore of the trinket by 25.') /* Use */
     , (100093,  15, 'A strip of gromnie hide material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100093,   1, 0x02000181) /* Setup */
     , (100093,   3, 0x20000014) /* SoundTable */
     , (100093,   6, 0x04000BEF) /* PaletteBase */
     , (100093,   7, 0x100003CE) /* ClothingBase */
     , (100093,   8, 0x0600102C) /* Icon */
     , (100093,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100093,  50, 0x060026FC) /* IconOverlay */;
