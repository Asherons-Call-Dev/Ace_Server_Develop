DELETE FROM `weenie` WHERE `class_Id` = 100097;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100097, 'custommateriallapislazuli', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100097,   1,        128) /* ItemType - Misc */
     , (100097,   3,          2) /* PaletteTemplate - Blue */
     , (100097,   5,         10) /* EncumbranceVal */
     , (100097,  11,        100) /* MaxStackSize */
     , (100097,  12,          1) /* StackSize */
     , (100097,  13,         10) /* StackUnitEncumbrance */
     , (100097,  15,          1) /* StackUnitValue */
     , (100097,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100097,  19,          1) /* Value */
     , (100097,  33,          1) /* Bonded - Bonded */
     , (100097,  91,        100) /* MaxStructure */
	 , (100097,  92,        100) /* Structure */
     , (100097,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100097,  94,          8) /* TargetType - Jewelry */
	 , (100097, 105,        100) /* ItemWorkmanship */
     , (100097, 131,         28) /* MaterialType - LapisLazuli */
     , (100097, 151,          9) /* HookType - Floor, Yard */
	 , (100097, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100097,  22, True ) /* Inscribable */
     , (100097,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100097,   1, 'Salvaged Lapis Lazuli') /* Name */
     , (100097,  14, 'Apply this material to a piece of magical treasure-generated jewelry to imbue the target with Minor Self. This will also raise the Arcane Lore difficulty and the Spellcraft of the piece by 25.') /* Use */
     , (100097,  15, 'Chips of lapis lazuli material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100097,   1, 0x02000181) /* Setup */
     , (100097,   3, 0x20000014) /* SoundTable */
     , (100097,   6, 0x04000BEF) /* PaletteBase */
     , (100097,   7, 0x100003CE) /* ClothingBase */
     , (100097,   8, 0x0600102C) /* Icon */
     , (100097,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100097,  50, 0x06002701) /* IconOverlay */;
