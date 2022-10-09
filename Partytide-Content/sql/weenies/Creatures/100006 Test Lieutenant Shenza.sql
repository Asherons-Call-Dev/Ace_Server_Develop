DELETE FROM `weenie` WHERE `class_Id` = 100006;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (100006, 'aceTest100006-lieutenantshenza', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (100006,   1,         16) /* ItemType - Creature */
     , (100006,   2,         22) /* CreatureType - Shadow */
     , (100006,   3,         93) /* PaletteTemplate - DyeSpringBlack */
     , (100006,   6,         -1) /* ItemsCapacity */
     , (100006,   7,         -1) /* ContainersCapacity */
     , (100006,  16,          1) /* ItemUseable - No */
     , (100006,  25,        160) /* Level */
     , (100006,  40,          2) /* CombatMode - Melee */
     , (100006,  68,          3) /* TargetingTactic - Random, Focused */
     , (100006,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (100006, 113,          1) /* Gender - Male */
     , (100006, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (100006, 140,          1) /* AiOptions - CanOpenDoors */
     , (100006, 146,     470000) /* XpOverride */
     , (100006, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (100006,   1, True ) /* Stuck */
     , (100006,   6, False) /* AiUsesMana */
     , (100006,  42, True ) /* AllowEdgeSlide */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (100006,   1,       5) /* HeartbeatInterval */
     , (100006,   2,       0) /* HeartbeatTimestamp */
     , (100006,   3,    0.69) /* HealthRate */
     , (100006,   4,     2.5) /* StaminaRate */
     , (100006,   5,       1) /* ManaRate */
     , (100006,  12,     0.5) /* Shade */
     , (100006,  13,       1) /* ArmorModVsSlash */
     , (100006,  14,     0.8) /* ArmorModVsPierce */
     , (100006,  15,    0.85) /* ArmorModVsBludgeon */
     , (100006,  16,     0.6) /* ArmorModVsCold */
     , (100006,  17,     1.1) /* ArmorModVsFire */
     , (100006,  18,    0.69) /* ArmorModVsAcid */
     , (100006,  19,       1) /* ArmorModVsElectric */
     , (100006,  31,      28) /* VisualAwarenessRange */
     , (100006,  34,     1.1) /* PowerupTime */
     , (100006,  36,       1) /* ChargeSpeed */
     , (100006,  39,     1.2) /* DefaultScale */
     , (100006,  64,     0.8) /* ResistSlash */
     , (100006,  65,     0.5) /* ResistPierce */
     , (100006,  66,    0.69) /* ResistBludgeon */
     , (100006,  67,    0.82) /* ResistFire */
     , (100006,  68,     0.1) /* ResistCold */
     , (100006,  69,     0.2) /* ResistAcid */
     , (100006,  70,     0.2) /* ResistElectric */
     , (100006,  71,       1) /* ResistHealthBoost */
     , (100006,  72,       1) /* ResistStaminaDrain */
     , (100006,  73,       1) /* ResistStaminaBoost */
     , (100006,  74,       1) /* ResistManaDrain */
     , (100006,  75,       1) /* ResistManaBoost */
     , (100006,  80,     1.5) /* AiUseMagicDelay */
     , (100006, 104,      10) /* ObviousRadarRange */
     , (100006, 122,       3) /* AiAcquireHealth */
     , (100006, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (100006,   1, 'Lieutenant Fuck You') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (100006,   1, 0x02000001) /* Setup */
     , (100006,   2, 0x09000001) /* MotionTable */
     , (100006,   3, 0x20000001) /* SoundTable */
     , (100006,   4, 0x30000028) /* CombatTable */
     , (100006,   6, 0x0400007E) /* PaletteBase */
     , (100006,   8, 0x06001BBE) /* Icon */
     , (100006,  22, 0x34000063) /* PhysicsEffectTable */
     , (100006,  32,       5920) /* WieldedTreasureType - 
                                   Wield Shadow Blade (33080) | Probability: 10%
                                   Wield Shield of Isin Dule (33105) | Probability: 100%
                                   Wield Shadow Blade (33081) | Probability: 10%
                                   Wield Shield of Isin Dule (33105) | Probability: 100%
                                   Wield Shadow Blade (33082) | Probability: 10%
                                   Wield Shield of Isin Dule (33105) | Probability: 100%
                                   Wield Shadow Blade (33083) | Probability: 10%
                                   Wield Shield of Isin Dule (33105) | Probability: 100%
                                   Wield Shadow Blade (33084) | Probability: 60.000004%
                                   Wield Shield of Isin Dule (33105) | Probability: 100% */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (100006,   1, 180, 0, 0) /* Strength */
     , (100006,   2, 200, 0, 0) /* Endurance */
     , (100006,   3, 240, 0, 0) /* Quickness */
     , (100006,   4, 220, 0, 0) /* Coordination */
     , (100006,   5, 200, 0, 0) /* Focus */
     , (100006,   6, 130, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (100006,   1,  2650, 0, 0, 2750) /* MaxHealth */
     , (100006,   3,  2720, 0, 0, 2920) /* MaxStamina */
     , (100006,   5,  2740, 0, 0, 2870) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (100006,  6, 0, 3, 0, 400, 0, 0) /* MeleeDefense        Specialized */
     , (100006,  7, 0, 3, 0, 440, 0, 0) /* MissileDefense      Specialized */
     , (100006, 15, 0, 3, 0, 323, 0, 0) /* MagicDefense        Specialized */
     , (100006, 31, 0, 3, 0, 317, 0, 0) /* CreatureEnchantment Specialized */
     , (100006, 33, 0, 3, 0, 317, 0, 0) /* LifeMagic           Specialized */
     , (100006, 34, 0, 3, 0, 317, 0, 0) /* WarMagic            Specialized */
     , (100006, 45, 0, 3, 0, 407, 0, 0) /* LightWeapons        Specialized */
     , (100006, 46, 0, 3, 0, 387, 0, 0) /* FinesseWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (100006,  0,  4,  0,    0,  190,  190,  160,  169,  133,  190,  141,  160,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (100006,  1,  4,  0,    0,  190,  190,  160,  169,  133,  190,  141,  160,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (100006,  2,  4,  0,    0,  190,  190,  160,  169,  133,  190,  141,  160,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (100006,  3,  4,  0,    0,  190,  190,  160,  169,  133,  190,  141,  160,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (100006,  4,  4,  0,    0,  190,  190,  160,  169,  133,  190,  141,  160,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (100006,  5,  4, 60, 0.75,  190,  190,  160,  169,  133,  190,  141,  160,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (100006,  6,  4,  0,    0,  190,  190,  160,  169,  133,  190,  141,  160,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (100006,  7,  4,  0,    0,  190,  190,  160,  169,  133,  190,  141,  160,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (100006,  8,  4, 60, 0.75,  190,  190,  160,  169,  133,  190,  141,  160,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (100006,   234,   2.02)  /* Vulnerability Other VI */
     , (100006,   267,   2.02)  /* Defenselessness Other VI */
     , (100006,   285,   2.02)  /* Magic Yield Other VI */
     , (100006,   628,   2.01)  /* Life Magic Ineptitude Other VI */
     , (100006,  1065,   2.02)  /* Cold Vulnerability Other VI */
     , (100006,  1089,   2.02)  /* Lightning Vulnerability Other VI */
     , (100006,  1132,   2.02)  /* Blade Vulnerability Other VI */
     , (100006,  1156,   2.02)  /* Piercing Vulnerability Other VI */
     , (100006,  1784,   2.04)  /* Horizon's Blades */
     , (100006,  1785,   2.04)  /* Cassius' Ring of Fire */
     , (100006,  1786,   2.04)  /* Nuhmudira's Spines */
     , (100006,  1787,   2.04)  /* Halo of Frost */
     , (100006,  1788,   2.04)  /* Eye of the Storm */
     , (100006,  2053,   2.01)  /* Executor's Blessing */
     , (100006,  2056,   2.02)  /* Ataxia */
     , (100006,  2084,   2.01)  /* Belly of Lead */
     , (100006,  2125,   2.04)  /* Flensing Wings */
     , (100006,  2130,   2.04)  /* Infernae */
     , (100006,  2134,   2.04)  /* Fusillade */
     , (100006,  2138,   2.04)  /* Blizzard */
     , (100006,  2142,   2.04)  /* Tempest */
     , (100006,  2328,   2.01)  /* Vitality Siphon */
     , (100006,  2329,   2.01)  /* Essence Void */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (100006,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  88 /* LocalSignal */, 0, 1, NULL, 'LtDead', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (100006, 2, 21159,  1, 93, 0, False) /* Create Covenant Tassets (21159) for Wield */
     , (100006, 2, 21152,  1, 93, 0, False) /* Create Covenant Breastplate (21152) for Wield */
     , (100006, 2, 21157,  1, 93, 0, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (100006, 2, 21151,  1, 93, 0, False) /* Create Covenant Bracers (21151) for Wield */
     , (100006, 2, 21153,  1, 93, 0, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (100006, 2, 21154,  1, 93, 0, False) /* Create Covenant Girth (21154) for Wield */
     , (100006, 2, 21155,  1, 93, 0, False) /* Create Covenant Greaves (21155) for Wield */
     , (100006, 2, 21150,  1, 93, 0, False) /* Create Covenant Sollerets (21150) for Wield */
     , (100006, 2, 87038,  1, 93, 0, False) /* Create Helm of Isin Dule (87038) for Wield */
     , (100006, 2,  2597,  1, 92, 0, False) /* Create Pants (2597) for Wield */
     , (100006, 2,  2588,  1, 14, 0, False) /* Create Shirt (2588) for Wield */
	 , (100006, 9, 33608,  0, 0, 0.01, False) /* Pathwarden Supply Key (33608) for ContainTreasure */;
