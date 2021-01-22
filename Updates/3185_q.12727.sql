-- q.12727 'Bloody Breakout'
DELETE FROM dbscripts_on_quest_start WHERE id = 12727;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12727,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Koltira active'),
(12727,2,29,3,0,0,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(12727,10,0,0,0,0,0,0,0,2000020748,0,0,0,0,0,0,0,''),
(12727,15,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(12727,4000,0,0,0,0,0,0,0,2000020749,0,0,0,0,0,0,0,''),
(12727,5000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(12727,7000,3,0,0,0,0,0,0,0,0,0,0,1653.36,-6038.34,127.584,1.78556,''),
(12727,8000,3,0,0,0,0,0,0,0,0,0,0,1653.94,-6034.72,127.584,1.29819,''),
(12727,11000,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12727,12000,0,0,0,0,29011,561507,23,2000020750,0,0,0,0,0,0,0,'Valroth - text'),
(12727,13000,15,52899,0,0,0,0,4,0,0,0,0,0,0,0,0,''),
(12727,13000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(12727,15000,3,0,0,0,0,0,0,0,0,0,0,1651.89,-6037.1,127.584,3.83972,''),
(12727,15000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,16000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,16000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,16500,34,20192,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is alive'),
(12727,16800,34,20193,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is there'),
(12727,17000,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12727,17000,0,0,0,0,0,0,0,2000020751,0,0,0,0,0,0,0,''),
(12727,17500,35,8,0,0,0,0,4,0,0,0,0,0,0,0,0,'Send AI Event 8'),
(12727,18000,15,52894,1,0,0,0,4,0,0,0,0,0,0,0,0,''),
(12727,21000,0,0,0,0,0,0,0,2000020752,0,0,0,0,0,0,0,''),
(12727,21000,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12727,24100,34,20192,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is alive'),
(12727,24300,34,20193,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is there'),
(12727,41000,0,0,0,0,0,0,0,2000020753,0,0,0,0,0,0,0,''),
(12727,42000,0,0,0,0,29011,561507,23,2000020754,0,0,0,0,0,0,0,'Valroth - text'),
(12727,43000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,44000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,44000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,45100,34,20192,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is alive'),
(12727,45300,34,20193,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is there'),
(12727,76000,0,0,0,0,0,0,0,2000020755,0,0,0,0,0,0,0,''),
(12727,77000,0,0,0,0,29011,561507,23,2000020756,0,0,0,0,0,0,0,'Valroth - text'),
(12727,78000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,79000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,79000,10,29007,300000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon Crimson Acolyte'),
(12727,80100,34,20192,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is alive'),
(12727,80300,34,20193,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is there'),
(12727,111000,0,0,0,0,0,0,0,2000020757,0,0,0,0,0,0,0,''),
(12727,112000,0,0,0,0,29011,561507,23,2000020758,0,0,0,0,0,0,0,'Valroth - text'),
(12727,113000,10,29001,420000,0,0,0,8,1,0,0,0,1640.65,-6032.49,134.739,4.58821,'summon High Inquisitor Valroth'),
(12727,114100,34,20192,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is alive'),
(12727,114300,34,20193,12727,0,0,0,0,0,0,0,0,0,0,0,0,'check if player is there');
-- checks added
DELETE FROM conditions WHERE condition_entry BETWEEN 20192 AND 20193;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES 
(20192,36,1,0,0,0), -- player or group dead
(20193,36,1,40,0,0); -- player or group away

-- Koltira Deathweaver 28912 - missing aura added
UPDATE creature_template SET UnitFlags = 33280 WHERE Entry = 28912;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id = 28912;
UPDATE creature_template_addon SET auras = 53627 WHERE entry = 28912;
-- script updated
UPDATE dbscripts_on_creature_movement SET dataint = 2000020760 WHERE dataint = 2000000452 AND id = 2891201;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020761 WHERE dataint = 2000000453 AND id = 2891201;
UPDATE dbscripts_on_creature_movement SET dataint = 2000020762 WHERE dataint = 2000000454 AND id = 2891201;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2891201 AND delay = 14000; -- update
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2891201,14000,48,512,0,0,0,0,4,0,0,0,0,0,0,0,0,'Remove UnitFlags');
DELETE FROM dbscripts_on_creature_movement WHERE id = 2891203; -- redone
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2891203,10,24,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'unmount'),
(2891203,20,20,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'idle'),
(2891203,100,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'despawn self');
-- Part of Koltira Deathweaver 28912 EAI:
DELETE FROM dbscripts_on_relay WHERE id = 20512;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20512,1,48,512,1,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Koltira Deathweaver 28912 EAI: Add UnitFlags'),
(20512,2,29,3,1,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Koltira Deathweaver 28912 EAI: NPCFlags added'),
(20512,3,21,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'Part of Koltira Deathweaver 28912 EAI: unactive');
-- texts moved to wotlk section
UPDATE dbscript_string SET entry = 2000020748 WHERE entry = 2000000440;
UPDATE dbscript_string SET entry = 2000020749 WHERE entry = 2000000441;
UPDATE dbscript_string SET entry = 2000020750 WHERE entry = 2000000442;
UPDATE dbscript_string SET entry = 2000020751 WHERE entry = 2000000443;
UPDATE dbscript_string SET entry = 2000020752 WHERE entry = 2000000444;
UPDATE dbscript_string SET entry = 2000020753 WHERE entry = 2000000445;
UPDATE dbscript_string SET entry = 2000020754 WHERE entry = 2000000446;
UPDATE dbscript_string SET entry = 2000020755 WHERE entry = 2000000447;
UPDATE dbscript_string SET entry = 2000020756 WHERE entry = 2000000448;
UPDATE dbscript_string SET entry = 2000020757 WHERE entry = 2000000449;
UPDATE dbscript_string SET entry = 2000020758 WHERE entry = 2000000450;
UPDATE dbscript_string SET entry = 2000020760 WHERE entry = 2000000452;
UPDATE dbscript_string SET entry = 2000020761 WHERE entry = 2000000453;
UPDATE dbscript_string SET entry = 2000020762 WHERE entry = 2000000454;

-- High Inquisitor Valroth 29001 -- immune for Death Grip
UPDATE creature_template SET MechanicImmuneMask = 32 WHERE Entry = 29001;
