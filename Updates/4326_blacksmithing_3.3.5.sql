-- Blacksmithing 3.x.x WoTLK

SET @CONDITION := 20468;
DELETE FROM conditions WHERE condition_entry BETWEEN @CONDITION AND @CONDITION + 24;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(@CONDITION, 17, 17040, 0),
(@CONDITION+1, 17, 17041, 0),
(@CONDITION+2, 17, 17039, 0),
(@CONDITION+3, -2, @CONDITION, @CONDITION+1),
(@CONDITION+4, -2, @CONDITION+2, @CONDITION+3),
(@CONDITION+5, -3, @CONDITION+4, 0),
(@CONDITION+6, 15, 50, 1),
(@CONDITION+7, 7, 164, 250),
(@CONDITION+8, -1, @CONDITION+6, @CONDITION+7),
(@CONDITION+9, 17, 9787, 0),
(@CONDITION+10, -1, @CONDITION+8, @CONDITION+9),
(@CONDITION+11, -1, @CONDITION+5, @CONDITION+10),
(@CONDITION+12, 17, 9788, 0),
(@CONDITION+13, 8, 5284, 0),
(@CONDITION+14, 8, 5283, 0),
(@CONDITION+15, 8, 5302, 0),
(@CONDITION+16, 8, 5301, 0),
(@CONDITION+17, 7, 164, 225),
(@CONDITION+18, -2, @CONDITION+13, @CONDITION+14),
(@CONDITION+19, -2, @CONDITION+15, @CONDITION+16),
(@CONDITION+20, -2, @CONDITION+18, @CONDITION+19),
(@CONDITION+21, -2, @CONDITION+12, @CONDITION+9),
(@CONDITION+22, -3, @CONDITION+21, 0),
(@CONDITION+23, -1, @CONDITION+17, @CONDITION+20),
(@CONDITION+24, -1, @CONDITION+22, @CONDITION+23);
DELETE FROM `gossip_menu` WHERE `entry` in (597,6089,6090,6091,3182,3187);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(3182, 3937, 0, 0),
(3182, 3938, 0, @CONDITION+24),
(3187, 3953, 0, @CONDITION+24),
(3187, 3954, 0, 0),
(597, 1135, 0, 0),
(597, 1136, 0, 10),
(597, 1633, 0, @CONDITION+23),
(6090, 7245, 0, 0),
(6090, 7246, 0, @CONDITION),
(6089, 7243, 0, 0),
(6089, 7244, 0, @CONDITION+1),
(6091, 7247, 0, 0),
(6091, 7248, 0, @CONDITION+2);
DELETE FROM npc_text WHERE ID IN (7244,7246);
DELETE FROM npc_text_broadcast_text WHERE ID IN (7244,7246);
INSERT INTO npc_text_broadcast_text (ID, Prob0, BroadcastTextId0) VALUES
(7244, 1, 9984),
(7246, 1, 9987);
DELETE FROM `gossip_menu_option` WHERE `menu_id` in (6089,6090,6091,3182,3187,597,3203,3201,3202);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(6089, 0, 0, 'Please teach me how to become an axesmith, Kilram.', 9985, 1, 1, -1, 0, 608901, 0, 0, NULL, 0,@CONDITION+11),
(6089, 1, 0, 'I wish to unlearn Axesmithing!', 18986, 1, 1, -1, 0, 608902, 0, 1000000, 'Forgetting your Axesmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Axesmithing to create!',18987, @CONDITION+1),
(6090, 0, 0, 'Please teach me how to become a hammersmith, Lilith.', 9988,  1, 1, -1, 0, 609001, 0, 0, NULL, 0,@CONDITION+11),
(6090, 1, 0, 'I wish to unlearn Hammersmithing!', 18990,  1, 1, -1, 0, 609002, 0, 1000000, 'Forgetting your Hammersmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Hammersmithing to create!',18991, @CONDITION),
(6091, 0, 0, 'Please teach me how to become a swordsmith, Seril.', 9991,  1, 1, -1, 0, 609101, 0, 0, NULL, 0,@CONDITION+11),
(6091, 1, 0, 'I wish to unlearn Swordsmithing!', 18982,  1, 1, -1, 0, 609102, 0, 1000000, 'Forgetting your swordsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require swordsmithing to create!',18983, @CONDITION+2),
(3182, 0, 0, 'I wish to become an armorsmith.', 6476,  1, 1, -1, 0, 318201, 0, 0, NULL, 0,@CONDITION+24),
(3182, 1, 0, 'I wish to become a weaponsmith.', 6477,  1, 1, -1, 0, 318202, 0, 0, NULL, 0,@CONDITION+24),
(3187, 0, 0, 'I wish to become an armorsmith.', 6476,  1, 1, -1, 0, 318201, 0, 0, NULL, 0,@CONDITION+24),
(3187, 1, 0, 'I wish to become a weaponsmith.', 6477,  1, 1, -1, 0, 318202, 0, 0, NULL, 0,@CONDITION+24),
(597, 0, 3, 'Train me.', 3266,  5, 16, 0, 0, 0, 0, 0, NULL, 0,@CONDITION+12),
(597, 1, 0, 'I wish to unlearn Armorsmithing!', 19010,  1, 1, -1, 0, 59701, 0, 100000, 'Forgetting your Armorsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Armorsmithing to create!', 19011,@CONDITION+12),
(3203, 0, 3, 'Train me.', 3266,  5, 16, 0, 0, 0, 0, 0, NULL, 0,@CONDITION+12),
(3203, 1, 0, 'I wish to unlearn Armorsmithing!', 19010,  1, 1, -1, 0, 59701, 0, 100000, 'Forgetting your Armorsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Armorsmithing to create!', 19011,@CONDITION+12),
(3201, 0, 3, 'Train me.',3266 ,5, 16, 0, 0, 0, 0, 0, NULL, 0,@CONDITION+9),
(3201, 1, 0, 'I wish to unlearn Weaponsmithing!',19007, 1, 1, -1, 0, 320101, 0, 100000,'Forgetting your Weaponsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Weaponsmithing to create!', 19008, @CONDITION+9),
(3202, 0, 3, 'Train me.',3266, 5, 16, 0, 0, 0, 0, 0, NULL, 0,@CONDITION+9),
(3202, 1, 0, 'I wish to unlearn Weaponsmithing!',19007, 1, 1, -1, 0, 320101, 0, 100000,'Forgetting your Weaponsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Weaponsmithing to create!', 19008,@CONDITION+9);
DELETE FROM `dbscripts_on_gossip` WHERE `id` in (609001,609002,608901,608902,609101,609102,318201,318202,320101,59701);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(609001, 0, 15, 39099, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'cast Master Hammersmith'),
(608901, 0, 15, 39098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'cast Master Axesmith'),
(609101, 0, 15, 39097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'cast Master Swordsmith'),
(609002, 0, 15, 36441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'cast Forget (Unlearn Hammersmith specialization)'),
(608902, 0, 15, 36439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'cast Forget (Unlearn Axesmith specialization)'),
(609102, 0, 15, 36438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'cast Forget (Unlearn Swordsmith specialization)'),
(318202, 0, 15,  9789, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'cast Weaponsmith'),
(318201, 0, 15,  9790, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'cast Armorsmith'),
(320101, 0, 15, 36436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'cast Forget (Unlearn Weaponsmith specialization)'),
(59701, 0,  15, 36435, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'cast Forget (Unlearn Armorsmith specialization)');

