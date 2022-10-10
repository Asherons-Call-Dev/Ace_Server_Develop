DELETE FROM `weenie` WHERE `class_Id` = 33611;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (33611, 'ace33611-shopathwardenchest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (33611,   1,        512) /* ItemType - Container */
     , (33611,   5,      14750) /* EncumbranceVal */
     , (33611,   6,        120) /* ItemsCapacity */
     , (33611,   7,         10) /* ContainersCapacity */
     , (33611,  16,         48) /* ItemUseable - ViewedRemote */
     , (33611,  19,       2500) /* Value */
     , (33611,  38,       9999) /* ResistLockpick */
     , (33611,  81,          1) /* MaxGeneratedObjects */
     , (33611,  82,          1) /* InitGeneratedObjects */
     , (33611,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (33611, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (33611,   1, True ) /* Stuck */
     , (33611,   2, False) /* Open */
     , (33611,   3, True ) /* Locked */
     , (33611,  11, True ) /* IgnoreCollisions */
     , (33611,  12, True ) /* ReportCollisions */
     , (33611,  14, True ) /* GravityStatus */
     , (33611,  19, True ) /* Attackable */
     , (33611,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (33611,  11,       1) /* ResetInterval */
     , (33611,  41,       1) /* RegenerationInterval */
     , (33611,  43,       1) /* GeneratorRadius */
     , (33611,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (33611,   1, 'Sho Pathwarden Chest') /* Name */
     , (33611,  12, 'pathwardenchestkey') /* LockCode */
     , (33611,  14, 'Use this item to open it and see its contents.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (33611,   1, 0x0200007C) /* Setup */
     , (33611,   2, 0x09000004) /* MotionTable */
     , (33611,   3, 0x20000021) /* SoundTable */
     , (33611,   8, 0x06001020) /* Icon */
     , (33611,  22, 0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (33611, 0.1, 30094, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof Aquamarine (30094) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (33611, 0.2, 30095, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof Black Garnet (30095) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (33611, 0.3, 30097, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof Emerald (30097) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (33611, 0.4, 30099, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof Imperial Topaz (30099) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (33611, 0.5, 30100, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof Jet (30100) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (33611, 0.6, 30102, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof Red Garnet (30102) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
	 , (33611, 0.7, 30104, 0, 1, 1, 2, 8, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Foolproof White Sapphire (34708) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;
