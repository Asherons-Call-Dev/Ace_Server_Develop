DELETE FROM `weenie` WHERE `class_Id` = 100073;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100073, 'custommaterialsandstone', 44, '2021-11-01 00:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100073,   1,        128) /* ItemType - Misc */
     , (100073,   3,          4) /* PaletteTemplate - Brown */
     , (100073,   5,         10) /* EncumbranceVal */
     , (100073,  11,        100) /* MaxStackSize */
     , (100073,  12,          1) /* StackSize */
     , (100073,  13,         10) /* StackUnitEncumbrance */
     , (100073,  15,          1) /* StackUnitValue */
     , (100073,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100073,  19,          1) /* Value */
     , (100073,  33,          1) /* Bonded - Bonded */
     , (100073,  91,        100) /* MaxStructure */
	 , (100073,  92,        100) /* Structure */
     , (100073,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100073,  94,      35215) /* TargetType - Jewelry, Misc, Gem, RedirectableItemEnchantmentTarget */
	 , (100073, 105,        100) /* ItemWorkmanship */
     , (100073, 131,         70) /* MaterialType - Sandstone */
     , (100073, 151,          9) /* HookType - Floor, Yard */
	 , (100073, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100073,  22, True ) /* Inscribable */
     , (100073,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100073,   1, 'Salvaged Sandstone') /* Name */
     , (100073,  14, 'Apply this material to a treasure-generated item in order to remove that item''s "Retained" status.') /* Use */
     , (100073,  15, 'A brick of sandstone material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100073,   1, 0x02000181) /* Setup */
     , (100073,   3, 0x20000014) /* SoundTable */
     , (100073,   6, 0x04000BEF) /* PaletteBase */
     , (100073,   7, 0x100003CE) /* ClothingBase */
     , (100073,   8, 0x0600102C) /* Icon */
     , (100073,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100073,  50, 0x06002710) /* IconOverlay */;
