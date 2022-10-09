DELETE FROM `weenie` WHERE `class_Id` = 100154;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100154, 'customlinkabletarget', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100154,  66,          1) /* CheckpointStatus */
     , (100154,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100154,   1, False ) /* Stuck */
     , (100154,  11, True ) /* IgnoreCollisions */
     , (100154,  18, False ) /* Visibility */
	 , (100154,  19, True) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100154,  41,      60) /* RegenerationInterval */
     , (100154,  43,       1) /* GeneratorRadius */
	 , (100154,  76,       0.5) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100154,   1, 'Linkable target') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100154,   1, 0x0200026B) /* Setup */
     , (100154,   8, 0x06001066) /* Icon */;
