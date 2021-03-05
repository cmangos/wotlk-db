-- q.1920 'Investigate the Blue Recluse'
DELETE FROM dbscripts_on_quest_start WHERE id = 1920;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1920,0,0,0,0,0,0,0,0,2000003223,0,0,0,0,0,0,0,''),
(1920,10,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,6.056,''),
(1920,1000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1920,4000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.7298,'');
UPDATE quest_template SET StartScript = 1920 WHERE entry = 1920;
DELETE FROM dbscript_string WHERE entry = 2000003223;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003223,'Here, $n.  Take a chest of containment coffers and a cantation of manifestation.  You will need them for your mission.',0,0,7,1,NULL);
-- q.1960 'Investigate the Alchemist Shop'
DELETE FROM dbscripts_on_quest_start WHERE id = 1960;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1960,0,0,0,0,0,0,0,0,2000003224,0,0,0,0,0,0,0,''),
(1960,10,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.748,''),
(1960,1000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1960,4000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.054,'');
UPDATE quest_template SET StartScript = 1960 WHERE entry = 1960;
DELETE FROM dbscript_string WHERE entry = 2000003224;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003224,'Take a chest of containment coffers and a cantation of manifestation, $n.  You will need them for your mission.',0,0,0,1,NULL);

-- Quest script
DELETE FROM dbscripts_on_go_template_use WHERE id = 122088;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(122088,5000,40,0,0,0,122088,50,7,0,0,0,0,0,0,0,0,'despawn self');
-- Spell Targets for portals
DELETE FROM spell_script_target WHERE entry IN (9012);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(9012, 1, 6492);

-- Rift Spawn 6492
DELETE FROM creature_template_addon WHERE entry = 6492;
-- missing added - exist already in CDB and TDB - same guids used
DELETE FROM creature_addon WHERE guid IN (107727,107728,107729,107730);
DELETE FROM creature_movement WHERE id IN (107727,107728,107729,107730);
DELETE FROM game_event_creature WHERE guid IN (107727,107728,107729,107730);
DELETE FROM game_event_creature_data WHERE guid IN (107727,107728,107729,107730);
DELETE FROM creature_battleground WHERE guid IN (107727,107728,107729,107730);
DELETE FROM creature_linking WHERE guid IN (107727,107728,107729,107730)
 OR master_guid IN (107727,107728,107729,107730);
DELETE FROM creature WHERE guid IN (107727,107728,107729,107730);
-- missing added
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(107727,6492,0,1,1,0,0,1420.67,362.801,-66.0031,0.173832,180,180,5,0,420,0,0,1),
(107728,6492,0,1,1,0,0,1391.74,374.264,-66.028,0.986717,180,180,5,0,420,0,0,1),
(107729,6492,0,1,1,0,0,1386.27,358.274,-66.0081,4.72522,180,180,5,0,420,0,0,1),
(107730,6492,0,1,1,0,0,1400.71,361.956,-66.0357,6.10121,180,180,5,0,420,0,0,1);

-- missing objects added
-- Contation of Manifestation 105175
UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 105175;
DELETE FROM game_event_gameobject WHERE guid IN (42898,45021,45033,45034); -- 42898 (under Chest 105174 - wrong spawn Removed) - reused
DELETE FROM gameobject_battleground WHERE guid IN (42898,45021,45033,45034);
DELETE FROM gameobject WHERE guid IN (42898,45021,45033,45034);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- Stormwind
(45021,105175,0,1,1,-8985.569,860.3442,30.710934,3.0891833,0,0,0.9996567,0.026201647,300,300,255,1),
(45033,105175,0,1,1,-8985.311,860.85956,30.703987,2.6703477,0,0,0.9723692,0.23344836,300,300,255,1),
-- Undercity
(42898,105175,0,1,1,1813.251,51.01378,-46.31622,-2.460913,0,0,-0.9426413,0.3338076,300,300,255,1),
(45034,105175,0,1,1,1812.769,51.52778,-46.31622,-2.059488,0,0,-0.8571672,0.5150382,300,300,255,1);

-- Chest of Containment Coffers 105174
UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 105174;
DELETE FROM game_event_gameobject WHERE guid IN (45035,45036,45037);
DELETE FROM gameobject_battleground WHERE guid IN (45035,45036,45037);
DELETE FROM gameobject WHERE guid IN (45035,45036,45037);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- Stormwind
(45035,105174,0,1,1,-8986.731,862.93,30.648428,3.6477413,0,0,-0.9681473,0.2503814,300,300,255,1),
(45036,105174,0,1,1,-8987.154,861.84283,30.66232,5.183629,0,0,-0.52249813,0.85264045,300,300,255,1),
-- Undercity
(45037,105174,0,1,1,1814.28,52.13813,-46.31649,2.356195,0,0,0.9238796,0.3826832,300,300,255,1);
