DELETE FROM `weenie` WHERE `class_Id` = 100119;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100119, 'custommaterialobsidian', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100119,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (100119,   3,          4) /* PaletteTemplate - Brown */
     , (100119,   5,        100) /* EncumbranceVal */
     , (100119,   8,        100) /* Mass */
     , (100119,   9,          0) /* ValidLocations - None */
     , (100119,  11,          1) /* MaxStackSize */
     , (100119,  12,          1) /* StackSize */
     , (100119,  13,        100) /* StackUnitEncumbrance */
     , (100119,  14,        100) /* StackUnitMass */
     , (100119,  15,         10) /* StackUnitValue */
     , (100119,  16,          1) /* ItemUseable - No */
     , (100119,  19,          1) /* Value */
     , (100119,  33,          1) /* Bonded - Bonded */
     , (100119,  91,        100) /* MaxStructure */
     , (100119,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100119, 131,         69) /* MaterialType - Obsidian */
     , (100119, 150,        103) /* HookPlacement - Hook */
     , (100119, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100119,  22, True ) /* Inscribable */
     , (100119,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100119,   1, 'Salvaged Obsidian') /* Name */
     , (100119,  14, 'This item has no apparent use.') /* Use */
     , (100119,  15, 'A brick of obsidian material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100119,   1, 0x02000181) /* Setup */
     , (100119,   3, 0x20000014) /* SoundTable */
     , (100119,   6, 0x04000BEF) /* PaletteBase */
     , (100119,   7, 0x100003CE) /* ClothingBase */
     , (100119,   8, 0x0600102C) /* Icon */
     , (100119,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100119,  50, 0x06002706) /* IconOverlay */;
