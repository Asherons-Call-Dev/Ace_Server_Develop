DELETE FROM `weenie` WHERE `class_Id` = 100117;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100117, 'custommaterialamethyst', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100117,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (100117,   3,          4) /* PaletteTemplate - Brown */
     , (100117,   5,        100) /* EncumbranceVal */
     , (100117,   8,        100) /* Mass */
     , (100117,   9,          0) /* ValidLocations - None */
     , (100117,  11,          1) /* MaxStackSize */
     , (100117,  12,          1) /* StackSize */
     , (100117,  13,        100) /* StackUnitEncumbrance */
     , (100117,  14,        100) /* StackUnitMass */
     , (100117,  15,         10) /* StackUnitValue */
     , (100117,  16,          1) /* ItemUseable - No */
     , (100117,  19,          1) /* Value */
     , (100117,  33,          1) /* Bonded - Bonded */
     , (100117,  91,        100) /* MaxStructure */
     , (100117,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100117, 131,         12) /* MaterialType - Amethyst */
     , (100117, 150,        103) /* HookPlacement - Hook */
     , (100117, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100117,  22, True ) /* Inscribable */
     , (100117,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100117,   1, 'Salvaged Amethyst') /* Name */
     , (100117,  14, 'This item has no apparent use.') /* Use */
     , (100117,  15, 'Chips of amethyst material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100117,   1, 0x02000181) /* Setup */
     , (100117,   3, 0x20000014) /* SoundTable */
     , (100117,   6, 0x04000BEF) /* PaletteBase */
     , (100117,   7, 0x100003CE) /* ClothingBase */
     , (100117,   8, 0x0600102C) /* Icon */
     , (100117,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100117,  50, 0x060026ED) /* IconOverlay */;
