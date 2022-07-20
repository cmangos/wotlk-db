-- q.12919 'The Storm King's Vengeance'
UPDATE gossip_menu_option SET action_script_id = 985201 WHERE menu_id = 9852 AND Id = 2;
DELETE FROM dbscripts_on_gossip WHERE id = 985201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(985201,0,15,55568,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Summon Gymer (Force)');
-- Gymer 29884
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, MinLevelHealth = 378000, MaxLevelHealth = 378000, SpeedRun=28/7, SpeedWalk=7/2.5 WHERE entry = 29884;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 29884);
DELETE FROM creature_template_addon WHERE entry = 29884;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(29884,0,0,1,0,0,0,55461);
DELETE FROM spell_target_position WHERE id=55431;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(55431,571,5799.29,-1597.31,237.2533,5.043737);
UPDATE broadcast_text SET ChatTypeID=3 WHERE Id IN (30511,30652,30653);
UPDATE broadcast_text SET ChatTypeID=1 WHERE Id IN (30658,30659,30595,30596,30597,30598,30656,30657);
DELETE FROM dbscripts_on_spell WHERE id IN (55639,55649,55516);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(55639,0,0,0,0,0,0,0,0,30652,0,0,0,0,0,0,0,'Gymer - say at 50% HP'),
(55649,0,0,0,0,0,0,0,0,30653,0,0,0,0,0,0,0,'Gymer - say at 15% HP'),
(55516,0,15,43671,0,0,0,0,2,0,0,0,0,0,0,0,0,'Gymer - Cast Ride Vehicle'),
(55516,1000,15,55424,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gymer - Cast Grabbed');
DELETE FROM `dbscript_random_templates` WHERE `id`=20289;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20289, 0, 30595, 0, 'Gymer - Random Texts'),
(20289, 0, 30596, 0, 'Gymer - Random Texts'),
(20289, 0, 30597, 0, 'Gymer - Random Texts'),
(20289, 0, 30598, 0, 'Gymer - Random Texts');
DELETE FROM vehicle_seat_addon WHERE SeatEntry=2172;
INSERT INTO vehicle_seat_addon(SeatEntry, SeatOrientation, ExitParamX, ExitParamY, ExitParamZ, ExitParamO, ExitParamValue) VALUES
(2172,0,40,0,0,0,1);
DELETE FROM spell_script_target WHERE entry = 55571;
INSERT INTO spell_script_target VALUES
(55571,1,29897,0),
(55571,1,29893,0),
(55571,1,29892,0);
-- players shouldnt be able to take him outside quest area
DELETE FROM dbscripts_on_relay WHERE id IN (20609);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20609,1,34,20316,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(20609,100,14,55430,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM conditions WHERE condition_entry = 20316;
INSERT INTO conditions (condition_entry, type, value1, value2,value3,value4) VALUES
(20316, 4, 66, 0,0,0); -- Zul'Drak
