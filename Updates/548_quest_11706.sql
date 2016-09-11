-- q.11706 'The Collapse'
DELETE FROM dbscripts_on_event WHERE id = 16929;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(16929,3,10,25742,16000,0,0,0x08,0,0,0,0,3517.593,4529.941,-12.91225,3.839724,'summon Alluvius'),
(16929,4,3,0,0,25742,100,7,0,0,0,0,3511.1,4520,-12.0976,3.3395,''),
(16929,9,1,35,0,25742,100,7,0,0,0,0,0,0,0,0,''),
(16929,10,15,39983,0,25742,100,7,0,0,0,0,0,0,0,0,''),
(16929,12,10,25629,300000,0,0,0x08,0,0,0,0,3488.873,4490.756,-13.63661,6.003932,'summon Lord Kryxix'),
(16929,13,3,0,700,25629,100,7,0,0,0,0,3513.46,4489.76,-12.9959,0.568083,''),
(16929,13,0,0,0,25629,100,7,2000000406,0,0,0,0,0,0,0,''),
(16929,15,8,25742,0,0,0,0,0,0,0,0,0,0,0,0,''),
(16929,16,3,0,700,25629,100,7,0,0,0,0,3524.2,4510.61,-12.9955,2.01164,''),
(16929,18,3,0,700,25629,100,7,0,0,0,0,3516.48,4526.04,-12.9955,2.92271,''),
(16929,22,26,0,0,25629,100,3,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000000406;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000406,'Foolish elemental slave! You and your master will pay for your meddling!',0,1,0,0,NULL);

-- Stats
-- Alluvius
UPDATE creature_template SET MinLevel = 71, MaxLevel = 71, UnitFlags = 33536, MinLevelHealth = 9291, MaxLevelHealth = 9291, Expansion = 2, Armor = 7007, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 290, RangedAttackPower = 37, MinMeleeDmg = 294.7, MaxMeleeDmg = 422.1, MovementType = 0 WHERE entry = 25742;
-- Lord Kryxix - 25768
UPDATE creature_template SET Expansion = 2, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 290, RangedAttackPower = 37, MinMeleeDmg = 294.7, MaxMeleeDmg = 422.1 WHERE entry = 25768;
-- Lord Kryxix - 25629
UPDATE creature_template SET UnitFlags = 256, Expansion = 2, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 290, RangedAttackPower = 37, MinMeleeDmg = 294.7, MaxMeleeDmg = 422.1 WHERE entry = 25629;

-- TEMP South Sinkhole 
-- UDB free guid reused
DELETE FROM gameobject WHERE guid = 66846;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(66846, 300177, 571, 1,1,3488.48, 4515.98, -20.7394, 5.34436, 0, 0, 0.452361, -0.891835, 300, 255, 1);
-- radius 
UPDATE gameobject_template SET data1 = 20 WHERE entry = 300177;
