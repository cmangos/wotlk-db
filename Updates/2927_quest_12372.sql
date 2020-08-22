-- q.12372 'Defending Wyrmrest Temple'

-- Wyrmrest Defender 27629
UPDATE creature_template SET InhabitType = 4 WHERE entry = 27629;
-- gossip option available only when quest active
DELETE FROM conditions WHERE condition_entry IN (20072,20073);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20072, 9, 12372, 1, 0, 0, 0), -- quest taken
(20073, 9, 12372, 1, 0, 0, 1); -- quest not taken
UPDATE gossip_menu SET condition_id = 20072 WHERE entry = 9568 AND text_id = 12899;
UPDATE gossip_menu SET condition_id = 20073 WHERE entry = 9568 AND text_id = 13018;
UPDATE gossip_menu_option SET condition_id = 20072, action_script_id = 956801 WHERE menu_id = 9568;
DELETE FROM dbscripts_on_gossip WHERE id = 956801;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(956801,0,15,49207,0,0,0,0,6,0,0,0,0,0,0,0,0,'summon vehicle');
DELETE FROM creature_template_addon WHERE entry = 27629;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27629,0,50331648,1,0,0,0,50069);
