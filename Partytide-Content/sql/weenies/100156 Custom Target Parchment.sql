DELETE FROM `weenie` WHERE `class_Id` = 100156;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100156, 'customtargetparchment', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100156,   1,       8192) /* ItemType - Writable */
     , (100156,   5,         25) /* EncumbranceVal */
     , (100156,   8,          5) /* Mass */
     , (100156,   9,          0) /* ValidLocations - None */
     , (100156,  16,          8) /* ItemUseable - Contained */
     , (100156,  19,         10) /* Value */
     , (100156,  33,          1) /* Bonded - Bonded */
     , (100156,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100156,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100156,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100156,   1, 'Custom Parchment') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100156,   1, 0x02000155) /* Setup */
     , (100156,   3, 0x20000014) /* SoundTable */
     , (100156,   8, 0x06001310) /* Icon */
     , (100156,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (100156, 1, 1000);