-- Npcs related
-- Borgosh Corebender <Weaponsmith> 11178 - corrected for 3.3.5
DELETE FROM npc_trainer WHERE entry IN (11178);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel, condition_id) VALUES
(11178,10003,15000,164,235,0,0),
(11178,10007,15000,164,245,0,0),
(11178,10011,15000,164,250,0,0),
(11178,10015,15000,164,260,0,0),
-- req. 9787 'Weaponsmith'
(11178,36125,10000,164,260,0,0),
(11178,36126,10000,164,260,0,0),
(11178,36128,10000,164,260,0,0),
(11178,55183,50000,164,415,0,0),
(11178,55184,50000,164,415,0,0),
(11178,55185,50000,164,415,0,0),
-- req. 17039 'Master Swordsmith'
(11178,34535,100000,164,350,0,0),
(11178,34537,250000,164,375,0,0),
(11178,34538,100000,164,350,0,0),
(11178,34540,250000,164,375,0,0),
(11178,36131,40000,164,330,0,0),
(11178,36133,40000,164,330,0,0),
(11178,36258,500000,164,375,0,0),
(11178,36259,500000,164,375,0,0),
-- req. 17040 'Master Hammersmith'
(11178,34545,100000,164,350,0,0),
(11178,34546,250000,164,375,0,0),
(11178,34547,100000,164,350,0,0),
(11178,34548,250000,164,375,0,0),
(11178,36136,40000,164,330,0,0),
(11178,36137,40000,164,330,0,0),
(11178,36262,500000,164,375,0,0),
(11178,36263,500000,164,375,0,0),
-- req. 17041 'Master Axesmith'
(11178,34541,100000,164,350,0,0),
(11178,34542,250000,164,375,0,0),
(11178,34543,100000,164,350,0,0),
(11178,34544,250000,164,375,0,0),
(11178,36134,40000,164,330,0,0),
(11178,36135,40000,164,330,0,0),
(11178,36260,500000,164,375,0,0),
(11178,36261,500000,164,375,0,0);

