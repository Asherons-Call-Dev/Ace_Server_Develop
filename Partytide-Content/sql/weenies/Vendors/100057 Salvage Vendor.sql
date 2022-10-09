DELETE FROM `weenie` WHERE `class_Id` = 100057;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100057, 'custom-ace100057-salvagevendor', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100057,   1,         16) /* ItemType - Creature */
     , (100057,   2,         13) /* CreatureType - Golem */
     , (100057,   6,         -1) /* ItemsCapacity */
     , (100057,   7,         -1) /* ContainersCapacity */
     , (100057,  16,         32) /* ItemUseable - Remote */
     , (100057,  25,        100) /* Level */
     , (100057,  74,          0) /* MerchandiseItemTypes - None */
     , (100057,  75,          0) /* MerchandiseMinValue */
     , (100057,  76,     100000) /* MerchandiseMaxValue */
     , (100057,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (100057, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (100057, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100057,   1, True ) /* Stuck */
     , (100057,  19, False) /* Attackable */
     , (100057,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100057,  37,       1) /* BuyPrice */
     , (100057,  38,       1) /* SellPrice */
     , (100057,  39,     1.3) /* DefaultScale */
     , (100057,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100057,   1, 'Salvage Vendor') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100057,   1, 0x020016D7) /* Setup */
     , (100057,   2, 0x09000186) /* MotionTable */
     , (100057,   3, 0x20000015) /* SoundTable */
     , (100057,   7, 0x1000049A) /* ClothingBase */
     , (100057,   8, 0x06002B2E) /* Icon */
     , (100057,  22, 0x34000025) /* PhysicsEffectTable */
     , (100057,  57,     100055) /* AlternateCurrency - Salvage Vendor Currency */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (100057,   1, 680, 0, 0) /* Strength */
     , (100057,   2, 640, 0, 0) /* Endurance */
     , (100057,   3, 550, 0, 0) /* Quickness */
     , (100057,   4, 630, 0, 0) /* Coordination */
     , (100057,   5, 550, 0, 0) /* Focus */
     , (100057,   6, 585, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (100057,   1,   800, 0, 0, 1120) /* MaxHealth */
     , (100057,   3,   851, 0, 0, 1491) /* MaxStamina */
     , (100057,   5,   500, 0, 0, 1085) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (100057,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome adventurer, may you enjoy the gifts Asheron has sent for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (100057,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Enjoy your gifts, may they serve you well.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (100057, 4, 100059, -1, 0, 0, False) /* Create Bag of Salvaged Granite (100059) for Shop */
     , (100057, 4, 100060, -1, 0, 0, False) /* Create Bag of Salvaged Iron (100060) for Shop */
     , (100057, 4, 100062, -1, 0, 0, False) /* Create Bag of Salvaged Mahogany(100062) for Shop */
     , (100057, 4, 100063, -1, 0, 0, False) /* Create Bag of Salvaged Oak (100063) for Shop */
     , (100057, 4, 100064, -1, 0, 0, False) /* Create Bag of Salvaged Pine (100064) for Shop */
     , (100057, 4, 100065, -1, 0, 0, False) /* Create Bag of Salvaged Steel (100065) for Shop */
     , (100057, 4, 100066, -1, 0, 0, False) /* Create Bag of Salvaged Velvet (100066) for Shop */
     , (100057, 4, 100067, -1, 0, 0, False) /* Create Bag of Salvaged Brass (100067) for Shop */
     , (100057, 4, 100068, -1, 0, 0, False) /* Create Bag of Salvaged Green Garnet (100068) for Shop */
     , (100057, 4, 100069, -1, 0, 0, False) /* Create Bag of Salvaged Ivory (100069) for Shop */
     , (100057, 4, 100070, -1, 0, 0, False) /* Create Bag of Salvaged Leather (100070) for Shop */
	 , (100057, 4, 100152, -1, 0, 0, False) /* Create Bag of Salvaged Gold (100152) for Shop */
     , (100057, 4, 100071, -1, 0, 0, False) /* Create Bag of Salvaged Moonstone (100071) for Shop */
     , (100057, 4, 100072, -1, 0, 0, False) /* Create Bag of Salvaged Opal (100072) for Shop */
     , (100057, 4, 100073, -1, 0, 0, False) /* Create Bag of Salvaged Sandstone (100073) for Shop */
	 , (100057, 4, 100074, -1, 0, 0, False) /* Create Bag of Salvaged Alabaster (100074) for Shop */
     , (100057, 4, 100075, -1, 0, 0, False) /* Create Bag of Salvaged Armoredillo Hide (100075) for Shop */
     , (100057, 4, 100076, -1, 0, 0, False) /* Create Bag of Salvaged Bronze (100076) for Shop */
     , (100057, 4, 100077, -1, 0, 0, False) /* Create Bag of Salvaged Ceramic (100077) for Shop */
     , (100057, 4, 100078, -1, 0, 0, False) /* Create Bag of Salvaged Reedshark Hide (100078) for Shop */
     , (100057, 4, 100079, -1, 0, 0, False) /* Create Bag of Salvaged Wool (100079) for Shop */
     , (100057, 4, 100080, -1, 0, 0, False) /* Create Bag of Salvaged Marble (100080) for Shop */
	 , (100057, 4, 100061, -1, 0, 0, False) /* Create Bag of Salvaged Linen (100061) for Shop */;
