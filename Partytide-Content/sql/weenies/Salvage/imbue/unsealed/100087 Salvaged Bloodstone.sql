DELETE FROM `weenie` WHERE `class_Id` = 100087;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100087, 'custommaterialbloodstone', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100087,   1,        128) /* ItemType - Misc */
     , (100087,   3,          2) /* PaletteTemplate - Blue */
     , (100087,   5,         10) /* EncumbranceVal */
     , (100087,  11,        100) /* MaxStackSize */
     , (100087,  12,          1) /* StackSize */
     , (100087,  13,         10) /* StackUnitEncumbrance */
     , (100087,  15,          1) /* StackUnitValue */
     , (100087,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100087,  19,          1) /* Value */
     , (100087,  33,          1) /* Bonded - Bonded */
     , (100087,  91,        100) /* MaxStructure */
	 , (100087,  92,        100) /* Structure */
     , (100087,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100087,  94,          8) /* TargetType - Jewelry */
	 , (100087, 105,        100) /* ItemWorkmanship */
     , (100087, 131,         17) /* MaterialType - Bloodstone */
     , (100087, 151,          9) /* HookType - Floor, Yard */
	 , (100087, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100087,  22, True ) /* Inscribable */
     , (100087,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100087,   1, 'Salvaged Bloodstone') /* Name */
     , (100087,  14, 'Apply this material to a piece of magical treasure-generated jewelry to imbue the target with Minor Endurance. This will also raise the Arcane Lore difficulty and the Spellcraft of the piece by 25.') /* Use */
     , (100087,  15, 'Chips of bloodstone material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100087,   1, 0x02000181) /* Setup */
     , (100087,   3, 0x20000014) /* SoundTable */
     , (100087,   6, 0x04000BEF) /* PaletteBase */
     , (100087,   7, 0x100003CE) /* ClothingBase */
     , (100087,   8, 0x0600102C) /* Icon */
     , (100087,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100087,  50, 0x060026F2) /* IconOverlay */;
