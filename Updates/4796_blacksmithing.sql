-- Blacksmithing

-- Weaponsmith
-- Kelgruk Bloodaxe 7231
UPDATE `creature_template` SET `NpcFlags` = 1 WHERE `entry` IN (7231); -- 3.3.5 sniff (TBC has list for him same as below = 134)
-- Borgus Steelhand 7232
UPDATE `creature_template` SET `NpcFlags` = 1 WHERE `entry` IN (7232); -- 3.3.5 sniff (TBC has list for him same as below = 134)
-- Ironus Coldsteel 11146
UPDATE gossip_menu_option SET option_text = 'I require training.', option_broadcast_text = 6499, condition_id = 10 WHERE menu_id = 3201 AND id = 0;
-- Borgosh Corebender 11178 - gossip corrected 
UPDATE gossip_menu_option SET option_text = 'I require training.', option_broadcast_text = 6499, condition_id = 10 WHERE menu_id = 3202 AND id = 0;
-- Kradu Grimblade 20124 - TBC+
UPDATE gossip_menu_option SET option_text = 'I require training.', option_broadcast_text = 6499, condition_id = 10 WHERE menu_id = 9131 AND id = 0;
UPDATE gossip_menu_option SET option_text = 'I wish to unlearn Weaponsmithing!', option_broadcast_text = 19007, action_menu_id = -1, action_script_id = 320101, box_money = 100000, box_text = 'Forgetting your Weaponsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Weaponsmithing to create!', box_broadcast_text = 19008, condition_id = 20477 WHERE menu_id = 9131 AND id = 1;
-- Imindril Spearsong 29505 - WotLK ONLY
UPDATE `creature_template` SET `TrainerSpell` = 2018, `TrainerTemplateId` = 134 WHERE `entry` IN (29505);
-- list becomes available after player learn Basic Blacksmithing skill - confirmed
UPDATE `creature_template` SET `TrainerSpell` = 0, `TrainerTemplateId` = 134 WHERE `entry` IN (11178,11146,20124);
-- list updated
DELETE FROM npc_trainer WHERE entry IN (7231,7232,11178,11146,20124,29505);
DELETE FROM `npc_trainer_template` WHERE entry IN (134); -- 134 - comes from sniff
INSERT INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`,`condition_id`) VALUES
(134,2020,10,0,0,0,NULL,NULL,NULL,0), -- makes Recipies submenu open
(134,10003,13500,164,235,0,NULL,NULL,NULL,0),
(134,10007,13500,164,245,0,NULL,NULL,NULL,0),
(134,10011,13500,164,250,0,NULL,NULL,NULL,0),
(134,10015,13500,164,260,0,NULL,NULL,NULL,0),
(134,34535,90000,164,350,0,17039,NULL,NULL,0), -- 17039
(134,34537,225000,164,375,0,17039,34535,NULL,0), -- 17039 34535
(134,34538,90000,164,350,0,17039,NULL,NULL,0), -- 17039
(134,34540,225000,164,375,0,17039,34538,NULL,0), -- 17039 34538
(134,34541,90000,164,350,0,17041,NULL,NULL,0), -- 17041
(134,34542,225000,164,375,0,17041,34541,NULL,0), -- 17041 34541
(134,34543,90000,164,350,0,17041,NULL,NULL,0), -- 17041
(134,34544,225000,164,375,0,17041,34543,NULL,0), -- 17041 34543
(134,34545,90000,164,350,0,17040,NULL,NULL,0), -- 17040
(134,34546,225000,164,375,0,17040,34545,NULL,0), -- 17040 34545
(134,34547,90000,164,350,0,17040,NULL,NULL,0), -- 17040
(134,34548,225000,164,375,0,17040,34547,NULL,0), -- 17040 34547
(134,36125,9000,164,260,0,9787,NULL,NULL,0), -- 9787
(134,36126,9000,164,260,0,9787,NULL,NULL,0), -- 9787
(134,36128,9000,164,260,0,9787,NULL,NULL,0), -- 9787
(134,36131,36000,164,330,0,17039,NULL,NULL,0), -- 17039
(134,36133,36000,164,330,0,17039,NULL,NULL,0), -- 17039
(134,36134,36000,164,330,0,17041,NULL,NULL,0), -- 17041
(134,36135,36000,164,330,0,17041,NULL,NULL,0), -- 17041
(134,36136,36000,164,330,0,17040,NULL,NULL,0), -- 17040
(134,36137,36000,164,330,0,17040,NULL,NULL,0), -- 17040
(134,36258,450000,164,375,0,17039,34537,NULL,0), -- 17039 34537
(134,36259,450000,164,375,0,17039,34540,NULL,0), -- 17039 34540
(134,36260,450000,164,375,0,17041,34542,NULL,0), -- 17041 34542
(134,36261,450000,164,375,0,17041,34544,NULL,0), -- 17041 34544
(134,36262,450000,164,375,0,17040,34546,NULL,0), -- 17040 34546
(134,36263,450000,164,375,0,17040,34548,NULL,0), -- 17040 34548
(134,55183,45000,164,415,0,9788,NULL,NULL,0), -- 9787
(134,55184,45000,164,415,0,9788,NULL,NULL,0), -- 9787
(134,55185,45000,164,415,0,9788,NULL,NULL,0); -- 9787

-- Armorsmwith
-- Shayis Steelfury 7230
UPDATE `creature_template` SET `NpcFlags` = 1 WHERE `entry` IN (7230); -- 3.3.5 sniff
-- Grumnus Steelshaper 5164
UPDATE gossip_menu_option SET option_text = 'I require training.', option_broadcast_text = 6499, condition_id = 10 WHERE menu_id = 597 AND id = 0;
-- Okothos Ironrager 11177
UPDATE gossip_menu_option SET option_text = 'I require training.', option_broadcast_text = 6499, condition_id = 10 WHERE menu_id = 3203 AND id = 0;
-- Zula Slagfury 20125 - TBC+
UPDATE gossip_menu_option SET option_text = 'I require training.', option_broadcast_text = 6499, condition_id = 10 WHERE menu_id = 9132 AND id = 0;
DELETE FROM gossip_menu_option WHERE menu_id = 9132 AND id = 1;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(9132,1,0,'I wish to unlearn Armorsmithing!',19010,1,1,-1,0,59701,0,100000,'Forgetting your Armorsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require Armorsmithing to create!',19011,20480);
-- Orland Schaeffer 29506 - WotLK ONLY
UPDATE `creature_template` SET `TrainerTemplateId` = 133 WHERE `entry` IN (29506);
-- list becomes available after player learn Basic Blacksmithing skill - confirmed
UPDATE `creature_template` SET `TrainerSpell` = 0, `TrainerTemplateId` = 133 WHERE `entry` IN (5164,11177,20125,29506);
-- list updated
DELETE FROM npc_trainer WHERE entry IN (7230,5164,11177,20125,29506);
DELETE FROM `npc_trainer_template` WHERE entry IN (133); -- 133 - comes from sniff
INSERT INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`,`condition_id`) VALUES
(133,2020,10,0,0,0,NULL,NULL,NULL,0), -- makes Recipies submenu open
(133,9954,9000,164,225,0,NULL,NULL,NULL,0),
(133,9974,9000,164,245,0,NULL,NULL,NULL,0),
(133,34533,90000,164,350,0,9788,NULL,NULL,0), -- 9788
(133,34529,90000,164,350,0,9788,NULL,NULL,0), -- 9788
(133,34530,225000,164,375,0,9788,34529,NULL,0), -- 9788 34529
(133,34534,225000,164,375,0,9788,34533,NULL,0), -- 9788 34533
(133,36122,9000,164,260,0,9788,NULL,NULL,0), -- 9788
(133,36124,9000,164,260,0,9788,NULL,NULL,0), -- 9788
(133,36129,36000,164,330,0,9788,NULL,NULL,0), -- 9788
(133,36130,36000,164,330,0,9788,NULL,NULL,0), -- 9788
(133,36256,450000,164,375,0,9788,34530,NULL,0), -- 9788 34530
(133,36257,450000,164,375,0,9788,34534,NULL,0), -- 9788 34534 
(133,55187,45000,164,415,0,9788,NULL,NULL,0), -- 9788
(133,55186,45000,164,415,0,9788,NULL,NULL,0); -- 9788
