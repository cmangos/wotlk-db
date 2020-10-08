-- q.13257 'Herald of War'
DELETE FROM dbscripts_on_quest_start WHERE id = 13257;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13257,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(13257,10,9,520420,120,0,0,0,0,0,0,0,0,0,0,0,0,''),
(13257,1000,10,31563,10000,1,0,0,0,1,0,0,0,2819.44,6169.66,85.5745,0.750054,''),
(13257,5000,10,31563,10000,2,0,0,0,1,0,0,0,2853.16,6159.42,86.0195,2.24624,''),
(13257,9000,10,31563,10000,3,0,0,0,1,0,0,0,2813.35,6204.94,86.0163,5.41139,''),
(13257,14000,10,31563,10000,2,0,0,0,1,0,0,0,2853.16,6159.42,86.0195,2.24624,''),
(13257,18000,10,31563,10000,3,0,0,0,1,0,0,0,2813.35,6204.94,86.0163,5.41139,''),
(13257,21000,10,31563,10000,1,0,0,0,1,0,0,0,2819.44,6169.66,85.5745,0.750054,''),
(13257,26000,10,31563,10000,3,0,0,0,1,0,0,0,2813.35,6204.94,86.0163,5.41139,''),
(13257,29000,10,31563,10000,2,0,0,0,1,0,0,0,2853.16,6159.42,86.0195,2.24624,''),
(13257,30000,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET StartScript = 13257 WHERE entry = 13257;

-- Warsong Battleguard 31563
UPDATE creature_template SET MovementType = 2 WHERE entry = 31563;
-- waypoints set by script
DELETE FROM creature_movement_template WHERE entry = 31563;
INSERT INTO creature_movement_template (entry, pathid, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- path 1
(31563,1,1,2819.44,6169.66,85.5745,0.750054,100,5),
(31563,1,2,2830.01,6179.37,84.66,100,2000,3156301),
-- path 2
(31563,2,1,2853.16,6159.42,86.0195,2.24624,100,5),
(31563,2,2,2830.01,6179.37,84.66,100,2000,3156301),
-- path 3
(31563,3,1,2813.35,6204.94,86.0163,5.41139,100,5),
(31563,3,2,2830.01,6179.37,84.66,100,2000,3156301);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3156301);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3156301,500,15,7976,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: 7976'),
(3156301,510,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(3156301,1000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');

-- Portal to Orgrimmar
DELETE FROM game_event_gameobject WHERE guid = 520420;
DELETE FROM gameobject_battleground WHERE guid = 520420;
DELETE FROM gameobject WHERE guid = 520420;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(520420,193206,571,1,1,2830.01,6179.37,84.66,4.16,0,0,0.715875,-0.698228,-120,-120,255,1);

-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (59064,58419);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(59064,0,15,58419,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: 58419'),
(58419,0,15,7976,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: 7976');
