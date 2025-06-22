-- IV - Champion questline

-- q.13846 'Contributin' To The Cause'
-- This quest became available at Champion rank.
UPDATE quest_template SET RequiredCondition = 20989 WHERE entry = 13846;
DELETE FROM conditions WHERE condition_entry BETWEEN 20987 AND 20989;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
/* existing conditions
(20869,8,13727,0,0,0,0,''), -- champion Darkspear
(20871,8,13728,0,0,0,0,''), -- champion Thunder Bluff
(20873,8,13726,0,0,0,0,''), -- champion Orgrimmar 
(20875,8,13729,0,0,0,0,''), -- champion Forsaken
(20877,8,13731,0,0,0,0,''), -- champion Silvermoon
(20885,8,13725,0,0,0,0,''), -- champion Darnassian 
(20887,8,13724,0,0,0,0,''), -- champion Exodar
(20879,8,13723,0,0,0,0,''), -- champion Gnomeregan 
(20881,8,13713,0,0,0,0,''), -- champion Ironforge
(20883,8,13699,0,0,0,0,''), -- champion Stormwind
*/
(20987,-2,20883,20881,20879,20887,0,''),
(20988,-2,20885,20877,20875,20873,0,''),
(20989,-2,20988,20987,20871,20869,0,'');

-- Quests: 'Taking Battle To The Enemy'
-- This quest became available at Champion rank.
-- careful theyre 4 versions for it 2 A+H and 2 for A+H for DK
-- 13789 - A
-- 13791 - A+DK
-- 13810 - H
-- 13813 - H+DK
UPDATE quest_template SET RequiredCondition = 20989 WHERE entry IN (13789,13791,13810,13813);
-- Quests: 'Among the Champions'
-- This quest became available at Champion rank.
-- careful theyre 4 versions for it 2 A+H and 2 for A+H for DK
-- 13790 - A
-- 13793 - A+DK
-- 13811 - H
-- 13814 - H+DK
UPDATE quest_template SET RequiredCondition = 20989 WHERE entry IN (13790,13793,13811,13814);

-- Quests: 'Battle Before The Citadel'
-- This quest became available at Champion rank.
-- careful theyre 4 versions for it 2 A+H and 2 for A+H for DK
-- 13861 - A
-- 13864 - A+DK
-- 13862 - H
-- 13863 - H+DK
UPDATE quest_template SET RequiredCondition = 20989 WHERE entry IN (13861,13864,13862,13863);

-- Quests: 'Threat From Above'
-- This quest became available after q.13664 rewarded
-- careful theyre 4 versions for it 2 A+H and 2 for A+H for DK
-- 13682 - A
-- 13788 - A+DK
-- 13809 - H
-- 13812 - H+DK
UPDATE quest_template SET RequiredCondition = 0, PrevQuestId = 13664 WHERE entry IN (13682,13788,13809,13812);

