DELETE FROM `weenie` WHERE `class_Id` = 100098;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100098, 'custommateriallavenderjade', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100098,   1,        128) /* ItemType - Misc */
     , (100098,   3,          2) /* PaletteTemplate - Blue */
     , (100098,   5,         10) /* EncumbranceVal */
     , (100098,  11,        100) /* MaxStackSize */
     , (100098,  12,          1) /* StackSize */
     , (100098,  13,         10) /* StackUnitEncumbrance */
     , (100098,  15,          1) /* StackUnitValue */
     , (100098,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100098,  19,          1) /* Value */
     , (100098,  33,          1) /* Bonded - Bonded */
     , (100098,  91,        100) /* MaxStructure */
	 , (100098,  92,        100) /* Structure */
     , (100098,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100098,  94,          8) /* TargetType - Jewelry */
	 , (100098, 105,        100) /* ItemWorkmanship */
     , (100098, 131,         29) /* MaterialType - LavenderJade */
     , (100098, 151,          9) /* HookType - Floor, Yard */
	 , (100098, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100098,  22, True ) /* Inscribable */
     , (100098,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100098,   1, 'Salvaged Lavender Jade') /* Name */
     , (100098,  14, 'Apply this material to a piece of magical treasure-generated jewelry to imbue the target with Minor Mana Gain. This will also raise the Arcane Lore difficulty and the Spellcraft of the piece by 25.') /* Use */
     , (100098,  15, 'Chips of lavender jade material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100098,   1, 0x02000181) /* Setup */
     , (100098,   3, 0x20000014) /* SoundTable */
     , (100098,   6, 0x04000BEF) /* PaletteBase */
     , (100098,   7, 0x100003CE) /* ClothingBase */
     , (100098,   8, 0x0600102C) /* Icon */
     , (100098,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100098,  50, 0x06002702) /* IconOverlay */;
