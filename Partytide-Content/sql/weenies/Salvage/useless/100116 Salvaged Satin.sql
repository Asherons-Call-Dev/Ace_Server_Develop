DELETE FROM `weenie` WHERE `class_Id` = 100116;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100116, 'custommaterialsatin', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100116,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (100116,   3,          4) /* PaletteTemplate - Brown */
     , (100116,   5,        100) /* EncumbranceVal */
     , (100116,   8,        100) /* Mass */
     , (100116,   9,          0) /* ValidLocations - None */
     , (100116,  11,          1) /* MaxStackSize */
     , (100116,  12,          1) /* StackSize */
     , (100116,  13,        100) /* StackUnitEncumbrance */
     , (100116,  14,        100) /* StackUnitMass */
     , (100116,  15,         10) /* StackUnitValue */
     , (100116,  16,          1) /* ItemUseable - No */
     , (100116,  19,          1) /* Value */
     , (100116,  33,          1) /* Bonded - Bonded */
     , (100116,  91,        100) /* MaxStructure */
     , (100116,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100116, 131,          5) /* MaterialType - Satin */
     , (100116, 150,        103) /* HookPlacement - Hook */
     , (100116, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100116,  22, True ) /* Inscribable */
     , (100116,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100116,   1, 'Salvaged Satin') /* Name */
     , (100116,  14, 'This item has no apparent use.') /* Use */
     , (100116,  15, 'A bolt of satin material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100116,   1, 0x02000181) /* Setup */
     , (100116,   3, 0x20000014) /* SoundTable */
     , (100116,   6, 0x04000BEF) /* PaletteBase */
     , (100116,   7, 0x100003CE) /* ClothingBase */
     , (100116,   8, 0x0600102C) /* Icon */
     , (100116,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100116,  50, 0x06002712) /* IconOverlay */;
