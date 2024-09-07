-- q.13230 'Avenge Me!' - H
DELETE FROM dbscripts_on_quest_start WHERE id IN (13230);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13230,1,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STAND'),
(13230,2000,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face Player'),
(13230,2001,0,0,0,0,0,0,0,31980,0,0,0,0,0,0,0,'Say to Player'),
(13230,6000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn Self');
UPDATE quest_template SET StartScript = 13230 WHERE entry IN (13230);
-- Dying Berserker 31273
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (31070));
UPDATE creature_template_addon SET auras = 15088 WHERE entry IN (31273);
UPDATE creature_template SET GossipMenuId = 10036 WHERE entry = 31273;
DELETE FROM `gossip_menu` WHERE `entry` IN (10036,10037);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10036, 13930, 0, 0),
(10036, 13935, 0, 20715),
(10037, 13931, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(13930,13931,13935);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(13930,1,31932),
(13931,1,31933),
(13935,1,31960);
DELETE FROM npc_text WHERE id IN (13930,13931,13935);
DELETE FROM `gossip_menu_option` WHERE menu_id=10036;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(10036, 0, 0, 'Hold on, friend. Tell me what happened here.', 31934, 1, 1, 10037, 0, 1003601, 0, 0, '', 0, 20726);
DELETE FROM dbscripts_on_gossip WHERE id = 1003601;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1003601,0,15,58922,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 58922 on Player'),
(1003601,1,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'add NpcFlags'),
(1003601,60000,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove NpcFlags');
DELETE FROM conditions WHERE condition_entry BETWEEN 20714 AND 20715;
DELETE FROM conditions WHERE condition_entry BETWEEN 20725 AND 20726;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20714,9,13228,2,0,0,0,''),
(20715,-2,20714,20683,0,0,0,''), -- taken and completed or rewarded
(20725,22,13230,0,0,0,0,''),
(20726,-1,20725,20711,0,0,0,'');

-- q.13232 'Finish Me!' - A
-- Dying Soldier 31304
UPDATE creature_template SET GossipMenuId = 10040 WHERE entry = 31304;
DELETE FROM `gossip_menu` WHERE `entry` IN (10040,10041);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10040, 13940, 0, 0), -- Uhnhh.... It is too late
(10040, 13948, 0, 20719), -- Wait, $g brother:m'lady;....$b$bOne last thing...
(10040, 14035, 0, 20720),
(10041, 13947, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(13940,13948,13947);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(13940,1,31992),
(13948,1,32017),
(13947,1,32014);
DELETE FROM npc_text WHERE id IN (13940,13948,13947);
DELETE FROM `gossip_menu_option` WHERE menu_id=10040;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(10040, 0, 0, 'Stay with me, friend. I must know what happened here.', 32012, 1, 1, 10041, 0, 1004001, 0, 0, '', 0, 20727),
(10040, 1, 0, 'Travel well, hero of the Alliance!', 32262, 1, 1, -1, 0, 1004002, 0, 0, '', 0, 20720);
DELETE FROM dbscripts_on_gossip WHERE id IN (1004001,1004002);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1004001,0,15,58955,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 58955 on Player'),
(1004001,1,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'add NpcFlags'),
(1004001,60000,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove NpcFlags'),
(1004002,0,15,59235,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 59235 on Player'),
(1004002,100,15,59226,8,0,0,0,0x02,0,0,0,0,0,0,0,0,'Cast 59226'),
(1004002,101,8,31312,0,0,0,0,0,0,0,0,0,0,0,0,0,'kill credit');
DELETE FROM conditions WHERE condition_entry BETWEEN 20716 AND 20720;
DELETE FROM conditions WHERE condition_entry = 20727;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20716,9,13231,2,0,0,0,''),
(20717,-2,20716,20684,0,0,0,''), -- taken and completed or rewarded
(20718,22,13232,0,0,0,0,''),
(20719,-1,20718,20717,0,0,0,''),
(20720,9,13232,0,0,0,0,''),
(20727,-1,20718,20713,0,0,0,'');
