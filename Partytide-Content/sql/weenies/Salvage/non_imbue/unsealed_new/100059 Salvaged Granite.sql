DELETE FROM `weenie` WHERE `class_Id` = 100059;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100059, 'custommaterialgranite', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100059,   1,        128) /* ItemType - Misc */
     , (100059,   3,         14) /* PaletteTemplate - Red */
     , (100059,   5,         10) /* EncumbranceVal */
     , (100059,  11,        100) /* MaxStackSize */
     , (100059,  12,          1) /* StackSize */
     , (100059,  13,         10) /* StackUnitEncumbrance */
     , (100059,  15,          1) /* StackUnitValue */
     , (100059,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100059,  19,          1) /* Value */
     , (100059,  33,          1) /* Bonded - Bonded */
     , (100059,  91,        100) /* MaxStructure */
     , (100059,  92,        100) /* Structure */
     , (100059,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100059,  94,        257) /* TargetType - Weapon */
     , (100059, 105,        100) /* ItemWorkmanship */
     , (100059, 131,         67) /* MaterialType - Granite */
     , (100059, 151,          9) /* HookType - Floor, Yard */
     , (100059, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100059,  22, True ) /* Inscribable */
     , (100059,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100059,   1, 'Salvaged Granite') /* Name */
     , (100059,  14, 'Apply this material to a treasure-generated weapon to improve the weapon''s variance by 20%.') /* Use */
     , (100059,  15, 'A brick of granite material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100059,   1, 0x02000181) /* Setup */
     , (100059,   3, 0x20000014) /* SoundTable */
     , (100059,   6, 0x04000BEF) /* PaletteBase */
     , (100059,   7, 0x100003CE) /* ClothingBase */
     , (100059,   8, 0x0600102C) /* Icon */
     , (100059,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100059,  50, 0x060026CD) /* IconOverlay */;
