DELETE FROM `recipe` WHERE `id` = 3846;

INSERT INTO `recipe` (`id`, `unknown_1`, `skill`, `difficulty`, `salvage_Type`, `success_W_C_I_D`, `success_Amount`, `success_Message`, `fail_W_C_I_D`, `fail_Amount`, `fail_Message`, `success_Destroy_Source_Chance`, `success_Destroy_Source_Amount`, `success_Destroy_Source_Message`, `success_Destroy_Target_Chance`, `success_Destroy_Target_Amount`, `success_Destroy_Target_Message`, `fail_Destroy_Source_Chance`, `fail_Destroy_Source_Amount`, `fail_Destroy_Source_Message`, `fail_Destroy_Target_Chance`, `fail_Destroy_Target_Amount`, `fail_Destroy_Target_Message`, `data_Id`, `last_Modified`)
VALUES (3846, 0, 29 /* ArmorTinkering */, 0, 1, 0, 0, 'You apply the alabaster.', 0, 0, 'You apply the alabaster, but in the process you destroy the target.', 1, 1, NULL, 0, 0, NULL, 1, 1, NULL, 1, 1, NULL, 0, '2005-02-09 10:00:00');

INSERT INTO `recipe_requirements_int` (`recipe_Id`, `index`, `stat`, `value`, `enum`, `message`)
VALUES (3846, 0, 105, 1, 2, 'The target item cannot be tinkered!') /* Target.ItemWorkmanship LessThan 1 */
     , (3846, 0, 171, 10, 3, 'The target item has been tinkered too many times already!') /* Target.NumTimesTinkered GreaterThanEqual 10 */
     , (3846, 1,  92, 100, 2, 'The material is not complete!') /* Source.Structure LessThan 100 */;

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (3846, True, 0, 0, 0, False, 0x38000017, 0, 0);

INSERT INTO `recipe_mod` (`recipe_Id`, `executes_On_Success`, `health`, `stamina`, `mana`, `unknown_7`, `data_Id`, `unknown_9`, `instance_Id`)
VALUES (3846, True, 0, 0, 0, False, 0, 0, 0);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `recipe_mods_string` (`recipe_Mod_Id`, `index`, `stat`, `value`, `enum`, `source`)
VALUES (@parent_id, 3,  39, NULL, 3, 0) /* On Player.SuccessResult CopyFromSourceToTarget TinkerName to Result */;

DELETE FROM `cook_book` WHERE `recipe_Id` = 3846;