-- Champions
UPDATE creature_template SET Detection = 100, Pursuit = 300000, DamageMultiplier = 11 WHERE Entry IN (33746,33740,33743,33747,33738,33739,33749,33745,33744,33748);
DELETE FROM conditions WHERE condition_entry IN (20923,20926,20927);
-- Silvermoon Champion 33746
DELETE FROM `gossip_menu` WHERE `entry` IN (10459);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10459, 14421, 0, 20897), -- default
(10459, 14489, 0, 0); -- with aura (player already kicked one of them)
DELETE FROM gossip_menu_option WHERE menu_id IN (10459);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10459,0,0,'I am ready to fight!',33430,1,1,-1,0,1045901,0,0,NULL,0,20990);
DELETE FROM conditions WHERE condition_entry IN (20990);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- 20338 - aura from item equiped
-- 20361 - riding aura
-- 20897 - missing aura (Bested the Undercity)
-- 20989 - champion rank
(20990,-1,20989,20897,20361,20338,0,'');
-- Gnomeregan Champion 33740
DELETE FROM `gossip_menu` WHERE `entry` IN (10455);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10455, 14421, 0, 20907), -- default
(10455, 14489, 0, 0); -- with aura (player already kicked one of them)
DELETE FROM gossip_menu_option WHERE menu_id IN (10455);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10455,0,0,'I am ready to fight!',33430,1,1,-1,0,1045501,0,0,NULL,0,20991);
DELETE FROM conditions WHERE condition_entry IN (20991);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- 20338 - aura from item equiped
-- 20361 - riding aura
-- 20907 - missing aura (Bested Gnomeregan)
-- 20989 - champion rank
(20991,-1,20989,20907,20361,20338,0,'');
-- Ironforge Champion 33743
DELETE FROM `gossip_menu` WHERE `entry` IN (10456);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10456, 14421, 0, 20905), -- default
(10456, 14489, 0, 0); -- with aura (player already kicked one of them)
DELETE FROM gossip_menu_option WHERE menu_id IN (10456);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10456,0,0,'I am ready to fight!',33430,1,1,-1,0,1045501,0,0,NULL,0,20992);
DELETE FROM conditions WHERE condition_entry IN (20992);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- 20338 - aura from item equiped
-- 20361 - riding aura
-- 20905 - missing aura (Bested Ironforge)
-- 20989 - champion rank
(20992,-1,20989,20905,20361,20338,0,'');
-- Stormwind Champion 33747
DELETE FROM `gossip_menu` WHERE `entry` IN (10460);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10460, 14421, 0, 20903), -- default
(10460, 14489, 0, 0); -- with aura (player already kicked one of them)
DELETE FROM gossip_menu_option WHERE menu_id IN (10460);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10460,0,0,'I am ready to fight!',33430,1,1,-1,0,1045501,0,0,NULL,0,20993);
DELETE FROM conditions WHERE condition_entry IN (20993);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- 20338 - aura from item equiped
-- 20361 - riding aura
-- 20903 - missing aura (Bested Ironforge)
-- 20989 - champion rank
(20993,-1,20989,20903,20361,20338,0,'');
-- Darnassus Champion 33738
DELETE FROM `gossip_menu` WHERE `entry` IN (10453);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10453, 14421, 0, 20909), -- default
(10453, 14489, 0, 0); -- with aura (player already kicked one of them)
DELETE FROM gossip_menu_option WHERE menu_id IN (10453);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10453,0,0,'I am ready to fight!',33430,1,1,-1,0,1045501,0,0,NULL,0,20994);
DELETE FROM conditions WHERE condition_entry IN (20994);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- 20338 - aura from item equiped
-- 20361 - riding aura
-- 20909 - missing aura (Bested Darnassus)
-- 20989 - champion rank
(20994,-1,20989,20909,20361,20338,0,'');
-- Exodar Champion 33739
DELETE FROM `gossip_menu` WHERE `entry` IN (10454);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10454, 14421, 0, 20911), -- default
(10454, 14489, 0, 0); -- with aura (player already kicked one of them)
DELETE FROM gossip_menu_option WHERE menu_id IN (10454);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10454,0,0,'I am ready to fight!',33430,1,1,-1,0,1045501,0,0,NULL,0,20995);
DELETE FROM conditions WHERE condition_entry IN (20995);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- 20338 - aura from item equiped
-- 20361 - riding aura
-- 20911 - missing aura (Bested the Exodar)
-- 20989 - champion rank
(20995,-1,20989,20911,20361,20338,0,'');
-- Undercity Champion 33749
DELETE FROM `gossip_menu` WHERE `entry` IN (10462);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10462, 14421, 0, 20890), -- default
(10462, 14489, 0, 0); -- with aura (player already kicked one of them)
DELETE FROM gossip_menu_option WHERE menu_id IN (10462);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10462,0,0,'I am ready to fight!',33430,1,1,-1,0,1045901,0,0,NULL,0,20996);
DELETE FROM conditions WHERE condition_entry IN (20996);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- 20338 - aura from item equiped
-- 20361 - riding aura
-- 20890 - missing aura (Bested the Undercity)
-- 20989 - champion rank
(20996,-1,20989,20890,20361,20338,0,'');
-- Sen'jin Champion 33745
DELETE FROM `gossip_menu` WHERE `entry` IN (10458);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10458, 14421, 0, 20899), -- default
(10458, 14489, 0, 0); -- with aura (player already kicked one of them)
DELETE FROM gossip_menu_option WHERE menu_id IN (10458);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10458,0,0,'I am ready to fight!',33430,1,1,-1,0,1045901,0,0,NULL,0,20997);
DELETE FROM conditions WHERE condition_entry IN (20997);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- 20338 - aura from item equiped
-- 20361 - riding aura
-- 20899 - missing aura (Bested Sen'jin)
-- 20989 - champion rank
(20997,-1,20989,20899,20361,20338,0,'');
-- Orgrimmar Champion 33744
DELETE FROM `gossip_menu` WHERE `entry` IN (10457);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10457, 14421, 0, 20901), -- default
(10457, 14489, 0, 0); -- with aura (player already kicked one of them)
DELETE FROM gossip_menu_option WHERE menu_id IN (10457);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10457,0,0,'I am ready to fight!',33430,1,1,-1,0,1045901,0,0,NULL,0,20998);
DELETE FROM conditions WHERE condition_entry IN (20998);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- 20338 - aura from item equiped
-- 20361 - riding aura
-- 20901 - missing aura (Bested Orgrimmar)
-- 20989 - champion rank
(20998,-1,20989,20901,20361,20338,0,'');
-- Thunder Bluff Champion 33748
DELETE FROM `gossip_menu` WHERE `entry` IN (10461);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10461, 14421, 0, 20895), -- default
(10461, 14489, 0, 0); -- with aura (player already kicked one of them)
DELETE FROM gossip_menu_option WHERE menu_id IN (10461);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10461,0,0,'I am ready to fight!',33430,1,1,-1,0,1045901,0,0,NULL,0,20999);
DELETE FROM conditions WHERE condition_entry IN (20999);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
-- 20338 - aura from item equiped
-- 20361 - riding aura
-- 20895 - missing aura (Bested Thunder Bluff)
-- 20989 - champion rank
(20999,-1,20989,20895,20361,20338,0,'');
DELETE FROM dbscripts_on_gossip WHERE id IN (1045601,1046001,1045301,1045401,1046201,1045801,1045701,1046101); -- not needed
DELETE FROM dbscripts_on_gossip WHERE id IN (1045901,1045501);
INSERT INTO dbscripts_on_gossip (id, priority,delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- default for all horde champions
(1045901,0,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1045901,0,2,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove NPCFlags'),
(1045901,0,3,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run ON'),
(1045901,0,4,15,62627,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast 62627'),
(1045901,0,9,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 62719 - buff 1'),
(1045901,0,10,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 64192 - shield check'),
(1045901,0,11,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 62719 - buff 2'),
(1045901,0,12,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 64192 - shield check'),
(1045901,0,13,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 62719 - buff 3'),
(1045901,0,14,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 64192 - shield check'),
(1045901,0,20,15,64222,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 64222 - buff aura'),
(1045901,1,30,15,64780,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 64780 - music'),
(1045901,2,30,0,0,0,0,0,0,0x04,33755,33756,33757,33758,0,0,0,0,'random say'), -- horde ready!
(1045901,0,100,37,0,0,2,34319,30,1,0,0,0,0,0,0,0,0,'move towards target'),
(1045901,0,3000,15,62722,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 62722'), -- this goes to player and himself
-- default for all alliance champions
(1045501,0,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1045501,0,2,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove NPCFlags'),
(1045501,0,3,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run ON'),
(1045501,0,4,15,62627,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast 62627'),
(1045501,0,9,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 62719 - buff 1'),
(1045501,0,10,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 64192 - shield check'),
(1045501,0,11,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 62719 - buff 2'),
(1045501,0,12,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 64192 - shield check'),
(1045501,0,13,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 62719 - buff 3'),
(1045501,0,14,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 64192 - shield check'),
(1045501,0,20,15,64222,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Self cast 64222 - buff aura'),
(1045501,1,30,15,64780,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 64780 - music'),
(1045501,2,30,0,0,0,0,0,0,0x04,33750,33752,33753,33753,0,0,0,0,'random say'), -- alliance ready!
(1045501,0,100,37,0,0,2,34319,30,1,0,0,0,0,0,0,0,0,'move towards target'),
(1045501,0,3000,15,62722,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 62722'); -- this goes to player and himself
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21214 AND 21224;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- combat stop - player won!
-- Part of Orgrimmar Champion 33744 EAI
(21214,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Orgrimmar Champion 33744 EAI: reset faction'),
(21214,1,15,64065,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Orgrimmar Champion 33744 EAI: cast 64065'), -- empty script
(21214,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Orgrimmar Champion 33744 EAI: cast 64826'), -- play music
(21214,3,15,63597,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Orgrimmar Champion 33744 EAI: cast 63597'), -- credit
(21214,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Orgrimmar Champion 33744 EAI: emote'),
(21214,3001,0,0,0,0,0,0,6,33760,33774,33775,33776,0,0,0,0,'Part of Orgrimmar Champion 33744 EAI: say'), -- horde player won!
(21214,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Orgrimmar Champion 33744 EAI: despawn'),
(21214,3003,15,64833,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Orgrimmar Champion 33744 EAI: cast 64833'), -- individual for each
(21215,1,15,63596,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Undercity Valiant 33384 EAI: Player self cast 63596'), -- Player self cast credit 
-- Part of Undercity Champion 33749 EAI
(21216,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Undercity Champion 33749 EAI: reset faction'),
(21216,1,15,64065,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Undercity Champion 33749 EAI: cast 64065'), -- empty script
(21216,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Undercity Champion 33749 EAI: cast 64826'), -- play music
(21216,3,15,63597,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Undercity Champion 33749 EAI: cast 63597'), -- credit
(21216,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Undercity Champion 33749 EAI: emote'),
(21216,3001,0,0,0,0,0,0,6,33760,33774,33775,33776,0,0,0,0,'Part of Undercity Champion 33749 EAI: say'), -- horde player won!
(21216,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Undercity Champion 33749 EAI: despawn'),
(21216,3003,15,64839,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Undercity Champion 33749 EAI: cast 64839'), -- individual for each
-- Part of Sen'jin Champion 33745 EAI
(21217,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Sen\'jin Champion 33745 EAI: reset faction'),
(21217,1,15,64065,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Sen\'jin Champion 33745 EAI: cast 64065'), -- empty script
(21217,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Sen\'jin Champion 33745 EAI: cast 64826'), -- play music
(21217,3,15,63597,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Sen\'jin Champion 33745 EAI: cast 63597'), -- credit
(21217,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Sen\'jin Champion 33745 EAI: emote'),
(21217,3001,0,0,0,0,0,0,6,33760,33774,33775,33776,0,0,0,0,'Part of Sen\'jin Champion 33745 EAI: say'), -- horde player won!
(21217,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Sen\'jin Champion 33745 EAI: despawn'),
(21217,3003,15,64834,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Sen\'jin Champion 33745 EAI: cast 64834'), -- individual for each
-- Part of Silvermoon Champion 33746 EAI
(21218,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Silvermoon Champion 33746 EAI: reset faction'),
(21218,1,15,64065,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Silvermoon Champion 33746 EAI: cast 64065'), -- empty script
(21218,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Silvermoon Champion 33746 EAI: cast 64826'), -- play music
(21218,3,15,63597,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Silvermoon Champion 33746 EAI: cast 63597'), -- credit
(21218,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Silvermoon Champion 33746 EAI: emote'),
(21218,3001,0,0,0,0,0,0,6,33760,33774,33775,33776,0,0,0,0,'Part of Silvermoon Champion 33746 EAI: say'), -- horde player won!
(21218,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Silvermoon Champion 33746 EAI: despawn'),
(21218,3003,15,64835,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Silvermoon Champion 33746 EAI: cast 64835'), -- individual for each
-- Part of Thunder Bluff Champion 33748 EAI
(21219,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Champion 33748 EAI: reset faction'),
(21219,1,15,64065,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Champion 33748 EAI: cast 64065'), -- empty script
(21219,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Champion 33748 EAI: cast 64826'), -- play music
(21219,3,15,63597,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Champion 33748 EAI: cast 63597'), -- credit
(21219,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Champion 33748 EAI: emote'),
(21219,3001,0,0,0,0,0,0,6,33760,33774,33775,33776,0,0,0,0,'Part of Thunder Bluff Champion 33748 EAI: say'), -- horde player won!
(21219,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Champion 33748 EAI: despawn'),
(21219,3003,15,64837,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Thunder Bluff Champion 33748 EAI: cast 64837'), -- individual for each
-- Part of Stormwind Champion 33747 EAI
(21220,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Stormwind Champion 33747 EAI: reset faction'),
(21220,1,15,64065,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Stormwind Champion 33747 EAI: cast 64065'), -- empty script
(21220,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Stormwind Champion 33747 EAI: cast 64826'), -- play music
(21220,3,15,63597,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Stormwind Champion 33747 EAI: cast 63597'), -- credit
(21220,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Stormwind Champion 33747 EAI: emote'),
(21220,3001,0,0,0,0,0,0,6,33759,33767,33768,33769,0,0,0,0,'Part of Stormwind Champion 33747 EAI: say'), -- alliance player won!
(21220,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Stormwind Champion 33747 EAI: despawn'),
(21220,3003,15,64836,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Stormwind Champion 33747 EAI: cast 64836'), -- individual for each
-- Part of Ironforge Champion 33743 EAI
(21221,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Ironforge Champion 33743 EAI: reset faction'),
(21221,1,15,64065,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Ironforge Champion 33743 EAI: cast 64065'), -- empty script
(21221,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Ironforge Champion 33743 EAI: cast 64826'), -- play music
(21221,3,15,63597,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Ironforge Champion 33743 EAI: cast 63597'), -- credit
(21221,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Ironforge Champion 33743 EAI: emote'),
(21221,3001,0,0,0,0,0,0,6,33759,33767,33768,33769,0,0,0,0,'Part of Ironforge Champion 33743 EAI: say'), -- alliance player won!
(21221,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Ironforge Champion 33743 EAI: despawn'),
(21221,3003,15,64832,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Ironforge Champion 33743 EAI: cast 64832'), -- individual for each
-- Part of Gnomeregan Champion 33740 EAI
(21222,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Gnomeregan Champion 33740 EAI: reset faction'),
(21222,1,15,64065,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Gnomeregan Champion 33740 EAI: cast 64065'), -- empty script
(21222,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Gnomeregan Champion 33740 EAI: cast 64826'), -- play music
(21222,3,15,63597,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Gnomeregan Champion 33740 EAI: cast 63597'), -- credit
(21222,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Gnomeregan Champion 33740 EAI: emote'),
(21222,3001,0,0,0,0,0,0,6,33759,33767,33768,33769,0,0,0,0,'Part of Gnomeregan Champion 33740 EAI: say'), -- alliance player won!
(21222,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Gnomeregan Champion 33740 EAI: despawn'),
(21222,3003,15,64830,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Gnomeregan Champion 33740 EAI: cast 64830'), -- individual for each
-- Part of Darnassus Champion 33738 EAI
(21223,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Darnassus Champion 33738 EAI: reset faction'),
(21223,1,15,64065,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Darnassus Champion 33738 EAI: cast 64065'), -- empty script
(21223,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Darnassus Champion 33738 EAI: cast 64826'), -- play music
(21223,3,15,63597,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Darnassus Champion 33738 EAI: cast 63597'), -- credit
(21223,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Darnassus Champion 33738 EAI: emote'),
(21223,3001,0,0,0,0,0,0,6,33759,33767,33768,33769,0,0,0,0,'Part of Darnassus Champion 33738 EAI: say'), -- alliance player won!
(21223,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Darnassus Champion 33738 EAI: despawn'),
(21223,3003,15,64831,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Darnassus Champion 33738 EAI: cast 64831'), -- individual for each
-- Part of Exodar Champion 33739 EAI
(21224,0,22,35,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Exodar Champion 33739 EAI: reset faction'),
(21224,1,15,64065,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Exodar Champion 33739 EAI: cast 64065'), -- empty script
(21224,2,15,64826,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Exodar Champion 33739 EAI: cast 64826'), -- play music
(21224,3,15,63597,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Exodar Champion 33739 EAI: cast 63597'), -- credit
(21224,3000,1,253,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Exodar Champion 33739 EAI: emote'),
(21224,3001,0,0,0,0,0,0,6,33759,33767,33768,33769,0,0,0,0,'Part of Exodar Champion 33739 EAI: say'), -- alliance player won!
(21224,3002,18,5000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Exodar Champion 33739 EAI: despawn'),
(21224,3003,15,64838,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Exodar Champion 33739 EAI: cast 64838'); -- individual for each
