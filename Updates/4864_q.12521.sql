-- q.12521 'Where in the World is Hemet Nesingwary?'

-- Script added
UPDATE gossip_menu_option SET action_script_id = 1002401 WHERE menu_id = 10024;
DELETE FROM gossip_menu_option WHERE menu_id = 10024 AND id = 1; -- duplicate
DELETE FROM dbscripts_on_gossip WHERE id = 1002401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1002401,1,15,50859,0,0,0,0,0,0,0,0,0,0,0,0,0,'q.12521 - source cast spell 50859'),
(1002401,3,53,0,0,0,0,0,0,33700,1,0,0,0,0,0,0,'q.12521 - Set worldstate variable to 1'),
(1002401,10,0,0,0,0,0,0,0x04,27620,0,0,0,0,0,0,0,'q.12521 - source Say'),
(1002401,11,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'q.12521 - source emote'),
(1002401,10000,53,0,0,0,0,0,0,33700,0,0,0,0,0,0,0,'q.12521 - Set worldstate variable to 0');
-- Archmage Pentarus' Flying Machine 28192
UPDATE creature_template SET MinLevel = 75, MaxLevel = 75, SpeedWalk = 2, SpeedRun = 3, MovementType = 3 WHERE entry = 28192;
DELETE FROM creature_movement_template WHERE entry = 28192;
INSERT INTO creature_movement_template (Entry, pathid, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(28192,0,1,5831.446,484.9737,658.2015,4.67,3000,2819201),
(28192,0,2,5828.687,428.0962,669.8951,100,1000,2819202),
(28192,1,1,5071.35,4642.54,72.164,100,0,0),
(28192,1,2,5142.877,4676.631,73.46826,100,0,0),
(28192,1,3,5635.875,5225.561,-75.11644,100,0,0),
(28192,1,4,5637.412,5301.54,-109.5869,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2819201 AND 2819204;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2819201,0,15,51076,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'28192 - self cast 51076'),
(2819201,0,15,48602,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'28192 - self cast 48602'),
(2819201,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Active'),
(2819201,2,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'28192 - RUN ON'),
(2819202,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'28192 - stop'),
(2819202,10,15,50987,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'28192 - cast 50987'),
(2819202,100,20,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'28192 - set Pathid 1');

-- Venture Co. Pilot 28229
DELETE FROM creature_template_addon WHERE entry IN (28229);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(28229,23365,0,1,0,0,0,'48602 51043 51044');
UPDATE creature_template SET SpeedWalk = 2.2, SpeedRun = 3.5, InhabitType = 4, MovementType = 3 WHERE entry = 28229;
UPDATE creature_template SET MovementType = 3 WHERE entry = 28229;
DELETE FROM creature_movement_template WHERE entry = 28229;
INSERT INTO creature_movement_template (Entry, pathid, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(28229,0,1 ,5427.185,4948.977,13.40735 ,100,1,2822901),
(28229,0,2 ,5427.865,4949.71,13.40735  ,100,0,0),
(28229,0,3 ,5508.881,4993.853,-26.99996,100,0,0),
(28229,0,4 ,5527.892,5024.44,-33.16645 ,100,0,0),
(28229,0,5 ,5555.948,5055.017,-40.5555 ,100,0,0),
(28229,0,6 ,5573.23,5081.368,-46.41664 ,100,0,0),
(28229,0,7 ,5596.792,5120.542,-60.86132,100,0,0),
(28229,0,8 ,5616.421,5169.335,-73.94473,100,0,0),
(28229,0,9 ,5639.541,5246.319,-82.02806,100,0,0),
(28229,0,10,5649.434,5336.935,-80.61153,100,0,0),
(28229,0,11,5649.434,5336.935,-80.61153,100,0,0),
(28229,0,12,5649.434,5336.935,-80.61153,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2822901,2822902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2822901,0,25,1,0,0,0,0,0x04,27611,0,0,0,0,0,0,0,'28229 - RuN'),
(2822901,1,0,0,0,0,0,0,0x04,27611,0,0,0,0,0,0,0,'28229 - Yell');
DELETE FROM dbscripts_on_relay WHERE id = 20762;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20762,0,3,1,0,0,0,0,0x04|0x08,0,0,0,0,5427.185,4948.977,13.40735,0,'Part of Venture Co. Pilot 28229 EAI: Teleport');
DELETE FROM dbscripts_on_spell WHERE id = 50630;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(50630,0,31,27987,200,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27987'),
(50630,5000,0,0,0,0,27987,300,7,27610,0,0,0,0,0,0,0,'27987 Say');
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` IN (27611,27610);
-- spell Target
DELETE FROM spell_script_target WHERE entry IN (50878,50892);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(50878,1,28192,0),
(50892,1,28192,0);
-- s.50987 correct teleport orientation
UPDATE spell_target_position SET target_position_x = 5071.35, target_position_y = 4642.54, target_position_z = 72.164, target_orientation = 0.878587 WHERE id = 50987;

-- OBJECT
UPDATE gameobject SET map = 571, position_x = 5828.639, position_y = 427.1178, position_z = 670.0963, Orientation = 0.8203033 WHERE guid = 507269;
DELETE FROM `spawn_group` WHERE id = 33700;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33700, 'Dalaran - o.190488 spawn with q.12521', 1, 0, 20547, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 33700;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33700, 507269, -1);
DELETE FROM conditions WHERE condition_entry IN (20547);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20547, 42, 33700, 1, 1, 0, 'Dalaran - o.190488 spawn with q.12521');
DELETE FROM worldstate_name WHERE Id = 33700;
INSERT INTO worldstate_name(Id, Name) VALUES
(33700,'Dalaran - o.190488 spawn with q.12521');