INSERT INTO `cook_book` (`recipe_Id`, `source_W_C_I_D`, `target_W_C_I_D`, `last_Modified`)
VALUES (3846, 100074 /* Salvage */,    35 /* Chainmail Basinet */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    36 /* Leather Bracers */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    37 /* Scalemail Bracers */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    38 /* Studded Leather Bracers */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    39 /* Leather Breastplate */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    40 /* Platemail Breastplate */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    41 /* Scalemail Breastplate */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    42 /* Studded Leather Breastplate */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    43 /* Yoroi Breastplate */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    44 /* Buckler */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    45 /* Leather Cap */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    46 /* Metal Cap */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    47 /* Leather Coat */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    48 /* Studded Leather Coat */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    50 /* Leather Cuirass */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    51 /* Platemail Cuirass */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    52 /* Scalemail Cuirass */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    53 /* Studded Leather Cuirass */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    54 /* Yoroi Cuirass */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    55 /* Chainmail Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    56 /* Leather Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    57 /* Platemail Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    58 /* Scalemail Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    59 /* Studded Leather Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    60 /* Leather Girth */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    61 /* Platemail Girth */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    62 /* Scalemail Girth */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    63 /* Studded Leather Girth */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    64 /* Yoroi Girth */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    65 /* Leather Greaves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    66 /* Platemail Greaves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    67 /* Scalemail Greaves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    68 /* Studded Leather Greaves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    69 /* Yoroi Greaves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    71 /* Chainmail Hauberk */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    72 /* Platemail Hauberk */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    73 /* Scalemail Hauberk */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    74 /* Heaume */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    75 /* Helmet */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    76 /* Horned Helm */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    77 /* Kabuton */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    78 /* Kote */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    80 /* Chainmail Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    81 /* Leather Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    82 /* Platemail Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    83 /* Scalemail Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    84 /* Studded Leather Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    85 /* Chainmail Coif */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    86 /* Leather Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    87 /* Platemail Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    88 /* Scalemail Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    89 /* Studded Leather Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    90 /* Yoroi Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    91 /* Kite Shield */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    92 /* Large Kite Shield */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    93 /* Round Shield */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    94 /* Large Round Shield */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    95 /* Tower Shield */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    96 /* Chainmail Shirt */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    97 /* Leather Shirt */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    98 /* Scalemail Shirt */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,    99 /* Studded Leather Shirt */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   101 /* Chainmail Sleeves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   102 /* Leather Sleeves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   103 /* Platemail Sleeves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   104 /* Scalemail Sleeves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   105 /* Studded Leather Sleeves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   106 /* Yoroi Sleeves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   107 /* Sollerets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   108 /* Chainmail Tassets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   109 /* Leather Tassets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   110 /* Platemail Tassets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   111 /* Scalemail Tassets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   112 /* Studded Leather Tassets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   113 /* Yoroi Tassets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   114 /* Platemail Vambraces */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   115 /* Leather Boots */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   116 /* Studded Leather Boots */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   129 /* Sandals */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   132 /* Shoes */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   296 /* Crown */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   413 /* Chainmail Bracers */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   414 /* Chainmail Breastplate */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   415 /* Chainmail Girth */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   416 /* Chainmail Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   458 /* Leather Cowl */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   550 /* Baigha */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   551 /* Leather Basinet */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   552 /* Scalemail Basinet */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   554 /* Studded Leather Basinet */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   723 /* Studded Leather Cowl */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,   793 /* Scalemail Coif */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  2197 /* Iron Crown */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  2437 /* Yoroi Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  2605 /* Chainmail Greaves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  2606 /* Boots */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  6003 /* Koujia Breastplate */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  6004 /* Koujia Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  6005 /* Koujia Sleeves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  6043 /* Celdon Girth */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  6044 /* Celdon Breastplate */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  6045 /* Celdon Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  6046 /* Amuli Coat */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  6047 /* Amuli Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  6048 /* Celdon Sleeves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  7897 /* Steel Toed Boots */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  8396 /* Heaume */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  8488 /* Armet */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */,  8489 /* Heaume */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 21150 /* Covenant Sollerets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 21151 /* Covenant Bracers */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 21152 /* Covenant Breastplate */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 21153 /* Covenant Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 21154 /* Covenant Girth */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 21155 /* Covenant Greaves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 21156 /* Covenant Helm */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 21157 /* Covenant Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 21158 /* Covenant Shield */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 21159 /* Covenant Tassets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 24173 /* Jaleh's Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25636 /* Leather Helm */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25637 /* Leather Bracers */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25638 /* Leather Vest */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25639 /* Leather Jerkin */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25640 /* Leather Cowl */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25641 /* Leather Cuirass */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25642 /* Leather Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25643 /* Leather Girth */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25644 /* Leather Greaves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25645 /* Leather Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25646 /* Long Leather Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25647 /* Leather Pants */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25648 /* Leather Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25649 /* Leather Shirt */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25650 /* Leather Shorts */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25651 /* Leather Sleeves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25652 /* Leather Tassets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 25661 /* Leather Boots */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27215 /* Chiran Coat */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27216 /* Chiran Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27217 /* Chiran Helm */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27218 /* Chiran Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27219 /* Chiran Sandals */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27220 /* Lorica Boots */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27221 /* Lorica Breastplate */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27222 /* Lorica Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27223 /* Lorica Helm */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27224 /* Lorica Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27225 /* Lorica Sleeves */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27226 /* Nariyid Boots */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27227 /* Nariyid Breastplate */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27228 /* Nariyid Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27229 /* Nariyid Girth */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27230 /* Nariyid Helm */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27231 /* Nariyid Leggings */, '2005-02-09 10:00:00')
     , (3846, 100074 /* Salvage */, 27232 /* Nariyid Sleeves */, '2005-02-09 10:00:00')
	 , (3846, 20980 /* Salvage */,    35 /* Chainmail Basinet */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    36 /* Leather Bracers */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    37 /* Scalemail Bracers */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    38 /* Studded Leather Bracers */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    39 /* Leather Breastplate */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    40 /* Platemail Breastplate */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    41 /* Scalemail Breastplate */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    42 /* Studded Leather Breastplate */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    43 /* Yoroi Breastplate */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    44 /* Buckler */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    45 /* Leather Cap */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    46 /* Metal Cap */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    47 /* Leather Coat */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    48 /* Studded Leather Coat */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    50 /* Leather Cuirass */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    51 /* Platemail Cuirass */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    52 /* Scalemail Cuirass */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    53 /* Studded Leather Cuirass */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    54 /* Yoroi Cuirass */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    55 /* Chainmail Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    56 /* Leather Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    57 /* Platemail Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    58 /* Scalemail Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    59 /* Studded Leather Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    60 /* Leather Girth */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    61 /* Platemail Girth */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    62 /* Scalemail Girth */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    63 /* Studded Leather Girth */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    64 /* Yoroi Girth */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    65 /* Leather Greaves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    66 /* Platemail Greaves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    67 /* Scalemail Greaves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    68 /* Studded Leather Greaves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    69 /* Yoroi Greaves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    71 /* Chainmail Hauberk */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    72 /* Platemail Hauberk */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    73 /* Scalemail Hauberk */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    74 /* Heaume */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    75 /* Helmet */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    76 /* Horned Helm */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    77 /* Kabuton */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    78 /* Kote */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    80 /* Chainmail Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    81 /* Leather Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    82 /* Platemail Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    83 /* Scalemail Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    84 /* Studded Leather Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    85 /* Chainmail Coif */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    86 /* Leather Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    87 /* Platemail Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    88 /* Scalemail Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    89 /* Studded Leather Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    90 /* Yoroi Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    91 /* Kite Shield */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    92 /* Large Kite Shield */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    93 /* Round Shield */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    94 /* Large Round Shield */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    95 /* Tower Shield */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    96 /* Chainmail Shirt */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    97 /* Leather Shirt */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    98 /* Scalemail Shirt */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,    99 /* Studded Leather Shirt */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   101 /* Chainmail Sleeves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   102 /* Leather Sleeves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   103 /* Platemail Sleeves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   104 /* Scalemail Sleeves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   105 /* Studded Leather Sleeves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   106 /* Yoroi Sleeves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   107 /* Sollerets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   108 /* Chainmail Tassets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   109 /* Leather Tassets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   110 /* Platemail Tassets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   111 /* Scalemail Tassets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   112 /* Studded Leather Tassets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   113 /* Yoroi Tassets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   114 /* Platemail Vambraces */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   115 /* Leather Boots */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   116 /* Studded Leather Boots */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   129 /* Sandals */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   132 /* Shoes */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   296 /* Crown */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   413 /* Chainmail Bracers */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   414 /* Chainmail Breastplate */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   415 /* Chainmail Girth */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   416 /* Chainmail Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   458 /* Leather Cowl */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   550 /* Baigha */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   551 /* Leather Basinet */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   552 /* Scalemail Basinet */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   554 /* Studded Leather Basinet */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   723 /* Studded Leather Cowl */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,   793 /* Scalemail Coif */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  2197 /* Iron Crown */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  2437 /* Yoroi Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  2605 /* Chainmail Greaves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  2606 /* Boots */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  6003 /* Koujia Breastplate */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  6004 /* Koujia Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  6005 /* Koujia Sleeves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  6043 /* Celdon Girth */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  6044 /* Celdon Breastplate */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  6045 /* Celdon Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  6046 /* Amuli Coat */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  6047 /* Amuli Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  6048 /* Celdon Sleeves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  7897 /* Steel Toed Boots */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  8396 /* Heaume */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  8488 /* Armet */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */,  8489 /* Heaume */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 21150 /* Covenant Sollerets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 21151 /* Covenant Bracers */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 21152 /* Covenant Breastplate */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 21153 /* Covenant Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 21154 /* Covenant Girth */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 21155 /* Covenant Greaves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 21156 /* Covenant Helm */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 21157 /* Covenant Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 21158 /* Covenant Shield */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 21159 /* Covenant Tassets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 24173 /* Jaleh's Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25636 /* Leather Helm */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25637 /* Leather Bracers */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25638 /* Leather Vest */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25639 /* Leather Jerkin */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25640 /* Leather Cowl */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25641 /* Leather Cuirass */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25642 /* Leather Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25643 /* Leather Girth */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25644 /* Leather Greaves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25645 /* Leather Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25646 /* Long Leather Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25647 /* Leather Pants */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25648 /* Leather Pauldrons */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25649 /* Leather Shirt */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25650 /* Leather Shorts */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25651 /* Leather Sleeves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25652 /* Leather Tassets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 25661 /* Leather Boots */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27215 /* Chiran Coat */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27216 /* Chiran Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27217 /* Chiran Helm */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27218 /* Chiran Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27219 /* Chiran Sandals */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27220 /* Lorica Boots */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27221 /* Lorica Breastplate */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27222 /* Lorica Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27223 /* Lorica Helm */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27224 /* Lorica Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27225 /* Lorica Sleeves */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27226 /* Nariyid Boots */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27227 /* Nariyid Breastplate */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27228 /* Nariyid Gauntlets */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27229 /* Nariyid Girth */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27230 /* Nariyid Helm */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27231 /* Nariyid Leggings */, '2005-02-09 10:00:00')
     , (3846, 20980 /* Salvage */, 27232 /* Nariyid Sleeves */, '2005-02-09 10:00:00');
