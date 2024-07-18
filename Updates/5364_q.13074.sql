-- q.13074 'Hope Within the Emerald Nightmare'
DELETE FROM dbscripts_on_quest_start WHERE id IN (13074);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13074,0,15,57413,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast on Player');
DELETE FROM dbscripts_on_quest_end WHERE id IN (13074);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13074,0,15,60957,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast 60957');
UPDATE quest_template SET StartScript = 13074, CompleteScript = 13074 WHERE entry IN (13074);

-- Keeper Remulos 11832
-- missing gossip option added
DELETE FROM `gossip_menu_option` WHERE menu_id=10215;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(10215, 0, 0, 'Please send me into the Emerald Dream to recover the acorns. I know of the danger and I do not fear it.', 33045, 1, 1, -1, 0, 1021501, 0, 0, '', 0, 20708);
DELETE FROM conditions WHERE condition_entry = 20708;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20708,9,13074,0,0,0,0);
DELETE FROM dbscripts_on_gossip WHERE id = 1021501;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1021501,0,15,57413,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast on Player');
-- poss corrected for spell 57515
DELETE FROM spell_target_position WHERE Id IN(57515);
INSERT INTO spell_target_position VALUES
(57515,1,7845.03,-2222.38,469.268,0.93378);
DELETE FROM spell_script_target WHERE entry IN (57517);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(57517, 1, 11822, 0);
-- Moonglade Warden 11822
DELETE FROM dbscripts_on_relay WHERE id = 20936;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20936,1,31,11832,50,0,0,0,0,0,0,0,0,0,0,0,0,'Part Moonglade Warden 11822 EAI - search for 11832'),
(20936,500,0,0,0,0,11832,60,7,31329,0,0,0,0,0,0,0,'Part Moonglade Warden 11822 EAI - buddy SAY');
