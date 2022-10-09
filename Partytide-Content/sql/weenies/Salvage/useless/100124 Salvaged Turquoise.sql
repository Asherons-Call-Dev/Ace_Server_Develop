DELETE FROM `weenie` WHERE `class_Id` = 100124;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100124, 'custommaterialturquoise', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100124,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (100124,   3,          4) /* PaletteTemplate - Brown */
     , (100124,   5,        100) /* EncumbranceVal */
     , (100124,   8,        100) /* Mass */
     , (100124,   9,          0) /* ValidLocations - None */
     , (100124,  11,          1) /* MaxStackSize */
     , (100124,  12,          1) /* StackSize */
     , (100124,  13,        100) /* StackUnitEncumbrance */
     , (100124,  14,        100) /* StackUnitMass */
     , (100124,  15,         10) /* StackUnitValue */
     , (100124,  16,          1) /* ItemUseable - No */
     , (100124,  19,          1) /* Value */
     , (100124,  33,          1) /* Bonded - Bonded */
     , (100124,  91,        100) /* MaxStructure */
     , (100124,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100124, 131,         44) /* MaterialType - Turquoise */
     , (100124, 150,        103) /* HookPlacement - Hook */
     , (100124, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100124,  22, True ) /* Inscribable */
     , (100124,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100124,   1, 'Salvaged Turquoise') /* Name */
     , (100124,  14, 'This item has no apparent use.') /* Use */
     , (100124,  15, 'Chips of turquoise material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100124,   1, 0x02000181) /* Setup */
     , (100124,   3, 0x20000014) /* SoundTable */
     , (100124,   6, 0x04000BEF) /* PaletteBase */
     , (100124,   7, 0x100003CE) /* ClothingBase */
     , (100124,   8, 0x0600102C) /* Icon */
     , (100124,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100124,  50, 0x0600271B) /* IconOverlay */;
