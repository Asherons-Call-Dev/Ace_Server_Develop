DELETE FROM `weenie` WHERE `class_Id` = 100125;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100125, 'custommaterialwhitejade', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100125,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (100125,   3,          4) /* PaletteTemplate - Brown */
     , (100125,   5,        100) /* EncumbranceVal */
     , (100125,   8,        100) /* Mass */
     , (100125,   9,          0) /* ValidLocations - None */
     , (100125,  11,          1) /* MaxStackSize */
     , (100125,  12,          1) /* StackSize */
     , (100125,  13,        100) /* StackUnitEncumbrance */
     , (100125,  14,        100) /* StackUnitMass */
     , (100125,  15,         10) /* StackUnitValue */
     , (100125,  16,          1) /* ItemUseable - No */
     , (100125,  19,          1) /* Value */
     , (100125,  33,          1) /* Bonded - Bonded */
     , (100125,  91,        100) /* MaxStructure */
     , (100125,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100125, 131,         45) /* MaterialType - WhiteJade */
     , (100125, 150,        103) /* HookPlacement - Hook */
     , (100125, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100125,  22, True ) /* Inscribable */
     , (100125,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100125,   1, 'Salvaged White Jade') /* Name */
     , (100125,  14, 'This item has no apparent use.') /* Use */
     , (100125,  15, 'Chips of white jade material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100125,   1, 0x02000181) /* Setup */
     , (100125,   3, 0x20000014) /* SoundTable */
     , (100125,   6, 0x04000BEF) /* PaletteBase */
     , (100125,   7, 0x100003CE) /* ClothingBase */
     , (100125,   8, 0x0600102C) /* Icon */
     , (100125,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100125,  50, 0x0600271C) /* IconOverlay */;
