-- q.11300 'Stunning Defeat at the Ring'
-- quest can be completed even if someone else started it... (shouldnt start again if is active already)
DELETE FROM dbscripts_on_quest_start WHERE id = 11300;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11300,0,31,24213,100,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(11300,0,31,24215,100,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(11300,0,31,24214,100,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(11300,0,31,23931,100,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(11300,2,10,24213,600000,0,0,0,0x08,0,0,0,0,799.9138,-4718.5,-96.06109,3.351032,'summon Firjus the Soul Crusher'),
(11300,4,13,0,0,0,186647,56071,1 | 0x10,0,0,0,0,0,0,0,0,''),
(11300,4,13,0,0,0,186642,55916,1 | 0x10,0,0,0,0,0,0,0,0,''),
(11300,4,13,0,0,0,186645,55978,1 | 0x10,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 11300 WHERE entry = 11300;
-- RoJ Cage
DELETE FROM dbscripts_on_go_template_use WHERE id BETWEEN 186641 AND 186647;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(186641,0,10,24255,60000,0,0,0,0x08,1,0,0,0,823.311,-4742.95,-96.163,2.32763,''),
(186642,0,10,24253,60000,0,0,0,0x08,1,0,0,0,829.524,-4721.47,-96.1632,3.03056,''),
(186643,0,10,24254,60000,0,0,0,0x08,1,0,0,0,813.341,-4697.53,-96.1444,4.25892,''),
(186644,0,10,24253,60000,0,0,0,0x08,1,0,0,0,807.775,-4695.8,-96.1444,4.50711,''),
(186645,0,10,24253,60000,0,0,0,0x08,1,0,0,0,767.966,-4716.8,-96.1444,5.97737,''),
(186646,0,10,24255,60000,0,0,0,0x08,1,0,0,0,775.867,-4746.29,-96.1444,0.822019,''),
(186647,0,10,24254,60000,0,0,0,0x08,1,0,0,0,780.22,-4749.83,-96.1444,1.39168,'');

-- Firjus the Soul Crusher
UPDATE creature_template SET MovementType = 1 WHERE entry = 24213;
DELETE FROM dbscripts_on_creature_death WHERE id = 24213;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(24213,1,10,24215,600000,0,0,0,0x08,1,0,0,0,831.2024,-4688.374,-94.09917,4.13643,'summon Jlarborn the Strategist');

-- Jlarborn the Strategist
UPDATE creature_template SET MovementType = 2 WHERE Entry = 24215;
DELETE FROM creature_movement_template WHERE entry = 24215;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(24215,1,831.2024,-4688.374,-94.09917,3000,2421501,4.13643),
(24215,2,801.674,-4721.55,-96.2358,2000,2421502,3.63635);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2421501,2421502); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2421501,6,13,0,0,0,186641,55705,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2421501,6,13,0,0,0,186643,55934,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2421501,6,13,0,0,0,186645,55978,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2421502,0,20,1,7,0,0,0,0x08,0,0,0,0,0,0,0,0,'movement chenged to 1:random');
DELETE FROM dbscripts_on_creature_death WHERE id = 24215;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(24215,1,10,24214,600000,0,0,0,0x08,1,0,0,0,832.8317,-4686.365,-94.09917,4.08407,'summon Yorus the Flesh Harvester');

-- Yorus the Flesh Harvester
UPDATE creature_template SET MovementType = 2 WHERE Entry = 24214;
DELETE FROM creature_movement_template WHERE entry = 24214;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(24214,1,832.8317,-4686.365,-94.09917,3000,2421401,4.08407),
(24214,2,801.674,-4721.55,-96.2358,2000,2421402,3.63635);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2421401,2421402); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2421401,6,13,0,0,0,186646,56046,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2421401,6,13,0,0,0,186644,55969,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2421401,6,13,0,0,0,186642,55916,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2421402,0,20,1,7,0,0,0,0x08,0,0,0,0,0,0,0,0,'movement chenged to 1:random');
DELETE FROM dbscripts_on_creature_death WHERE id = 24214;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(24214,1,10,23931,600000,0,0,0,0x08,1,0,0,0,834.6791,-4684.624,-94.09918,4.08407,'summon Oluf the Violent');

-- Oluf the Violent
UPDATE creature_template SET MovementType = 2 WHERE Entry = 23931;
DELETE FROM creature_movement_template WHERE entry = 23931;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(23931,1,834.6791,-4684.624,-94.09918,3000,2393101,4.08407),
(23931,2,801.674,-4721.55,-96.2358,2000,2393102,3.63635);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2393101,2393102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2393101,6,13,0,0,0,186647,56071,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2393101,6,13,0,0,0,186641,55705,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2393101,6,13,0,0,0,186643,55934,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2393101,6,13,0,0,0,186644,55969,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2393102,0,20,1,7,0,0,0,0x08,0,0,0,0,0,0,0,0,'movement chenged to 1:random');
DELETE FROM dbscripts_on_creature_death WHERE id = 23931;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23931,0,15,43326,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast - Drop Ancient Cipher'),
(23931,0,0,0,0,0,0,0,0,2000001146,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000001146;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001146,'The ancient cipher falls to the ground.',0,3,0,0,NULL);

-- Dragonflayer Prisoner
UPDATE creature_template SET InhabitType = 3, MovementType = 2 WHERE entry IN (24253,24254,24255);
DELETE FROM creature_movement_template WHERE entry IN (24253,24254,24255);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(24253,1,799.997,-4720.92,-96.1442,3000,2425301,255),
(24254,1,797.397,-4716,-96.1442,3000,2425401,255),
(24255,1,802.981,-4717.14,-96.1442,3000,2425501,255);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2425301,2425401,2425501); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2425301,0,35,5,2,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT'),
(2425301,1,20,1,7,0,0,0,0x08,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(2425401,0,35,5,2,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT'),
(2425401,2,20,1,7,0,0,0,0x08,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(2425501,0,35,5,2,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT'),
(2425501,2,20,1,7,0,0,0,0x08,0,0,0,0,0,0,0,0,'movement chenged to 1:random');
