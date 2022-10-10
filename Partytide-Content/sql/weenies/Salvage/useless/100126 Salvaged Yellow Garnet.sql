DELETE FROM `weenie` WHERE `class_Id` = 100126;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100126, 'custommaterialyellowgarnet', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100126,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (100126,   3,          4) /* PaletteTemplate - Brown */
     , (100126,   5,        100) /* EncumbranceVal */
     , (100126,   8,        100) /* Mass */
     , (100126,   9,          0) /* ValidLocations - None */
     , (100126,  11,          1) /* MaxStackSize */
     , (100126,  12,          1) /* StackSize */
     , (100126,  13,        100) /* StackUnitEncumbrance */
     , (100126,  14,        100) /* StackUnitMass */
     , (100126,  15,         10) /* StackUnitValue */
     , (100126,  16,          1) /* ItemUseable - No */
     , (100126,  19,          1) /* Value */
     , (100126,  33,          1) /* Bonded - Bonded */
     , (100126,  91,        100) /* MaxStructure */
     , (100126,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100126, 131,         48) /* MaterialType - YellowGarnet */
     , (100126, 150,        103) /* HookPlacement - Hook */
     , (100126, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100126,  22, True ) /* Inscribable */
     , (100126,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100126,   1, 'Salvaged Yellow Garnet') /* Name */
     , (100126,  14, 'This item has no apparent use.') /* Use */
     , (100126,  15, 'Chips of yellow garnet material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100126,   1, 0x02000181) /* Setup */
     , (100126,   3, 0x20000014) /* SoundTable */
     , (100126,   6, 0x04000BEF) /* PaletteBase */
     , (100126,   7, 0x100003CE) /* ClothingBase */
     , (100126,   8, 0x0600102C) /* Icon */
     , (100126,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100126,  50, 0x0600271F) /* IconOverlay */;
