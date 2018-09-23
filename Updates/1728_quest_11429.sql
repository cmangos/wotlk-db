-- q.11429 'Drop It then Rock It!'

-- Alliance Banner - stats
UPDATE creature_template SET Expansion = 2, MinLevel = 68, MaxLevel = 68, MinLevelHealth = 6986, MaxLevelHealth = 6986, Armor = 6126, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 292, MinMeleeDmg = 250.7, MaxMeleeDmg = 355.3 WHERE entry = 24640;
-- Relay
DELETE FROM dbscripts_on_relay WHERE id = 20052;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20052,1,10,24015,300000,0,0,0,8,1,0,0,0,1483.793091,-5352.790039,192.023712,1.431473,'summon Winterskorn Defender'),
(20052,20,10,24015,300000,1,0,0,8,1,0,0,0,1460.096436,-5342.498535,195.991714,0.339768,'summon Winterskorn Defender'),
(20052,40,10,24015,300000,2,0,0,8,1,0,0,0,1468.549561,-5300.886230,195.633850,5.760584,'summon Winterskorn Defender');

-- Winterskorn Defender
UPDATE creature_template SET MovementType = 2, UnitFlags = 32768 WHERE entry = 24015;
DELETE FROM creature_movement_template WHERE entry = 24015;
INSERT INTO creature_movement_template (entry, pathid, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(24015,0,1,1483.793091,-5352.790039,192.023712,0,2401501,1.431473),
(24015,0,2,1483.793091,-5352.790039,192.023712,1000,2401504,1.431473),
(24015,1,1,1460.096436,-5342.498535,195.991714,0,2401502,0.339768),
(24015,1,2,1460.096436,-5342.498535,195.991714,1000,2401504,0.339768),
(24015,2,1,1468.549561,-5300.886230,195.633850,0,2401503,5.760584),
(24015,2,2,1468.549561,-5300.886230,195.633850,1000,2401504,5.760584);
-- Script
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2401501 AND 2401504;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2401501,0,0,0,0,0,0,0,0,2000001723,0,0,0,0,0,0,0,''),
(2401502,0,0,0,0,0,0,0,0,2000001724,0,0,0,0,0,0,0,''),
(2401503,0,0,0,0,0,0,0,0,2000001725,0,0,0,0,0,0,0,''),
(2401504,0,35,5,5,0,0,0,0,0,0,0,0,0,0,0,0,'SEND_AI_EVENT'),
(2401504,1,26,0,0,0,24640,100,1 | 0x20,0,0,0,0,0,0,0,0,'attack - summoner');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001723 AND 2000001725;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001723,'Your remains will be fed TO the sharks of Daggercap!',0,1,0,22,NULL),
(2000001724,'The sacrifices NOW bring themselves TO us? Have you NO sense!?',0,1,0,22,NULL),
(2000001725,'You dare challenge Winterskorn?! I will impale you ON your own puny flag!',0,1,0,22,NULL);
