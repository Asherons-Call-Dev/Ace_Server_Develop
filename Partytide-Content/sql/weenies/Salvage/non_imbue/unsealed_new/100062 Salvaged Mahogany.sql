DELETE FROM `weenie` WHERE `class_Id` = 100062;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100062, 'custommaterialmahogany', 44, '2021-11-17 16:56:08') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100062,   1,        128) /* ItemType - Misc */
     , (100062,   3,         14) /* PaletteTemplate - Red */
     , (100062,   5,         10) /* EncumbranceVal */
     , (100062,  11,        100) /* MaxStackSize */
     , (100062,  12,          1) /* StackSize */
     , (100062,  13,         10) /* StackUnitEncumbrance */
     , (100062,  15,          1) /* StackUnitValue */
     , (100062,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100062,  19,          1) /* Value */
     , (100062,  33,          1) /* Bonded - Bonded */
     , (100062,  91,        100) /* MaxStructure */
	 , (100062,  92,        100) /* Structure */
     , (100062,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100062,  94,        256) /* TargetType - MissileWeapon */
	 , (100062, 105,        100) /* ItemWorkmanship */
     , (100062, 131,         74) /* MaterialType - Mahogany */
     , (100062, 151,          9) /* HookType - Floor, Yard */
	 , (100062, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100062,  22, True ) /* Inscribable */
     , (100062,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100062,   1, 'Salvaged Mahogany') /* Name */
     , (100062,  14, 'Apply this material to a treasure-generated missile weapon to increase the weapon''s damage modifier by 4%.') /* Use */
     , (100062,  15, 'A bundle of mahogany material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100062,   1, 0x02000181) /* Setup */
     , (100062,   3, 0x20000014) /* SoundTable */
     , (100062,   6, 0x04000BEF) /* PaletteBase */
     , (100062,   7, 0x100003CE) /* ClothingBase */
     , (100062,   8, 0x0600361B) /* Icon */
     , (100062,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100062,  50, 0x060026D0) /* IconOverlay */;
