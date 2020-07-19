-- q.12140 'All Hail Roanauk!'
DELETE FROM dbscripts_on_quest_start WHERE id = 12140;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12140,10,34,20068,0,0,0,0,0x04 | 0x08,0,0,0,0,0,0,0,0,'terminate if source is already moving'),
(12140,1000,0,0,0,0,0,0,0,2000020438,0,0,0,0,0,0,0,''),
(12140,1001,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'set waypoints');
UPDATE quest_template SET StartScript = 12140 WHERE entry = 12140;

-- Overlord Agmar 26379
-- Activates by Script
DELETE FROM creature_movement_template WHERE entry = 26379;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26379,1,3842.39,1486.62,92.0606,100,2000,2637901),
(26379,2,3842.25,1514.61,91.9166,100,0,0),
(26379,3,3841.84,1532.24,89.7248,100,0,0),
(26379,4,3849.18,1547.57,89.7248,100,0,0),
(26379,5,3861.23,1559.55,89.7248,100,0,0),
(26379,6,3867.63,1572.57,89.7248,100,0,0),
(26379,7,3870.23,1589.65,89.759,0.69369,60000,2637902),
(26379,8,3867.99,1573.98,89.7248,100,0,0),
(26379,9,3861.26,1560.53,89.7248,100,0,0),
(26379,10,3849.69,1548.49,89.7248,100,0,0),
(26379,11,3842.84,1531.89,89.7248,100,0,0),
(26379,12,3842.19,1515.67,91.9166,100,0,0),
(26379,13,3841.97,1491.39,91.7172,1.5038,300000,0),
(26379,14,3842.39,1486.62,92.0606,1.5708,5000,2637903);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2637901 AND 2637903;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2637901,0,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'active'),
(2637901,10,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(2637902,10,32,1,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'pause'),
(2637902,59000,32,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'unpause'),
(2637903,1000,28,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'sit state'),
(2637903,2000,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'set idle'),
(2637903,2001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000020438 AND 2000020439;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000020438,'We will walk together, $n.', 0, 0, 1, 1, ''),
(2000020439,'Welcome to the Horde, High Chief. Lok\'tar ogar!', 0, 0, 1, 2, '');
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 20067 AND 20068;
INSERT INTO `conditions` (condition_entry, type, value1, value2) VALUES
-- 950 -- wp = 0
(20067, 33, 13, 0),
(20068, -2, 20067, 950);
DELETE FROM dbscripts_on_relay WHERE id = 20318;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20318,10,0,0,0,0,0,0,0,2000020439,0,0,0,0,0,0,0,'Part of Overlord Agmar EAI: Say 1'),
(20318,6000,0,0,0,0,0,0,0,2000020446,0,0,0,0,0,0,0,'Part of Overlord Agmar EAI: Say 2'),
(20318,10000,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Overlord Agmar EAI: unpause');

-- Roanauk Icemist 26810
-- gossips
DELETE FROM gossip_menu WHERE entry=9462;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9462, 12722, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN (9461,9462);
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(9461,0,0,'Greetings High Chief. Would you do me the honor of accepting my invitation to join the Horde as an official member and leader of the Taunka?', 1, 1, 9462, 0, 0, 0, 0, NULL, 20069),
(9462,0,0,'It is you who honor me, High Chief. Please read from this scroll. It is the oath of allegiance.', 1, 1, 0, 0, 946201, 0, 0, NULL, 0);
DELETE FROM `conditions` WHERE `condition_entry` = 20069;
INSERT INTO `conditions` (condition_entry, type, value1, value2) VALUES
(20069, 9, 12140, 1);
DELETE FROM dbscripts_on_gossip WHERE id = 946201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(946201,0,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'active'),
(946201,9,29,3,2,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(946201,10,35,6,40,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 6'),
(946201,100,20,2,3,0,26437,5713615,7 |0x10,0,0,0,0,0,0,0,0,''),
(946201,101,20,2,4,0,26437,5713616,7 |0x10,0,0,0,0,0,0,0,0,''),
(946201,102,20,2,5,0,26437,5713617,7 |0x10,0,0,0,0,0,0,0,0,''),
(946201,103,20,2,7,0,26437,5713619,7 |0x10,0,0,0,0,0,0,0,0,''),
(946201,104,20,2,8,0,26437,5713622,7 |0x10,0,0,0,0,0,0,0,0,''),
(946201,2000,20,2,6,0,26437,5713618,7 |0x10,0,0,0,0,0,0,0,0,''),
(946201,2000,20,2,9,0,26437,5713626,7 |0x10,0,0,0,0,0,0,0,0,''),
(946201,2100,0,0,0,0,0,0,0x04,2000020440,0,0,0,0,0,0,0,''),
(946201,10000,0,0,0,0,0,0,0x04,2000020441,0,0,0,0,0,0,0,''),
(946201,12000,0,0,0,0,0,0,0x04,2000020442,0,0,0,0,0,0,0,''),
(946201,19000,0,0,0,0,0,0,0x04,2000020443,0,0,0,0,0,0,0,''),
(946201,28000,0,0,0,0,0,0,0x04,2000020444,0,0,0,0,0,0,0,''),
(946201,31000,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(946201,36000,0,0,0,0,0,0,0x04,2000020445,0,0,0,0,0,0,0,''),
(946201,36001,35,5,20,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 5'),
(946201,36010,8,26810,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(946201,36012,29,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(946201,36013,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000020440 AND 2000020446;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000020440,'Gather, brothers and sisters.', 0, 0, 1, 1, ''),
(2000020441,'%s reads from the scroll as the other Taunka gather around him.', 0, 2, 1, 1, ''),
(2000020442,'Lok\'tar ogar! Victory or death - it is these words that bind me to the Horde! For they are the most sacred and fundamental of truths to any warrior of the Horde.', 0, 0, 1, 1, ''),
(2000020443,'I give my flesh and blood freely to the Warchief. I am the instrument of my Warchief\'s desire. I am a weapon of my Warchief\'s command!', 0, 0, 1, 1, ''),
(2000020444,'From this moment until the end of days I live and die - For the Horde!\n', 0, 0, 1, 1, ''),
(2000020445,'For my Taunka brothers and sisters! FOR THE HORDE!\n', 0, 1, 1, 388, ''),
(2000020446,'FOR THE HORDE!', 0, 1, 1, 15, '');

-- Taunka Soldiers Involved
DELETE FROM creature_movement_template WHERE entry = 26437 AND pathID BETWEEN 3 AND 9;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES 
-- 5713615
(26437,3,1,3888.23,1581.04,90.9745,2.94961,2000,2643702),
(26437,3,2,3883.98,1585.2,90.9066,100,0,0),
(26437,3,3,3879.52,1598.82,90.7744,100,0,0),
(26437,3,4,3876.746,1597.52,90.69058,4.47671,5000,2643703),
(26437,3,5,3888.23,1581.04,90.9745,2.94961,4000,2643704),
-- 5713616
(26437,4,1,3881.54,1573.2,90.7245,5.89921,2000,2643702),
(26437,4,2,3875.21,1582.13,90.3264,100,0,0),
(26437,4,3,3872.45,1588.71,90.0477,100,0,0),
(26437,4,4,3870.77,1598.47,89.7496,100,0,0),
(26437,4,5,3873.469,1597.843,90.18542,5.06572,5000,2643703),
(26437,4,6,3881.54,1573.2,90.7245,5.89921,4000,2643706),
-- 5713617
(26437,5,1,3877.77,1588.82,90.9233,5.09636,2000,2643702),
(26437,5,2,3877.77,1588.82,90.9233,1.97208,5000,2643703),
(26437,5,3,3877.77,1588.82,90.9233,5.09636,4000,2643705),
-- 5713618
(26437,6,1,3886.43,1576.37,90.9745,1.65806,2000,2643702),
(26437,6,2,3875.22,1585.43,90.4318,100,0,0),
(26437,6,3,3871.41,1591.7,89.8265,100,0,0),
(26437,6,4,3870.77,1594.67,89.7259,100,0,0),
(26437,6,5,3872.902,1594.418,90.0797,6.08777,5000,2643703),
(26437,6,6,3886.43,1576.37,90.9745,1.65806,4000,2643707),
-- 5713619
(26437,7,1,3878.16,1586.04,90.9745,1.71042,2000,2643702),
(26437,7,2,3874.775,1589.399,90.39027,1.31726,5000,2643703),
(26437,7,3,3878.16,1586.04,90.9745,1.71042,4000,2643705),
-- 5713622
(26437,8,1,3886.04,1600.57,90.9745,3.66519,2000,2643702),
(26437,8,2,3879.273,1595.718,90.78122,3.68737,5000,2643703),
(26437,8,3,3886.04,1600.57,90.9745,3.66519,2000,2643704),
-- 5713626
(26437,9,1,3891.05,1597.51,90.9745,1.85005,2000,2643702),
(26437,9,2,3880.851,1591.76,90.98628,2.65872,5000,2643703),
(26437,9,3,3891.05,1597.51,90.9745,1.85005,4000,2643707);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2643702 AND 2643707;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2643702,0,21,1,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'active'),
(2643702,10,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stop emote'),
(2643702,15,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(2643703,1000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand kneel'),
(2643703,1200,32,1,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'pause'),
(2643704,1000,28,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand sit'),
(2643704,1200,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'idle'),
(2643704,1500,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'unactive'),
(2643705,1000,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'idle'),
(2643705,1500,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'unactive'),
(2643706,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2643706,1200,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'idle'),
(2643706,1500,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'unactive'),
(2643707,1000,15,16093,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2643707,1200,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'idle'),
(2643707,1500,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM dbscripts_on_relay WHERE id = 20319;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20319,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Taunka Soldier EAI: stand state'),
(20319,3000,1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Taunka Soldier EAI: emote'),
(20319,6000,32,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'unpause');

-- Greatmother Icemist 26652 
DELETE FROM creature_movement_template WHERE entry = 26652 AND pathId = 1;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES 
(26652,1,1,3869.88,1594.58,89.7248,0.0414167,5000,2643703), -- use Taunka Soldierss Script
(26652,1,2,3869.88,1594.58,89.7248,0.0414167,5000,2665207);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2665207;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2665207,1000,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'Set default pathId');
