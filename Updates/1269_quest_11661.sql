-- q.11661 'Orabus the Helmsman'
-- REDONE
DELETE FROM vehicle_accessory WHERE vehicle_entry = 27939;

-- spawn invaders
DELETE FROM dbscripts_on_event WHERE id=16889;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(16889,0,10,27939,300000,0,0,0,0x08,1,0,0,0,2839.5,7150.95,-0.419952,5.95703,'summon ship');

-- The Helmsman's Ship
UPDATE creature_template SET UnitFlags = 33554432, ExtraFlags = 0, MovementType = 2, VehicleTemplateId = 311 WHERE entry = 27939;
DELETE FROM creature_movement_template WHERE entry = 27939;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(27939,1,2839.5, 7150.95,-0.41,4000,2793901,5.95),
(27939,2,2812.334,7051.673,0.126313,500000,2793902,4.68098);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2793901,2793902); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- boarding
(2793901,0,0,0,0,0,0,0,2000001026,0,0,0,0,0,0,0,'start event'),
-- use ship to summon the crew
(2793901,0,10,32577,300000,0,0,0x08,1,0,0,0,2839.5,7150.95,-0.419952,5.95703,'summon crew'),
(2793901,0,10,32578,300000,0,0,0x08,1,0,0,0,2839.5,7150.95,-0.419952,5.95703,'summon crew'),
(2793901,0,10,32579,300000,0,0,0x08,1,0,0,0,2839.5,7150.95,-0.419952,5.95703,'summon crew'),
(2793901,0,10,32580,300000,0,0,0x08,1,0,0,0,2839.5,7150.95,-0.419952,5.95703,'summon crew'),
(2793901,0,10,32576,300000,0,0,0x08,1,0,0,0,2839.5,7150.95,-0.419952,5.95703,'summon captain'),
-- board the crew
(2793901,1,46,46598,1,32577,100,0x03,1,0,0,0,0,0,0,0,'board crew'),
(2793901,1,46,46598,1,32578,100,0x03,2,0,0,0,0,0,0,0,'board crew'),
(2793901,1,46,46598,1,32579,100,0x03,3,0,0,0,0,0,0,0,'board crew'),
(2793901,1,46,46598,1,32580,100,0x03,4,0,0,0,0,0,0,0,'board crew'),
(2793901,1,46,46598,1,32576,100,0x03,5,0,0,0,0,0,0,0,'board captain'),
-- yells
(2793902,0,0,0,0,32576,100,7,2000001518,2000001519,2000001520,0,0,0,0,0,'captain yell'),
(2793902,3,0,0,0,32577,100,7,2000001521,0,0,0,0,0,0,0,'crew yell'),
-- remove the passengers one by one
(2793902,5,14,46598,0,32577,100,0x01 | 0x08,0,0,0,0,0,0,0,0,'unboard first crewman');

-- Crewmans and Orabus
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001518 AND 2000001522;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001518,'Crewman, tear this land walker apart!',0,1,0,0,NULL),
(2000001519,'Crewman, show this ant the might of the Kvaldir!',0,1,0,0,NULL),
(2000001520,'A child has found a new toy! Crewman, take this infant\'s toy away!',0,1,0,0,NULL),
(2000001521,'Aye, captain!',0,1,0,0,NULL),
(2000001522,'Now you face Orabus, fool!',0,1,0,0,NULL);

UPDATE creature_template SET MovementType = 2 WHERE entry IN (32577,32578,32579,32580,32576);
DELETE FROM creature_movement_template WHERE entry IN (32577,32578,32579,32580,32576);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #32577
(32577,1,2801.76,7043.84,-0.430672,0,3257701,4.14812),
(32577,2,2801.76,7043.84,-0.430672,0,0,0),
(32577,3,2793.14,7015.81,5.14,600000,0,0),
(32577,4,2793.14,7015.81,5.14,2000,1,0),
-- #32578
(32578,1,2801.76,7043.84,-0.430672,0,3257701,4.14812),
(32578,2,2801.76,7043.84,-0.430672,0,0,0),
(32578,3,2793.14,7015.81,5.14,600000,0,0),
(32578,4,2793.14,7015.81,5.14,2000,1,0),
-- #32579
(32579,1,2801.76,7043.84,-0.430672,0,3257701,4.14812),
(32579,2,2801.76,7043.84,-0.430672,0,0,0),
(32579,3,2793.14,7015.81,5.14,600000,0,0),
(32579,4,2793.14,7015.81,5.14,2000,1,0),
-- #32580
(32580,1,2801.76,7043.84,-0.430672,0,3257701,4.14812),
(32580,2,2801.76,7043.84,-0.430672,0,0,0),
(32580,3,2793.14,7015.81,5.14,600000,0,0),
(32580,4,2793.14,7015.81,5.14,2000,1,0),
-- #32576
(32576,1,2801.76,7043.84,-0.430672,0,3257601,4.14812),
(32576,2,2801.76,7043.84,-0.430672,0,0,0),
(32576,3,2793.14,7015.81,5.14,600000,0,0),
(32576,4,2793.14,7015.81,5.14,2000,1,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3257701,3257601); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3257701,0,22,14,0x01 | 0x10 | 0x20,0,0,0,0,0,0,0,0,0,0,0,0,'temp faction'),
(3257601,1,22,14,0x01 | 0x10 | 0x20,0,0,0,0,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20014 AND 20017;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20014,2,0,0,0,32578,100,7,2000001521,0,0,0,0,0,0,0,'crew yell'),
(20014,3,14,46598,0,32578,100,0x01 | 0x08,0,0,0,0,0,0,0,0,'unboard next crewman'),
(20015,2,0,0,0,32579,100,7,2000001521,0,0,0,0,0,0,0,'crew yell'),
(20015,3,14,46598,0,32579,100,0x01 | 0x08,0,0,0,0,0,0,0,0,'unboard next crewman'),
(20016,2,0,0,0,32580,100,7,2000001521,0,0,0,0,0,0,0,'crew yell'),
(20016,3,14,46598,0,32580,100,0x01 | 0x08,0,0,0,0,0,0,0,0,'unboard next crewman'),
(20017,2,0,0,0,32576,100,7,2000001522,0,0,0,0,0,0,0,'boss yell'),
(20017,3,14,46598,0,32576,100,0x01 | 0x08,0,0,0,0,0,0,0,0,'unboard boss');
DELETE FROM dbscripts_on_creature_death WHERE id IN (32577,32578,32579,32580,32576);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(32576,0,31,27939,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(32576,1,18,5000,0,0,27939,100,7,0,0,0,0,0,0,0,0,'desp ship');

-- Random texts
DELETE FROM dbscript_random_templates WHERE id = 20015;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20015,0,2000001518,0,'32576 - Random Texts'),
(20015,0,2000001519,0,'32576 - Random Texts'),
(20015,0,2000001520,0,'32576 - Random Texts');
