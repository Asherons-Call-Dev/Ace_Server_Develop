DELETE FROM `weenie` WHERE `class_Id` = 100070;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100070, 'custommaterialleather', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100070,   1,        128) /* ItemType - Misc */
     , (100070,   3,         77) /* PaletteTemplate - BlueGreen */
     , (100070,   5,         10) /* EncumbranceVal */
     , (100070,  11,        100) /* MaxStackSize */
     , (100070,  12,          1) /* StackSize */
     , (100070,  13,         10) /* StackUnitEncumbrance */
     , (100070,  15,          1) /* StackUnitValue */
     , (100070,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100070,  19,          1) /* Value */
     , (100070,  33,          1) /* Bonded - Bonded */
     , (100070,  91,        100) /* MaxStructure */
	 , (100070,  92,        100) /* Structure */
     , (100070,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100070,  94,      35215) /* TargetType - Jewelry, Misc, Gem, RedirectableItemEnchantmentTarget */
	 , (100070, 105,        100) /* ItemWorkmanship */
     , (100070, 131,         52) /* MaterialType - Leather */
     , (100070, 151,          9) /* HookType - Floor, Yard */
	 , (100070, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100070,  22, True ) /* Inscribable */
     , (100070,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100070,   1, 'Salvaged Leather') /* Name */
     , (100070,  14, 'Apply this material to a treasure-generated item in order to render that item "Retained". Retained items cannot be salvaged or sold to vendors. Applying this material does not require a tinkering skill, does not add a tinker to the target''s count, and cannot destroy the target.') /* Use */
     , (100070,  15, 'A strip of leather material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100070,   1, 0x02000181) /* Setup */
     , (100070,   3, 0x20000014) /* SoundTable */
     , (100070,   6, 0x04000BEF) /* PaletteBase */
     , (100070,   7, 0x100003CE) /* ClothingBase */
     , (100070,   8, 0x0600102C) /* Icon */
     , (100070,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100070,  50, 0x06002703) /* IconOverlay */;
