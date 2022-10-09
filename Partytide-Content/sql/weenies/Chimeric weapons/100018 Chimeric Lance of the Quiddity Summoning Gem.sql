DELETE FROM `weenie` WHERE `class_Id` = 100018;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100018, 'ace100018-chimericlanceofthequidditysummoninggem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100018,   1,        128) /* ItemType - Misc */
     , (100018,   5,         10) /* EncumbranceVal */
     , (100018,  11,          1) /* MaxStackSize */
     , (100018,  12,          1) /* StackSize */
     , (100018,  13,         10) /* StackUnitEncumbrance */
     , (100018,  15,          3) /* StackUnitValue */
     , (100018,  16,          8) /* ItemUseable - Contained */
     , (100018,  19,          3) /* Value */
     , (100018,  33,          1) /* Bonded - Bonded */
     , (100018,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100018,  94,         16) /* TargetType - Creature */
     , (100018, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100018,  22, True ) /* Inscribable */
     , (100018,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100018,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100018,   1, 'Chimeric Lance of the Quiddity Summoning Gem') /* Name */
     , (100018,  14, 'Use this gem to summon the weapon it is bound to.') /* Use */
     , (100018,  16, 'A gem, seeming made of congealed portal energy. You know that using this gem will summon forth the weapon known as the Chimeric Lance of the Quiddity. Once summoned, the weapon will only remain in the world for 24 hours. (BE WARNED: 1 - This duration will continue to count down, even if the character bearing the weapon is logged out. 2 - Have a free space in your main pack when you use this gem. 3 - You must be at least level 120 to wield the weapon summoned by this gem.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100018,   1, 0x020006FF) /* Setup */
     , (100018,   3, 0x20000014) /* SoundTable */
     , (100018,   6, 0x04000BF8) /* PaletteBase */
     , (100018,   8, 0x06001E11) /* Icon */
     , (100018,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100018,  38,      100019) /* UseCreateItem - Chimeric Lance of the Quiddity */
     , (100018,  50, 0x060028F5) /* IconOverlay */
     , (100018,  52, 0x060065FB) /* IconUnderlay */;
