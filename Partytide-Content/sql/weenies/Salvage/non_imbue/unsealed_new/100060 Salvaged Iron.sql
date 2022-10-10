DELETE FROM `weenie` WHERE `class_Id` = 100060;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100060, 'custommaterialiron', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100060,   1,        128) /* ItemType - Misc */
     , (100060,   3,         14) /* PaletteTemplate - Red */
     , (100060,   5,         10) /* EncumbranceVal */
     , (100060,  11,        100) /* MaxStackSize */
     , (100060,  12,          1) /* StackSize */
     , (100060,  13,         10) /* StackUnitEncumbrance */
     , (100060,  15,          1) /* StackUnitValue */
     , (100060,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100060,  19,          1) /* Value */
     , (100060,  33,          1) /* Bonded - Bonded */
     , (100060,  91,        100) /* MaxStructure */
	 , (100060,  92,        100) /* Structure */
     , (100060,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100060,  94,        257) /* TargetType - Weapon */
	 , (100060, 105,        100) /* ItemWorkmanship */
     , (100060, 131,         61) /* MaterialType - Iron */
     , (100060, 151,          9) /* HookType - Floor, Yard */
	 , (100060, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100060,  22, True ) /* Inscribable */
     , (100060,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100060,   1, 'Salvaged Iron') /* Name */
     , (100060,  14, 'Apply this material to a treasure-generated weapon to increase the weapon''s damage by 1.') /* Use */
     , (100060,  15, 'A bar of iron material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100060,   1, 0x02000181) /* Setup */
     , (100060,   3, 0x20000014) /* SoundTable */
     , (100060,   6, 0x04000BEF) /* PaletteBase */
     , (100060,   7, 0x100003CE) /* ClothingBase */
     , (100060,   8, 0x0600102C) /* Icon */
     , (100060,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100060,  50, 0x060026CE) /* IconOverlay */;
