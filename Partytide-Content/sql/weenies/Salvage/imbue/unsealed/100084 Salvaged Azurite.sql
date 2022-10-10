DELETE FROM `weenie` WHERE `class_Id` = 100084;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100084, 'custommaterialazurite', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100084,   1,        128) /* ItemType - Misc */
     , (100084,   3,          2) /* PaletteTemplate - Blue */
     , (100084,   5,         10) /* EncumbranceVal */
     , (100084,  11,        100) /* MaxStackSize */
     , (100084,  12,          1) /* StackSize */
     , (100084,  13,         10) /* StackUnitEncumbrance */
     , (100084,  15,          1) /* StackUnitValue */
     , (100084,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100084,  19,          1) /* Value */
     , (100084,  33,          1) /* Bonded - Bonded */
     , (100084,  91,        100) /* MaxStructure */
	 , (100084,  92,        100) /* Structure */
     , (100084,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100084,  94,          8) /* TargetType - Jewelry */
	 , (100084, 105,        100) /* ItemWorkmanship */
     , (100084, 131,         14) /* MaterialType - Azurite */
     , (100084, 150,        103) /* HookPlacement - Hook */
     , (100084, 151,          9) /* HookType - Floor, Yard */
	 , (100084, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100084,  22, True ) /* Inscribable */
     , (100084,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100084,   1, 'Salvaged Azurite') /* Name */
     , (100084,  14, 'Apply this material to a piece of magical treasure-generated jewelry to imbue the target with Wizard''s Intellect. This will also raise the Arcane Lore difficulty and the Spellcraft of the piece by 25.') /* Use */
     , (100084,  15, 'Chips of azurite material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100084,   1, 0x02000181) /* Setup */
     , (100084,   3, 0x20000014) /* SoundTable */
     , (100084,   6, 0x04000BEF) /* PaletteBase */
     , (100084,   7, 0x100003CE) /* ClothingBase */
     , (100084,   8, 0x0600102C) /* Icon */
     , (100084,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100084,  50, 0x060026EF) /* IconOverlay */;
