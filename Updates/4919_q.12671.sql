-- q.12671 'Reconnaissance Flight'
DELETE FROM dbscripts_on_quest_start WHERE id IN (12671);
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12671,1,0,15,52256,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 52256');
UPDATE quest_template SET StartScript = 12671 WHERE entry = 12671;

-- Vic's Flying Machine 28710
UPDATE creature_template SET SpeedWalk = 10, SpeedRun = 3.5, InhabitType = 4, RegenerateStats = 0, MovementType = 0 WHERE entry = 28710;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28710);
DELETE FROM creature_template_addon WHERE entry IN (28710);
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (28710); -- not needed
DELETE FROM creature_template_spells WHERE entry IN (28710);
INSERT INTO creature_template_spells (entry,spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8) VALUES
(28710,52254,52226,0,0,0,0,0,0);
DELETE FROM creature_movement_template WHERE entry = 28710;
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(28710,1,1 ,5494.87,4747.031,-187.8783,100,0,0),
(28710,1,2 ,5485.906,4740.681,-184.5172,100,0,0),
(28710,1,3 ,5472.882,4732.441,-172.1562,100,0,0),
(28710,1,4 ,5460.913,4712.542,-157.8784,100,0,0),
(28710,1,5 ,5452.147,4673.518,-137.8906,100,0,2871001),
(28710,1,6 ,5449.777,4630.711,-126.6684,100,0,0),
(28710,1,7 ,5507.432,4506.089,-126.6684,100,0,0),
(28710,1,8 ,5586.811,4465.319,-126.6684,100,0,0),
(28710,1,9 ,5676.111,4437.874,-126.6684,100,0,0),
(28710,1,10,5756.449,4391.051,-91.25155,100,0,2871002),
(28710,1,11,5817.163,4269.269,-91.25155,100,0,0),
(28710,1,12,5856.145,4202.824,-68.29334,100,0,2871003),
(28710,1,13,5921.523,4105.534,-68.29334,100,0,2871004),
(28710,1,14,5995.021,4029.883,-13.97897,100,0,0),
(28710,1,15,6118.298,3883.733,94.11866,100,0,0),
(28710,1,16,6132.932,3750.75,176.5123,100,0,0),
(28710,1,17,6165.863,3748.196,198.9567,100,0,0),
(28710,1,18,6208.277,3782.189,196.8455,100,0,0),
(28710,1,19,6227.615,3836.871,191.6234,100,0,0),
(28710,1,20,6218.483,3885.17,191.6234 ,100,0,0),
(28710,1,21,6197.045,3890.053,191.6234,100,0,0),
(28710,1,22,6168.752,3864.161,191.6234,100,0,0),
(28710,1,23,6204.037,3807.239,191.6234,100,0,0),
(28710,1,24,6232.975,3820.852,191.6234,100,0,0),
(28710,1,25,6219.879,3854.341,166.6234,100,0,0),
(28710,1,26,6210.428,3855.185,154.4848,100,50000,2871005);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2871001 AND 2871010;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2871001,1,0,35,5,20,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 5'),
(2871002,1,0,35,6,20,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 6'),
(2871003,1,0,35,8,20,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 8'),
(2871004,3000,0,35,9,20,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 9'),
(2871005,0,0,15,52255,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'self cast'),
(2871005,1000,0,35,10,20,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10');
DELETE FROM dbscripts_on_relay WHERE id = 20788;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20788,1,0,0,0,0,0,0,0,0x04,28667,0,0,0,0,0,0,0,'Say'), -- 41:47
(20788,8000,0,0,0,0,0,0,0,0x04,28699,0,0,0,0,0,0,0,'Say'), -- 41:55
(20788,17000,0,0,0,0,0,0,0,0x04,28668,0,0,0,0,0,0,0,'Say'), -- 42:04
(20788,17001,0,48,768,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove UnitFlags');
UPDATE `broadcast_text` SET `ChatTypeID`='3' WHERE `Id`='28756';
DELETE FROM vehicle_accessory WHERE vehicle_entry = 28710;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(28710,0,28646,'Pilot Vic on Vic\'s Flying Machine');

-- object
DELETE FROM gameobject_template WHERE entry IN (300215); -- temp object removed
-- missing added
DELETE FROM game_event_gameobject WHERE guid = 511749;
DELETE FROM gameobject_battleground WHERE guid = 511749;
DELETE FROM gameobject WHERE id IN (190708);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(511749,190708,571,1,5505.58,4748.35,-194.434,0,0,0,0,0,300,300); -- TC data used

-- spell target corrected - used on vehicle
DELETE FROM spell_script_target WHERE entry IN (52257,52259);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(52257, 1, 28710, 0),
(52259, 1, 28170, 0);
-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (52226);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52226,100,15,50630,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
