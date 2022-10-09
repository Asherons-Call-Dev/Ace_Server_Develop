DELETE FROM `weenie` WHERE `class_Id` = 100118;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100118, 'custommaterialgreenjade', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100118,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (100118,   3,          4) /* PaletteTemplate - Brown */
     , (100118,   5,        100) /* EncumbranceVal */
     , (100118,   8,        100) /* Mass */
     , (100118,   9,          0) /* ValidLocations - None */
     , (100118,  11,          1) /* MaxStackSize */
     , (100118,  12,          1) /* StackSize */
     , (100118,  13,        100) /* StackUnitEncumbrance */
     , (100118,  14,        100) /* StackUnitMass */
     , (100118,  15,         10) /* StackUnitValue */
     , (100118,  16,          1) /* ItemUseable - No */
     , (100118,  19,          1) /* Value */
     , (100118,  33,          1) /* Bonded - Bonded */
     , (100118,  91,        100) /* MaxStructure */
     , (100118,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100118, 131,         24) /* MaterialType - GreenJade */
     , (100118, 150,        103) /* HookPlacement - Hook */
     , (100118, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100118,  22, True ) /* Inscribable */
     , (100118,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100118,   1, 'Salvaged Green Jade') /* Name */
     , (100118,  14, 'This item has no apparent use.') /* Use */
     , (100118,  15, 'Chips of green jade material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100118,   1, 0x02000181) /* Setup */
     , (100118,   3, 0x20000014) /* SoundTable */
     , (100118,   6, 0x04000BEF) /* PaletteBase */
     , (100118,   7, 0x100003CE) /* ClothingBase */
     , (100118,   8, 0x0600102C) /* Icon */
     , (100118,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100118,  50, 0x060026FB) /* IconOverlay */;
