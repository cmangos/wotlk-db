-- q.12690 'Fuel for the Fire'

-- Servant of Drakuru 28802
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (523505,523512);
DELETE FROM creature_movement WHERE id IN (523505,523512);
INSERT INTO creature_movement (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(523505,1,6251.25,-2171.64,235.583,5.5676,1000,2880201),
(523512,1,6250.63,-2201.27,236.054,0.575959,1000,2880201);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2880201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2880201,1,1,45,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
UPDATE creature SET position_x = 6219.816895, position_y = -2184.962158, position_z = 236.210739 WHERE guid = 523504;

-- Bloated Abomination 28843
UPDATE creature_template SET SpellList=0 WHERE entry=28843;
DELETE FROM creature_spell_list_entry WHERE Id = 2884300;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2884300, 'ZulDrak - Bloated Abomination - Charm spells',0,0);
DELETE FROM creature_spell_list WHERE Id = 2884300;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2884300,3,52497,0,0,0,100,0,0,0,0,0,'Bloated Abomination - Flatulate'),
(2884300,4,52510,0,0,0,100,0,0,0,0,0,'Bloated Abomination - Burst at the Seams');
DELETE FROM `dbscripts_on_creature_death` WHERE id = 28843;
UPDATE creature SET spawndist=10, MovementType=1 WHERE guid=523557;
UPDATE creature SET position_x = 6243.412109, position_y = -2186.561768, position_z = 235.415405 WHERE guid = 523556;
UPDATE creature SET position_x = 6293.240723, position_y = -2177.666992, position_z = 242.667297 WHERE guid = 523565;
UPDATE creature SET position_x = 6317.483398, position_y = -2186.833740, position_z = 251.453125 WHERE guid = 523559;
UPDATE creature SET position_x = 6308.291992, position_y = -2227.650635, position_z = 249.858948 WHERE guid = 523560;
UPDATE creature SET position_x = 6348.771484, position_y = -2245.516846, position_z = 273.713043, spawndist=10, MovementType=1 WHERE guid = 523564;
DELETE FROM dbscripts_on_spell WHERE id = 52510;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52510,1,15,52593,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52510,2,15,52811,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52510,3,15,52516,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52510,4,15,52516,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52510,5,15,52516,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52510,6,15,52520,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52510,7,15,52523,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52510,8,15,52523,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52510,9,15,52523,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52510,1000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Drakkari Skullcrusher 28844
-- missing added
DELETE FROM creature_addon WHERE guid IN (523088,523097,523240,523324,523372,523895,524016);
DELETE FROM creature_movement WHERE id IN (523088,523097,523240,523324,523372,523895,524016);
DELETE FROM game_event_creature WHERE guid IN (523088,523097,523240,523324,523372,523895,524016);
DELETE FROM game_event_creature_data WHERE guid IN (523088,523097,523240,523324,523372,523895,524016);
DELETE FROM creature_battleground WHERE guid IN (523088,523097,523240,523324,523372,523895,524016);
DELETE FROM creature_linking WHERE guid IN (523088,523097,523240,523324,523372,523895,524016)
 OR master_guid IN (523088,523097,523240,523324,523372,523895,524016);
DELETE FROM creature WHERE guid IN (523088,523097,523240,523324,523372,523895,524016);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(523088,28844,571,1,1,0,0,6416.97,-2297.28,291.908,0.805087,60,60,7,0,0,0,0,1),
(523097,28844,571,1,1,0,0,6452,-2276.46,290.719,1.21742,60,60,7,0,0,0,0,1),
(523240,28844,571,1,1,0,0,6453.48,-2255.63,290.136,2.58009,60,60,7,0,0,0,0,1),
(523324,28844,571,1,1,0,0,6439.91,-2298.44,293.695,2.21565,60,60,7,0,0,0,0,1),
(523372,28844,571,1,1,0,0,6440.84,-2409.75,298.611,2.91698,60,60,7,0,0,0,0,1),
(523895,28844,571,1,1,0,0,6427.65,-2427.17,296.575,1.79465,60,60,7,0,0,0,0,1),
(524016,28844,571,1,1,0,0,6407.97,-2435.87,294.43,3.37565,60,60,7,0,0,0,0,1);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (523567,523568,523569);
UPDATE creature SET position_x = 6421.933105, position_y = -2271.253174, position_z = 288.138763 WHERE guid = 523579;
UPDATE creature SET position_x = 6408.343262, position_y = -2280.186279, position_z = 288.057861 WHERE guid = 523594;
UPDATE creature SET position_x = 6429.886719, position_y = -2256.109619, position_z = 287.127563 WHERE guid = 523583;
UPDATE creature SET position_x = 6448.161621, position_y = -2329.255859, position_z = 293.459839 WHERE guid = 523566;
UPDATE creature SET position_x = 6387.588867, position_y = -2358.368652, position_z = 295.597992 WHERE guid = 523582;
UPDATE creature SET position_x = 6344.333008, position_y = -2370.949707, position_z = 295.435181 WHERE guid = 523571;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (523567,523568,523569);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(523567,0,0,1,0,0,0,29266),
(523568,0,0,1,0,0,0,29266),
(523569,0,0,1,0,0,0,29266);
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 28844;
DELETE FROM dbscripts_on_spell WHERE id = 52565;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52565,10,15,52575,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52565,11,15,52520,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52565,12,15,52578,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52565,13,15,52578,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52565,14,15,52516,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52565,15,15,52580,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52565,50,15,52508,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52565,60,18,2000,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_spell WHERE id = 52587;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52587,1,15,52590,0,0,0,0,6,0,0,0,0,0,0,0,0,'');

-- Drakkari Chieftain 28873
UPDATE creature_template SET InhabitType = 3, EquipmentTemplateid = 700 WHERE entry = 28873;
DELETE FROM dbscripts_on_relay WHERE id = 20639;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20639,1,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'RUN ON'),
(20639,500,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,''),
(20639,3900,1,53,0,0,0,0,2,0,0,0,0,0,0,0,0,''),
(20639,4000,0,0,0,0,0,0,2,28993,28994,28995,28997,0,0,0,0,'random text'),
(20639,5000,15,52602,0,0,0,0,6,0,0,0,0,0,0,0,0,'');

-- Shalewing 28875
DELETE FROM dbscripts_on_relay WHERE id = 20640;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20640,1,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'RUN ON'),
(20640,1000,15,52613,0,0,0,0,2,0,0,0,0,0,0,0,0,''),
(20640,2000,15,46957,0,0,0,0,2,0,0,0,0,0,0,0,0,''),
(20640,3000,0,0,0,0,0,0,0,28998,28999,29000,29001,0,0,0,0,'random text'),
(20640,4000,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,''),
(20640,6000,15,46598,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20640,7000,39,1,0,0,0,0,6,0,0,0,0,0,0,0,0,''),
(20640,9000,3,0,0,0,0,0,6,0,0,0,0,6328.88,-2238.489,335.0666,100,''),
(20640,16000,18,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'desp');
