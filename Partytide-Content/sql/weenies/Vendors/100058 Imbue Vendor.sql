DELETE FROM `weenie` WHERE `class_Id` = 100058;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100058, 'ace100058-weaponimbuevendor', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100058,   1,         16) /* ItemType - Creature */
     , (100058,   2,         13) /* CreatureType - Golem */
     , (100058,   6,         -1) /* ItemsCapacity */
     , (100058,   7,         -1) /* ContainersCapacity */
     , (100058,  16,         32) /* ItemUseable - Remote */
     , (100058,  25,        100) /* Level */
     , (100058,  74,          0) /* MerchandiseItemTypes - None */
     , (100058,  75,          0) /* MerchandiseMinValue */
     , (100058,  76,     100000) /* MerchandiseMaxValue */
     , (100058,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (100058, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (100058, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100058,   1, True ) /* Stuck */
     , (100058,  19, False) /* Attackable */
     , (100058,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100058,  37,       1) /* BuyPrice */
     , (100058,  38,       1) /* SellPrice */
     , (100058,  39,     1.3) /* DefaultScale */
     , (100058,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100058,   1, 'Imbue Vendor') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100058,   1, 0x020016D7) /* Setup */
     , (100058,   2, 0x09000186) /* MotionTable */
     , (100058,   3, 0x20000015) /* SoundTable */
     , (100058,   7, 0x1000049A) /* ClothingBase */
     , (100058,   8, 0x06002B2E) /* Icon */
     , (100058,  22, 0x34000025) /* PhysicsEffectTable */
     , (100058,  57,     100054) /* AlternateCurrency - Imbue Vendor Coin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (100058,   1, 680, 0, 0) /* Strength */
     , (100058,   2, 640, 0, 0) /* Endurance */
     , (100058,   3, 550, 0, 0) /* Quickness */
     , (100058,   4, 630, 0, 0) /* Coordination */
     , (100058,   5, 550, 0, 0) /* Focus */
     , (100058,   6, 585, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (100058,   1,   800, 0, 0, 1120) /* MaxHealth */
     , (100058,   3,   851, 0, 0, 1491) /* MaxStamina */
     , (100058,   5,   500, 0, 0, 1085) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (100058,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome adventurer, may you enjoy the gifts Asheron has sent for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (100058,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Enjoy your gifts, may they serve you well.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (100058, 4, 100083, -1, 0, 0, False) /* Create Salvaged Aquamarine (100083) for Shop */
	 , (100058, 4, 100085, -1, 0, 0, False) /* Create Salvaged Black Garnet (100085) for Shop */
	 , (100058, 4, 100095, -1, 0, 0, False) /* Create Salvaged Imperial Topaz (100095) for Shop */
	 , (100058, 4, 100096, -1, 0, 0, False) /* Create Salvaged Jet (100096) for Shop */
	 , (100058, 4, 100103, -1, 0, 0, False) /* Create Salvaged Red Garnet (100103) for Shop */
	 , (100058, 4, 100113, -1, 0, 0, False) /* Create Salvaged White Sapphire (100113) for Shop */
	 , (100058, 4, 100150, -1, 0, 0, False) /* Create Salvaged Emerald (100150) for Shop */
	 , (100058, 4, 100094, -1, 0, 0, False) /* Create Salvaged Hematite (100094) for Shop */
	 , (100058, 4, 100086, -1, 0, 0, False) /* Create Salvaged Black Opal (100086) for Shop */
	 , (100058, 4, 100151, -1, 0, 0, False) /* Create Salvaged Fire Opal (100151) for Shop */
	 , (100058, 4, 100111, -1, 0, 0, False) /* Create Salvaged Sunstone (100111) for Shop */
	 , (100058, 4, 100091, -1, 0, 0, False) /* Create Salvaged Diamond (100091) for Shop */
	 , (100058, 4, 100106, -1, 0, 0, False) /* Create Salvaged Ruby (100106) for Shop */
	 , (100058, 4, 100093, -1, 0, 0, False) /* Create Salvaged Gromnie Hide (100093) for Shop */
	 , (100058, 4, 100102, -1, 0, 0, False) /* Create Salvaged Pyreal (100102) for Shop */
	 , (100058, 4, 100115, -1, 0, 0, False) /* Create Salvaged Zircon (100115) for Shop */
	 , (100058, 4, 100114, -1, 0, 0, False) /* Create Salvaged Yellow Topaz (100114) for Shop */
	 , (100058, 4, 100100, -1, 0, 0, False) /* Create Salvaged Peridot (100100) for Shop */
	 , (100058, 4, 100081, -1, 0, 0, False) /* Create Salvaged Agate (100081) for Shop */
	 , (100058, 4, 100082, -1, 0, 0, False) /* Create Salvaged Amber (100082) for Shop */
	 , (100058, 4, 100084, -1, 0, 0, False) /* Create Salvaged Azurite (100084) for Shop */
	 , (100058, 4, 100087, -1, 0, 0, False) /* Create Salvaged Bloodstone (100087) for Shop */
	 , (100058, 4, 100088, -1, 0, 0, False) /* Create Salvaged Carnelian (100088) for Shop */
	 , (100058, 4, 100089, -1, 0, 0, False) /* Create Salvaged Citrine (100089) for Shop */
	 , (100058, 4, 100090, -1, 0, 0, False) /* Create Salvaged Copper (100090) for Shop */
	 , (100058, 4, 100097, -1, 0, 0, False) /* Create Salvaged Lapiz Lazuli (100097) for Shop */
	 , (100058, 4, 100098, -1, 0, 0, False) /* Create Salvaged Lavender Jade (100098) for Shop */
	 , (100058, 4, 100099, -1, 0, 0, False) /* Create Salvaged Malachite (100099) for Shop */
	 , (100058, 4, 100104, -1, 0, 0, False) /* Create Salvaged Red Jade (100104) for Shop */
	 , (100058, 4, 100105, -1, 0, 0, False) /* Create Salvaged Rose Quartz (100105) for Shop */
	 , (100058, 4, 100107, -1, 0, 0, False) /* Create Salvaged Sapphire (100107) for Shop */
	 , (100058, 4, 100109, -1, 0, 0, False) /* Create Salvaged Silver (100109) for Shop */
	 , (100058, 4, 100110, -1, 0, 0, False) /* Create Salvaged Smoky Quartz (100110) for Shop */;