-- Okothos Ironrager <Armorsmith> 11177 - corrected for 3.3.5
DELETE FROM npc_trainer WHERE entry IN (11177);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel, condition_id) VALUES
(11177,9954,8000,164,245,0,0),
(11177,9974,1000,164,245,0,0),
(11177,34529,100000,164,350,0,0),
(11177,34530,250000,164,375,0,0),
(11177,34533,100000,164,350,0,0),
(11177,34534,250000,164,375,0,0),
(11177,36122,10000,164,260,0,0),
(11177,36124,10000,164,260,0,0),
(11177,36129,40000,164,330,0,0),
(11177,36130,40000,164,330,0,0),
(11177,36256,500000,164,375,0,0),
(11177,36257,500000,164,375,0,0),
(11177,55186,50000,164,415,0,0),
(11177,55187,50000,164,415,0,0);

-- Grumnus Steelshaper <Armorsmith Trainer> 5164 - corrected for 3.3.5
DELETE FROM npc_trainer WHERE entry IN (5164);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel, condition_id) VALUES
(5164,9954,8000,164,245,0,0),
(5164,9974,1000,164,245,0,0),
(5164,34529,100000,164,350,0,0),
(5164,34530,250000,164,375,0,0),
(5164,34533,100000,164,350,0,0),
(5164,34534,250000,164,375,0,0),
(5164,36122,10000,164,260,0,0),
(5164,36124,10000,164,260,0,0),
(5164,36129,40000,164,330,0,0),
(5164,36130,40000,164,330,0,0),
(5164,36256,500000,164,375,0,0),
(5164,36257,500000,164,375,0,0),
(5164,55186,50000,164,415,0,0),
(5164,55187,50000,164,415,0,0);

-- Ironus Coldsteel <Weaponsmith Trainer> 11146 - corrected for 3.3.5
DELETE FROM npc_trainer WHERE entry IN (11146);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel, condition_id) VALUES
(11146,10003,15000,164,235,0,0),
(11146,10007,15000,164,245,0,0),
(11146,10011,15000,164,250,0,0),
(11146,10015,15000,164,260,0,0),
-- req. 9787 'Weaponsmith'
(11146,36125,10000,164,260,0,0),
(11146,36126,10000,164,260,0,0),
(11146,36128,10000,164,260,0,0),
(11146,55183,50000,164,415,0,0),
(11146,55184,50000,164,415,0,0),
(11146,55185,50000,164,415,0,0),
-- req. 17039 'Master Swordsmith'
(11146,34535,100000,164,350,0,0),
(11146,34537,250000,164,375,0,0),
(11146,34538,100000,164,350,0,0),
(11146,34540,250000,164,375,0,0),
(11146,36131,40000,164,330,0,0),
(11146,36133,40000,164,330,0,0),
(11146,36258,500000,164,375,0,0),
(11146,36259,500000,164,375,0,0),
-- req. 17040 'Master Hammersmith'
(11146,34545,100000,164,350,0,0),
(11146,34546,250000,164,375,0,0),
(11146,34547,500000,164,350,0,0),
(11146,34548,250000,164,375,0,0),
(11146,36136,40000,164,330,0,0),
(11146,36137,40000,164,330,0,0),
(11146,36262,500000,164,375,0,0),
(11146,36263,500000,164,375,0,0),
-- req. 17041 'Master Axesmith'
(11146,34541,100000,164,350,0,0),
(11146,34542,250000,164,375,0,0),
(11146,34543,100000,164,350,0,0),
(11146,34544,250000,164,375,0,0),
(11146,36134,40000,164,330,0,0),
(11146,36135,40000,164,330,0,0),
(11146,36260,500000,164,375,0,0),
(11146,36261,500000,164,375,0,0);
