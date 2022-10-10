DELETE FROM `weenie` WHERE `class_Id` = 100109;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100109, 'custommaterialsilver', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100109,   1,        128) /* ItemType - Misc */
     , (100109,   3,          8) /* PaletteTemplate - Green */
     , (100109,   5,         10) /* EncumbranceVal */
     , (100109,  11,        100) /* MaxStackSize */
     , (100109,  12,          1) /* StackSize */
     , (100109,  13,         10) /* StackUnitEncumbrance */
     , (100109,  15,          1) /* StackUnitValue */
     , (100109,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100109,  19,          1) /* Value */
     , (100109,  33,          1) /* Bonded - Bonded */
     , (100109,  91,        100) /* MaxStructure */
	 , (100109,  92,        100) /* Structure */
     , (100109,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100109,  94,          6) /* TargetType - Vestements */
	 , (100109, 105,        100) /* ItemWorkmanship */
     , (100109, 131,         63) /* MaterialType - Silver */
     , (100109, 151,          9) /* HookType - Floor, Yard */
	 , (100109, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100109,  22, True ) /* Inscribable */
     , (100109,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100109,   1, 'Salvaged Silver') /* Name */
     , (100109,  14, 'Apply this material to a magical, treasure-generated item with a Melee Defense activation requirement to change that requirement into an appropriate Missile Defense requirement.') /* Use */
     , (100109,  15, 'A bar of silver material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100109,   1, 0x02000181) /* Setup */
     , (100109,   3, 0x20000014) /* SoundTable */
     , (100109,   6, 0x04000BEF) /* PaletteBase */
     , (100109,   7, 0x100003CE) /* ClothingBase */
     , (100109,   8, 0x0600102C) /* Icon */
     , (100109,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100109,  50, 0x06002715) /* IconOverlay */;
