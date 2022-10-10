DELETE FROM `weenie` WHERE `class_Id` = 100120;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100120, 'custommaterialonyx', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100120,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (100120,   3,          4) /* PaletteTemplate - Brown */
     , (100120,   5,        100) /* EncumbranceVal */
     , (100120,   8,        100) /* Mass */
     , (100120,   9,          0) /* ValidLocations - None */
     , (100120,  11,          1) /* MaxStackSize */
     , (100120,  12,          1) /* StackSize */
     , (100120,  13,        100) /* StackUnitEncumbrance */
     , (100120,  14,        100) /* StackUnitMass */
     , (100120,  15,         10) /* StackUnitValue */
     , (100120,  16,          1) /* ItemUseable - No */
     , (100120,  19,          1) /* Value */
     , (100120,  33,          1) /* Bonded - Bonded */
     , (100120,  91,        100) /* MaxStructure */
     , (100120,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100120, 131,         32) /* MaterialType - Onyx */
     , (100120, 150,        103) /* HookPlacement - Hook */
     , (100120, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100120,  22, True ) /* Inscribable */
     , (100120,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100120,   1, 'Salvaged Onyx') /* Name */
     , (100120,  14, 'This item has no apparent use.') /* Use */
     , (100120,  15, 'Chips of onyx material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100120,   1, 0x02000181) /* Setup */
     , (100120,   3, 0x20000014) /* SoundTable */
     , (100120,   6, 0x04000BEF) /* PaletteBase */
     , (100120,   7, 0x100003CE) /* ClothingBase */
     , (100120,   8, 0x0600102C) /* Icon */
     , (100120,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100120,  50, 0x06002707) /* IconOverlay */;
