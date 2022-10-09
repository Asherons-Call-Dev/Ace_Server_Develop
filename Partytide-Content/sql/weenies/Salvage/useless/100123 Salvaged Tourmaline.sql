DELETE FROM `weenie` WHERE `class_Id` = 100123;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100123, 'custommaterialtourmaline', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100123,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (100123,   3,          4) /* PaletteTemplate - Brown */
     , (100123,   5,        100) /* EncumbranceVal */
     , (100123,   8,        100) /* Mass */
     , (100123,   9,          0) /* ValidLocations - None */
     , (100123,  11,          1) /* MaxStackSize */
     , (100123,  12,          1) /* StackSize */
     , (100123,  13,        100) /* StackUnitEncumbrance */
     , (100123,  14,        100) /* StackUnitMass */
     , (100123,  15,         10) /* StackUnitValue */
     , (100123,  16,          1) /* ItemUseable - No */
     , (100123,  19,          1) /* Value */
     , (100123,  33,          1) /* Bonded - Bonded */
     , (100123,  91,        100) /* MaxStructure */
     , (100123,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100123, 131,         43) /* MaterialType - Tourmaline */
     , (100123, 150,        103) /* HookPlacement - Hook */
     , (100123, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100123,  22, True ) /* Inscribable */
     , (100123,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100123,   1, 'Salvaged Tourmaline') /* Name */
     , (100123,  14, 'This item has no apparent use.') /* Use */
     , (100123,  15, 'Chips of tourmaline material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100123,   1, 0x02000181) /* Setup */
     , (100123,   3, 0x20000014) /* SoundTable */
     , (100123,   6, 0x04000BEF) /* PaletteBase */
     , (100123,   7, 0x100003CE) /* ClothingBase */
     , (100123,   8, 0x0600102C) /* Icon */
     , (100123,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100123,  50, 0x0600271A) /* IconOverlay */;
