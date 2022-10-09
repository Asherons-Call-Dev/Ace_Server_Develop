DELETE FROM `weenie` WHERE `class_Id` = 100089;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100089, 'custommaterialcitrine', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100089,   1,        128) /* ItemType - Misc */
     , (100089,   3,          2) /* PaletteTemplate - Blue */
     , (100089,   5,         10) /* EncumbranceVal */
     , (100089,  11,        100) /* MaxStackSize */
     , (100089,  12,          1) /* StackSize */
     , (100089,  13,         10) /* StackUnitEncumbrance */
     , (100089,  15,          1) /* StackUnitValue */
     , (100089,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100089,  19,          1) /* Value */
     , (100089,  33,          1) /* Bonded - Bonded */
     , (100089,  91,        100) /* MaxStructure */
	 , (100089,  92,        100) /* Structure */
     , (100089,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100089,  94,          8) /* TargetType - Jewelry */
	 , (100089, 105,        100) /* ItemWorkmanship */
     , (100089, 131,         19) /* MaterialType - Citrine */
     , (100089, 150,        103) /* HookPlacement - Hook */
     , (100089, 151,          9) /* HookType - Floor, Yard */
	 , (100089, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100089,  22, True ) /* Inscribable */
     , (100089,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100089,   1, 'Salvaged Citrine') /* Name */
     , (100089,  14, 'Apply this material to a piece of magical treasure-generated jewelry to imbue the target with Minor Stamina Gain. This will also raise the Arcane Lore difficulty and the Spellcraft of the piece by 25.') /* Use */
     , (100089,  15, 'Chips of citrine material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100089,   1, 0x02000181) /* Setup */
     , (100089,   3, 0x20000014) /* SoundTable */
     , (100089,   6, 0x04000BEF) /* PaletteBase */
     , (100089,   7, 0x100003CE) /* ClothingBase */
     , (100089,   8, 0x0600102C) /* Icon */
     , (100089,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100089,  50, 0x060026F4) /* IconOverlay */;
