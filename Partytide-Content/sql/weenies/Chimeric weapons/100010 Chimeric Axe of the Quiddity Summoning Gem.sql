DELETE FROM `weenie` WHERE `class_Id` = 100010;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100010, 'custom-chimericaxeofthequidditysummoninggem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100010,   1,        128) /* ItemType - Misc */
     , (100010,   5,         10) /* EncumbranceVal */
     , (100010,  11,          1) /* MaxStackSize */
     , (100010,  12,          1) /* StackSize */
     , (100010,  13,         10) /* StackUnitEncumbrance */
     , (100010,  15,          3) /* StackUnitValue */
     , (100010,  16,          8) /* ItemUseable - Contained */
     , (100010,  19,          3) /* Value */
     , (100010,  33,          1) /* Bonded - Bonded */
     , (100010,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100010,  94,         16) /* TargetType - Creature */
     , (100010, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100010,  22, True ) /* Inscribable */
     , (100010,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100010,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100010,   1, 'Chimeric Axe of the Quiddity Summoning Gem') /* Name */
     , (100010,  14, 'Use this gem to summon the weapon it is bound to.') /* Use */
     , (100010,  16, 'A gem, seeming made of congealed portal energy. You know that using this gem will summon forth the weapon known as the Chimeric Axe of the Quiddity. Once summoned, the weapon will only remain in the world for 24 hours. (BE WARNED: 1 - This duration will continue to count down, even if the character bearing the weapon is logged out. 2 - Have a free space in your main pack when you use this gem. 3 - You must be at least level 120 to wield the weapon summoned by this gem.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100010,   1, 0x020006FF) /* Setup */
     , (100010,   3, 0x20000014) /* SoundTable */
     , (100010,   6, 0x04000BF8) /* PaletteBase */
     , (100010,   8, 0x06001E11) /* Icon */
     , (100010,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100010,  38,      100011) /* UseCreateItem - Chimeric Axe of the Quiddity */
     , (100010,  50, 0x060028DE) /* IconOverlay */
     , (100010,  52, 0x060065FB) /* IconUnderlay */;
