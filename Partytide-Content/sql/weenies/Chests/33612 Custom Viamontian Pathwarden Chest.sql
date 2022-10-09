DELETE FROM `weenie` WHERE `class_Id` = 33612;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (33612, 'ace33612-viamontianpathwardenchest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (33612,   1,        512) /* ItemType - Container */
     , (33612,   5,      14750) /* EncumbranceVal */
     , (33612,   6,        120) /* ItemsCapacity */
     , (33612,   7,         10) /* ContainersCapacity */
     , (33612,  16,         48) /* ItemUseable - ViewedRemote */
     , (33612,  19,       2500) /* Value */
     , (33612,  38,       9999) /* ResistLockpick */
     , (33612,  81,          1) /* MaxGeneratedObjects */
     , (33612,  82,          1) /* InitGeneratedObjects */
     , (33612,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (33612, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (33612,   1, True ) /* Stuck */
     , (33612,   2, False) /* Open */
     , (33612,   3, True ) /* Locked */
     , (33612,  11, True ) /* IgnoreCollisions */
     , (33612,  12, True ) /* ReportCollisions */
     , (33612,  14, True ) /* GravityStatus */
     , (33612,  19, True ) /* Attackable */
     , (33612,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (33612,  11,       1) /* ResetInterval */
     , (33612,  41,       1) /* RegenerationInterval */
     , (33612,  43,       1) /* GeneratorRadius */
     , (33612,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (33612,   1, 'Viamontian Pathwarden Chest') /* Name */
     , (33612,  12, 'pathwardenchestkey') /* LockCode */
     , (33612,  14, 'Use this item to open it and see its contents.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (33612,   1, 0x0200007C) /* Setup */
     , (33612,   2, 0x09000004) /* MotionTable */
     , (33612,   3, 0x20000021) /* SoundTable */
     , (33612,   8, 0x06001020) /* Icon */
     , (33612,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (33612, 0.1, 30094, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof Aquamarine (30094) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (33612, 0.2, 30095, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof Black Garnet (30095) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (33612, 0.3, 30097, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof Emerald (30097) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (33612, 0.4, 30099, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof Imperial Topaz (30099) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (33612, 0.5, 30100, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof Jet (30100) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (33612, 0.6, 30102, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof Red Garnet (30102) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (33612, 0.7, 30104, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof White Sapphire (34708) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;
