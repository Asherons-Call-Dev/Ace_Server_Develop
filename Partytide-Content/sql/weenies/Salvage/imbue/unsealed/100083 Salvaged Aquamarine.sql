DELETE FROM `weenie` WHERE `class_Id` = 100083;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100083, 'custommaterialaquamarine', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100083,   1,        128) /* ItemType - Misc */
     , (100083,   3,         14) /* PaletteTemplate - Red */
     , (100083,   5,         10) /* EncumbranceVal */
     , (100083,  11,        100) /* MaxStackSize */
     , (100083,  12,          1) /* StackSize */
     , (100083,  13,         10) /* StackUnitEncumbrance */
     , (100083,  15,          1) /* StackUnitValue */
     , (100083,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100083,  19,          1) /* Value */
     , (100083,  33,          1) /* Bonded - Bonded */
     , (100083,  91,        100) /* MaxStructure */
	 , (100083,  92,        100) /* Structure */
     , (100083,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100083,  94,      33025) /* TargetType - WeaponOrCaster */
	 , (100083, 105,        100) /* ItemWorkmanship */
     , (100083, 131,         13) /* MaterialType - Aquamarine */
     , (100083, 151,          9) /* HookType - Floor, Yard */
	 , (100083, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100083,  22, True ) /* Inscribable */
     , (100083,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100083,   1, 'Salvaged Aquamarine') /* Name */
     , (100083,  14, 'Apply this material to a treasure-generated weapon or magic-casting implement to imbue the target with Cold Rending. Cold Rending gives the weapon the ability to make its opponent vulnerable to cold attacks. The amount of vulnerability depends on the attack skill of the wielder. This effect does not stack with Cold Vulnerability spells. ') /* Use */
     , (100083,  15, 'Chips of aquamarine material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100083,   1, 0x02000181) /* Setup */
     , (100083,   3, 0x20000014) /* SoundTable */
     , (100083,   6, 0x04000BEF) /* PaletteBase */
     , (100083,   7, 0x100003CE) /* ClothingBase */
     , (100083,   8, 0x0600102C) /* Icon */
     , (100083,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100083,  50, 0x060026EE) /* IconOverlay */;
