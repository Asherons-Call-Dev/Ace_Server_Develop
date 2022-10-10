DELETE FROM `weenie` WHERE `class_Id` = 100069;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100069, 'custommaterialivory', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100069,   1,        128) /* ItemType - Misc */
     , (100069,   3,         77) /* PaletteTemplate - BlueGreen */
     , (100069,   5,         10) /* EncumbranceVal */
     , (100069,  11,        100) /* MaxStackSize */
     , (100069,  12,          1) /* StackSize */
     , (100069,  13,         10) /* StackUnitEncumbrance */
     , (100069,  15,          1) /* StackUnitValue */
     , (100069,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100069,  19,          1) /* Value */
     , (100069,  33,          1) /* Bonded - Bonded */
     , (100069,  91,        100) /* MaxStructure */
     , (100069,  92,        100) /* Structure */
     , (100069,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100069,  94,      35215) /* TargetType - Jewelry, Misc, Gem, RedirectableItemEnchantmentTarget */
     , (100069, 105,        100) /* ItemWorkmanship */
     , (100069, 131,         51) /* MaterialType - Ivory */
     , (100069, 151,          9) /* HookType - Floor, Yard */
     , (100069, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100069,  22, True ) /* Inscribable */
     , (100069,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100069,   1, 'Salvaged Ivory') /* Name */
     , (100069,  14, 'Apply this material to any of a set of specific quest items in order to unattune it from your soul. Note that this action will also cause it to only be wieldable by you. Applying this material does not require a tinkering skill, does not add a tinker to the target''s count, and cannot destroy the target.') /* Use */
     , (100069,  15, 'Shavings of ivory material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100069,   1, 0x02000181) /* Setup */
     , (100069,   3, 0x20000014) /* SoundTable */
     , (100069,   6, 0x04000BEF) /* PaletteBase */
     , (100069,   7, 0x100003CE) /* ClothingBase */
     , (100069,   8, 0x0600102C) /* Icon */
     , (100069,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100069,  50, 0x060026FF) /* IconOverlay */;
