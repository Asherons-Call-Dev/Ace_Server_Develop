DELETE FROM `weenie` WHERE `class_Id` = 100122;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100122, 'custommaterialtigereye', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100122,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (100122,   3,          4) /* PaletteTemplate - Brown */
     , (100122,   5,        100) /* EncumbranceVal */
     , (100122,   8,        100) /* Mass */
     , (100122,   9,          0) /* ValidLocations - None */
     , (100122,  11,          1) /* MaxStackSize */
     , (100122,  12,          1) /* StackSize */
     , (100122,  13,        100) /* StackUnitEncumbrance */
     , (100122,  14,        100) /* StackUnitMass */
     , (100122,  15,         10) /* StackUnitValue */
     , (100122,  16,          1) /* ItemUseable - No */
     , (100122,  19,          1) /* Value */
     , (100122,  33,          1) /* Bonded - Bonded */
     , (100122,  91,        100) /* MaxStructure */
     , (100122,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100122, 131,         42) /* MaterialType - TigerEye */
     , (100122, 150,        103) /* HookPlacement - Hook */
     , (100122, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100122,  22, True ) /* Inscribable */
     , (100122,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100122,   1, 'Salvaged Tiger Eye') /* Name */
     , (100122,  14, 'This item has no apparent use.') /* Use */
     , (100122,  15, 'Chips of tiger eye material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100122,   1, 0x02000181) /* Setup */
     , (100122,   3, 0x20000014) /* SoundTable */
     , (100122,   6, 0x04000BEF) /* PaletteBase */
     , (100122,   7, 0x100003CE) /* ClothingBase */
     , (100122,   8, 0x0600102C) /* Icon */
     , (100122,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100122,  50, 0x06002719) /* IconOverlay */;
