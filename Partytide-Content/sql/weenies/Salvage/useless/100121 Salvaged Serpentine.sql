DELETE FROM `weenie` WHERE `class_Id` = 100121;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100121, 'custommaterialserpentine', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100121,   1, 1073741824) /* ItemType - TinkeringMaterial */
     , (100121,   3,          4) /* PaletteTemplate - Brown */
     , (100121,   5,        100) /* EncumbranceVal */
     , (100121,   8,        100) /* Mass */
     , (100121,   9,          0) /* ValidLocations - None */
     , (100121,  11,          1) /* MaxStackSize */
     , (100121,  12,          1) /* StackSize */
     , (100121,  13,        100) /* StackUnitEncumbrance */
     , (100121,  14,        100) /* StackUnitMass */
     , (100121,  15,         10) /* StackUnitValue */
     , (100121,  16,          1) /* ItemUseable - No */
     , (100121,  19,          1) /* Value */
     , (100121,  33,          1) /* Bonded - Bonded */
     , (100121,  91,        100) /* MaxStructure */
     , (100121,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100121, 131,         71) /* MaterialType - Serpentine */
     , (100121, 150,        103) /* HookPlacement - Hook */
     , (100121, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100121,  22, True ) /* Inscribable */
     , (100121,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100121,   1, 'Salvaged Serpentine') /* Name */
     , (100121,  14, 'This item has no apparent use.') /* Use */
     , (100121,  15, 'A brick of serpentine material salvaged from old items.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100121,   1, 0x02000181) /* Setup */
     , (100121,   3, 0x20000014) /* SoundTable */
     , (100121,   6, 0x04000BEF) /* PaletteBase */
     , (100121,   7, 0x100003CE) /* ClothingBase */
     , (100121,   8, 0x0600102C) /* Icon */
     , (100121,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100121,  50, 0x06002713) /* IconOverlay */;
