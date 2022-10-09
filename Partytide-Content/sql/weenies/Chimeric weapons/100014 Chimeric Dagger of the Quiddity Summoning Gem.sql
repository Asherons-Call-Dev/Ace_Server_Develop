DELETE FROM `weenie` WHERE `class_Id` = 100014;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100014, 'ace100014-chimericdaggerofthequidditysummoninggem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100014,   1,        128) /* ItemType - Misc */
     , (100014,   5,         10) /* EncumbranceVal */
     , (100014,  11,          1) /* MaxStackSize */
     , (100014,  12,          1) /* StackSize */
     , (100014,  13,         10) /* StackUnitEncumbrance */
     , (100014,  15,          3) /* StackUnitValue */
     , (100014,  16,          8) /* ItemUseable - Contained */
     , (100014,  19,          3) /* Value */
     , (100014,  33,          1) /* Bonded - Bonded */
     , (100014,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (100014,  94,         16) /* TargetType - Creature */
     , (100014, 269,          1) /* UseCreateQuantity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100014,  22, True ) /* Inscribable */
     , (100014,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100014,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100014,   1, 'Chimeric Dagger of the Quiddity Summoning Gem') /* Name */
     , (100014,  14, 'Use this gem to summon the weapon it is bound to.') /* Use */
     , (100014,  16, 'A gem, seeming made of congealed portal energy. You know that using this gem will summon forth the weapon known as the Chimeric Dagger of the Quiddity. Once summoned, the weapon will only remain in the world for 24 hours. (BE WARNED: 1 - This duration will continue to count down, even if the character bearing the weapon is logged out. 2 - Have a free space in your main pack when you use this gem. 3 - You must be at least level 120 to wield the weapon summoned by this gem.)') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100014,   1, 0x020006FF) /* Setup */
     , (100014,   3, 0x20000014) /* SoundTable */
     , (100014,   6, 0x04000BF8) /* PaletteBase */
     , (100014,   8, 0x06001E11) /* Icon */
     , (100014,  22, 0x3400002B) /* PhysicsEffectTable */
     , (100014,  38,      100015) /* UseCreateItem - Chimeric Dagger of the Quiddity */
     , (100014,  50, 0x060028E3) /* IconOverlay */
     , (100014,  52, 0x060065FB) /* IconUnderlay */;
