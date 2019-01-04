-- q.11894 'Patching Up'
-- q end script
DELETE FROM dbscripts_on_quest_end WHERE id = 11894;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11894,0,29,2,2,0,0,0,0,0,0,0,0,0,0,0,0,'NpcFlags removed'),
(11894,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(11894,1,0,0,0,0,0,0,0,2000001584,0,0,0,0,0,0,0,''),
(11894,5,3,0,0,0,0,0,0,0,0,0,0,3479.175,4102.544,18.02702,100,''),
(11894,7,1,173,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11894,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11894,13,40,0,0,0,188087,30,1,0,0,0,0,0,0,0,0,'desp object'),
(11894,13,40,0,0,0,188088,30,1,0,0,0,0,0,0,0,0,'desp object'),
(11894,13,40,0,0,0,188089,30,1,0,0,0,0,0,0,0,0,'desp object'),
(11894,13,10,26040,11000,0,0,0,0,0,0,0,0,3481.329,4099.854,17.83902,3.351032,'summon'),
(11894,18,0,0,0,0,0,0,0,2000001585,0,0,0,0,0,0,0,''),
(11894,22,3,0,0,0,0,0,0,0,0,0,0,3480.389,4100.712,17.9091,100,''),
(11894,24,24,22719,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'mount'),
(11894,26,0,0,0,0,0,0,0,2000001586,0,0,0,0,0,0,0,''),
(11894,28,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:wps');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001584 AND 2000001588;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001584,'It\'s really going to work this time... right?',0,0,0,6,NULL),
(2000001585,'It works, Dorain! Look! It actually works...',0,0,0,4,NULL),
(2000001586,'Here I goooooooooo!',0,0,0,0,NULL),
(2000001587,'OUCH!',0,0,0,0,NULL),
(2000001588,'I give up! So much for goblin ingenuity!',0,0,0,5,NULL);
UPDATE quest_template SET CompleteScript = 11894 WHERE entry = 11894;

-- Fezzix Geartwist
DELETE FROM creature_template_addon WHERE entry = 25849;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25849,0,0,1,1,0,0,NULL);
UPDATE creature_template SET MovementType = 0 WHERE Entry = 25849;
-- waypoints will be set by script
DELETE FROM creature_movement_template WHERE entry = 25849;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25849,1,3481.329,4099.854,17.83902,2000,2584901,3.351032),
(25849,2,3476.835,4099.595,20.46597,0,0,100),
(25849,3,3469.259,4098.425,23.37573,0,0,100),
(25849,4,3464.057,4092.921,28.09206,0,0,100),
(25849,5,3468.28,4083.907,34.53652,0,0,100),
(25849,6,3471.045,4079.119,38.06437,0,0,100),
(25849,7,3476.159,4076.131,41.48104,0,0,100),
(25849,8,3483.686,4077.679,42.78663,0,0,100),
(25849,9,3487.812,4082.535,42.78663,0,0,100),
(25849,10,3488.05,4090.021,42.78663,0,0,100),
(25849,11,3486.571,4098.099,42.78663,0,0,100),
(25849,12,3479.899,4100.219,42.78663,20000,2584902,100);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2584901,2584902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2584901,0,39,1,0,0,0,0,8,0,0,0,0,0,0,0,0,'fly on'),
(2584902,2,15,46419,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2584902,3,24,0,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'unmount'),
(2584902,4,39,0,0,0,0,0,8,0,0,0,0,0,0,0,0,'fly off'),
(2584902,4,3,0,0,0,0,0,0x08,0,0,0,0,3479.9,4100.22,17.7974,100,''), -- temp: cmangos creatures can't fall freely (jump effect?)
(2584902,8,0,0,0,0,0,0,0,2000001587,0,0,0,0,0,0,0,''),
(2584902,8,3,0,0,0,0,0,0,0,0,0,0,3477.158,4103.965,17.85563,100,''),
(2584902,10,3,0,0,0,0,0,0,0,0,0,0,0,0,0,4.066617,''),
(2584902,10,0,0,0,0,0,0,0,2000001588,0,0,0,0,0,0,0,''),
(2584902,10,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'NpcFlags added'),
(2584902,10,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2584902,11,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');

-- spawntime corrected
UPDATE gameobject SET spawntimesecsmin = 70, spawntimesecsmax = 70 WHERE id IN (188087,188088,188089);

-- TEMP Geyser Fields Steam Vent
-- Missing objects added - WoTLK Range 571x Free guids used
DELETE FROM gameobject WHERE guid BETWEEN 5710024 AND 5710036;
DELETE FROM game_event_gameobject WHERE guid BETWEEN 5710024 AND 5710036;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 5710024 AND 5710036;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(5710024, 300182, 571, 1,1,4031.36, 4503.29, 11.2226, 5.6005, 0, 0, 0.334754, -0.942305, 180, 180, 255, 1),
(5710025, 300182, 571, 1,1,3984.33, 4625.58, 10.2086, 5.03501, 0, 0, 0.584356, -0.811498, 180, 180, 255, 1),
(5710026, 300182, 571, 1,1,3913.79, 4760.76, -7.9599, 0.491483, 0, 0, 0.243275, 0.969957, 180, 180, 255, 1),
(5710027, 300182, 571, 1,1,3778.25, 4752.75, -5.85094, 1.92941, 0, 0, 0.821882, 0.569658, 180, 180, 255, 1),
(5710028, 300182, 571, 1,1,3763.87, 4784.42, 12.7, 4.61233, 0, 0, 0.741583, -0.670862, 180, 180, 255, 1),
(5710029, 300182, 571, 1,1,3729.04, 4784.95, -8.28205, 0.173254, 0, 0, 0.0865186, 0.996180, 180, 180, 255, 1),
(5710030, 300182, 571, 1,1,3537.02, 4643.34, -7.94066, 1.1425, 0, 0, 0.540684, 0.841226, 180, 180, 255, 1),
(5710031, 300182, 571, 1,1,3584.64, 4650.26, -7.23041, 1.85329, 0, 0, 0.799608, 0.600522, 180, 180, 255, 1),
(5710032, 300182, 571, 1,1,3564.84, 4678.74, 2.98129, 3.98564, 0, 0, 0.912261, -0.409609, 180, 180, 255, 1),
(5710033, 300182, 571, 1,1,3568.74, 4713.88, -2.68437, 5.11269, 0, 0, 0.552404, -0.833576, 180, 180, 255, 1),
(5710034, 300182, 571, 1,1,3846.32, 4881.02, -2.74951, 0.726253, 0, 0, 0.355199, 0.934791, 180, 180, 255, 1),
(5710035, 300182, 571, 1,1,3852.29, 4895.27, -9.07992, 5.14412, 0, 0, 0.539238, -0.842154, 180, 180, 255, 1),
(5710036, 300182, 571, 1,1,3786.61, 4786.59, 0.541655, 0.21575, 0, 0, 0.107666, 0.994187, 180, 180, 255, 1);