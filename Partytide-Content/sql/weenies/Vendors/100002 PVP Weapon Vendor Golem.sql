DELETE FROM `weenie` WHERE `class_Id` = 100002;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100002, 'starterweaponvendor', 12, '2022-08-16 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100002,   1,         16) /* ItemType - Creature */
     , (100002,   2,         13) /* CreatureType - Golem */
     , (100002,   3,         39) /* PaletteTemplate - Black */
     , (100002,   6,         -1) /* ItemsCapacity */
     , (100002,   7,         -1) /* ContainersCapacity */
     , (100002,  16,         32) /* ItemUseable - Remote */
     , (100002,  25,          6) /* Level */
     , (100002,  74,          0) /* MerchandiseItemTypes - None */
     , (100002,  75,          0) /* MerchandiseMinValue */
     , (100002,  76,     100000) /* MerchandiseMaxValue */
     , (100002,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (100002, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (100002, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100002,   1, True ) /* Stuck */
     , (100002,  19, False) /* Attackable */
     , (100002,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100002,  37,       1) /* BuyPrice */
     , (100002,  38,       1) /* SellPrice */
     , (100002,  39,     1.3) /* DefaultScale */
     , (100002,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100002,   1, 'PVP Weapon Vendor') /* Name */
     , (100002,   5, 'Colosseum Vendor') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100002,   1, 0x02000F5F) /* Setup */
     , (100002,   2, 0x09000001) /* MotionTable */
     , (100002,   3, 0x20000015) /* SoundTable */
     , (100002,   7, 0x10000621) /* ClothingBase */
     , (100002,   8, 0x06002B2E) /* Icon */
     , (100002,  57,      100005) /* AlternateCurrency - Starter pvp weapon Currency */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (100002,   1, 680, 0, 0) /* Strength */
     , (100002,   2, 640, 0, 0) /* Endurance */
     , (100002,   3, 550, 0, 0) /* Quickness */
     , (100002,   4, 630, 0, 0) /* Coordination */
     , (100002,   5, 550, 0, 0) /* Focus */
     , (100002,   6, 585, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (100002,   1,   800, 0, 0, 1120) /* MaxHealth */
     , (100002,   3,   851, 0, 0, 1491) /* MaxStamina */
     , (100002,   5,   500, 0, 0, 1085) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (100002,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome gladiator, perhaps you have won some of Colosseum Coins? I have a number of interesting items you can exchange Colosseum Coins for.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (100002,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Enjoy your spoils gladiator and return when you have more coins.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (100002,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Enjoy your time in the Colosseum!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (100002, 4,   100004, -1, 0, 0, False) /* Create Hollow Katar (100004) for Shop */
     , (100002, 4,   100022, -1, 0, 0, False) /* Create Hollow Axe (100022) for Shop */
     , (100002, 4,   100023, -1, 0, 0, False) /* Create Hollow Mace (100023) for Shop */
     , (100002, 4,   100024, -1, 0, 0, False) /* Create Hollow Staff (100024) for Shop */
     , (100002, 4,   100025, -1, 0, 0, False) /* Create Hollow Spear (100025) for Shop */
	 , (100002, 4,   100053, -1, 0, 0, False) /* Create Hollow Dagger (100053) for Shop */
     , (100002, 4,   100026, -1, 0, 0, False) /* Create Hollow Sword (100026) for Shop */
     , (100002, 4,   100027, -1, 0, 0, False) /* Create Hollow Atlatl (100027) for Shop */
     , (100002, 4,   100028, -1, 0, 0, False) /* Create Hollow Bow (100028) for Shop */
     , (100002, 4,   100029, -1, 0, 0, False) /* Create Hollow Crossbow (100029) for Shop */
     , (100002, 4,   100030, -1, 0, 0, False) /* Create Hollow Two Handed Spear (100030) for Shop */
	 , (100002, 4,   100009, -1, 0, 0, False) /* Create Weeping Wand (100009) for Shop */
	 , (100002, 4,   100031, -1, 0, 0, False) /* Create Weeping Atlatl (100031) for Shop */
	 , (100002, 4,   100032, -1, 0, 0, False) /* Create Weeping Axe (100032) for Shop */
	 , (100002, 4,   100033, -1, 0, 0, False) /* Create Weeping Bow (100033) for Shop */
	 , (100002, 4,   100034, -1, 0, 0, False) /* Create Weeping Claw (100034) for Shop */
	 , (100002, 4,   100035, -1, 0, 0, False) /* Create Weeping Crossbow (100035) for Shop */
	 , (100002, 4,   100036, -1, 0, 0, False) /* Create Weeping Dagger (100036) for Shop */
	 , (100002, 4,   100037, -1, 0, 0, False) /* Create Weeping Mace (100037) for Shop */
	 , (100002, 4,   100038, -1, 0, 0, False) /* Create Weeping Spear (100038) for Shop */
	 , (100002, 4,   100039, -1, 0, 0, False) /* Create Weeping Staff (100039) for Shop */
	 , (100002, 4,   100040, -1, 0, 0, False) /* Create Weeping Sword (100040) for Shop */
	 , (100002, 4,   100041, -1, 0, 0, False) /* Create Weeping Two Handed Spear (100041) for Shop */
	 , (100002, 4,   100042, -1, 0, 0, False) /* Create Phantom Axe (100042) for Shop */
	 , (100002, 4,   100043, -1, 0, 0, False) /* Create Phantom Dagger (100043) for Shop */
	 , (100002, 4,   100044, -1, 0, 0, False) /* Create Phantom Katar (100044) for Shop */
	 , (100002, 4,   100045, -1, 0, 0, False) /* Create Phantom Mace (100045) for Shop */
	 , (100002, 4,   100046, -1, 0, 0, False) /* Create Phantom Staff (100046) for Shop */
	 , (100002, 4,   100047, -1, 0, 0, False) /* Create Phantom Spear (100047) for Shop */
	 , (100002, 4,   100048, -1, 0, 0, False) /* Create Phantom Sword (100048) for Shop */
	 , (100002, 4,   100049, -1, 0, 0, False) /* Create Phantom Atlatl (100049) for Shop */
	 , (100002, 4,   100050, -1, 0, 0, False) /* Create Phantom Bow (100050) for Shop */
	 , (100002, 4,   100051, -1, 0, 0, False) /* Create Phantom Crossbow (100051) for Shop */
	 , (100002, 4,   100052, -1, 0, 0, False) /* Create Phantom Two Handed Spear (100052) for Shop */;
