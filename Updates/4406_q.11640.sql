-- q.11640 'Words of Power'
-- not needed anymore
DELETE FROM creature_linking WHERE master_guid = 85241;
DELETE FROM dbscripts_on_creature_death WHERE id IN (15214,25378);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1521401,2537802);
DELETE FROM creature_movement WHERE id IN (500650,509010,509011,509014);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (500650,509010,509011,509014);
-- RP group
DELETE FROM creature_spawn_data WHERE guid IN (500650,509010,509011,509014);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(500650,20035),(509010,20033),(509011,20033),(509014,20033);
DELETE FROM dbscripts_on_relay WHERE id = 20700;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20700,1,31,25378,50,0,0,0,8,0,0,0,0,0,0,0,0,'terminate if any other 25378 found'),
(20700,100,31,26076,20,0,0,0,0,0,0,0,0,0,0,0,0,'terminate if 26076 not found'),
(20700,200,28,0,0,0,26076,512013,7|0x10,0,0,0,0,0,0,0,0,'buddy STATE_STAND'),
(20700,400,0,0,0,0,26076,512013,7|0x10,24586,0,0,0,0,0,0,0,'buddy Say'),
(20700,401,48,33555200,0,0,26076,512013,7|0x10,0,0,0,0,0,0,0,0,'remove UnitFlags from buddy'),
(20700,402,15,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'suicide self');
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (24586);
