DELETE FROM `weenie` WHERE `class_Id` = 100111;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100111, 'custommaterialsunstone', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100111,   1,        128) /* ItemType - Misc */
     , (100111,   3,          2) /* PaletteTemplate - Blue */
     , (100111,   5,         10) /* EncumbranceVal */
     , (100111,  11,        100) /* MaxStackSize */
     , (100111,  12,          1) /* StackSize */
     , (100111,  13,         10) /* StackUnitEncumbrance */
     , (100111,  15,          1) /* StackUnitValue */
     , (100111,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100111,  19,          1) /* Value */
     , (100111,  33,          1) /* Bonded - Bonded */
     , (100111,  91,        100) /* MaxStructure */
	 , (100111,  92,        100) /* Structure */
     , (100111,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100111,  94,        257) /* TargetType - Weapon */
	 , (100111, 105,        100) /* ItemWorkmanship */
     , (100111, 131,         41) /* MaterialType - Sunstone */
     , (100111, 151,          9) /* HookType - Floor, Yard */
	 , (100111, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100111,  22, True ) /* Inscribable */
     , (100111,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100111,   1, 'Salvaged Sunstone') /* Name */
     , (100111,  14, 'Apply this material to a treasure-generated weapon to imbue the target with Armor Rending. Armor Rending gives the item the ability to ignore some of its opponent''s armor. The amount of armor it ignores depends on the attack skill of the wielder.') /* Use */
     , (100111,  15, 'Chips of sunstone material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100111,   1, 0x02000181) /* Setup */
     , (100111,   3, 0x20000014) /* SoundTable */
     , (100111,   6, 0x04000BEF) /* PaletteBase */
     , (100111,   7, 0x100003CE) /* ClothingBase */
     , (100111,   8, 0x0600102C) /* Icon */
     , (100111,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100111,  50, 0x06002717) /* IconOverlay */;
