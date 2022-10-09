DELETE FROM `weenie` WHERE `class_Id` = 100016;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100016, 'ace100016-chimericeyeofthequidditysummoninggem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100016,   1,        128) /* ItemType - Misc */
     , (100016,   5,         10) /* EncumbranceVal */
     , (100016,  11,          1) /* MaxStackSize */
     , (100016,  12,          1) /* StackSize */
     , (100016,  13,         10) /* StackUnitEncumbrance */
     , (100016,  15,          3) /* StackUnitValue */
     , (100016,  16,          8) /* ItemUseable - Contained */
     , (100016,  19,          3) /* Value */
     , (100016,  33,          1) /* Bonded - Bonded */
     , (100016,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100016,  94,         16) /* TargetType - Creature */
     , (100016, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100016,  22, True ) /* Inscribable */
     , (100016,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100016,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100016,   1, 'Chimeric Eye of the Quiddity Summoning Gem') /* Name */
     , (100016,  14, 'Use this gem to summon the weapon it is bound to.') /* Use */
     , (100016,  16, 'A gem, seeming made of congealed portal energy. You know that using this gem will summon forth the weapon known as the Chimeric Eye of the Quiddity. Once summoned, the weapon will only remain in the world for a day. (BE WARNED: 1 - This duration will continue to count down, even if the character bearing the weapon is logged out. 2 - Have a free space in your main pack when you use this gem. 3 - You must be at least level 120 to wield the weapon summoned by this gem.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100016,   1, 0x020006FF) /* Setup */
     , (100016,   3, 0x20000014) /* SoundTable */
     , (100016,   6, 0x04000BF8) /* PaletteBase */
     , (100016,   8, 0x06001E11) /* Icon */
     , (100016,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100016,  38,      100017) /* UseCreateItem - Chimeric Eye of the Quiddity */
     , (100016,  50, 0x060028FA) /* IconOverlay */
     , (100016,  52, 0x060065FB) /* IconUnderlay */;
