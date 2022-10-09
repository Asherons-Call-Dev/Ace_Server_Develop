DELETE FROM `weenie` WHERE `class_Id` = 100068;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100068, 'custommaterialgreengarnet', 44, '2021-11-17 16:56:08') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100068,   1,        128) /* ItemType - Misc */
     , (100068,   3,          2) /* PaletteTemplate - Blue */
     , (100068,   5,         10) /* EncumbranceVal */
     , (100068,  11,        100) /* MaxStackSize */
     , (100068,  12,          1) /* StackSize */
     , (100068,  13,         10) /* StackUnitEncumbrance */
     , (100068,  15,          1) /* StackUnitValue */
     , (100068,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (100068,  19,          1) /* Value */
     , (100068,  33,          1) /* Bonded - Bonded */
     , (100068,  91,        100) /* MaxStructure */
	 , (100068,  92,        100) /* Structure */
     , (100068,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100068,  94,      32768) /* TargetType - Caster */
	 , (100068, 105,        100) /* ItemWorkmanship */
     , (100068, 131,         23) /* MaterialType - GreenGarnet */
     , (100068, 151,          9) /* HookType - Floor, Yard */
	 , (100068, 170,         10) /* NumItemsInMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100068,  22, True ) /* Inscribable */
     , (100068,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100068,   1, 'Salvaged Green Garnet') /* Name */
     , (100068,  14, 'Apply this material to a treasure-generated magic caster that has an elemental damage bonus in order to increase the elemental damage bonus by 1% vs. monsters and 0.25% vs. players.') /* Use */
     , (100068,  15, 'Chips of green garnet material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100068,   1, 0x02000181) /* Setup */
     , (100068,   3, 0x20000014) /* SoundTable */
     , (100068,   6, 0x04000BEF) /* PaletteBase */
     , (100068,   7, 0x100003CE) /* ClothingBase */
     , (100068,   8, 0x060026BE) /* Icon */
     , (100068,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100068,  50, 0x060026FA) /* IconOverlay */;
