-- Frostbrood Skytalon 31137 & Dead Alliance Soldier 31281 - RP
-- small fix
UPDATE creature_template SET StaticFlags1 = 268959745 WHERE entry = 31137;
UPDATE creature_movement_template SET WaitTime = 200 WHERE ScriptId = 3113703;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3113701 AND 3113703;
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) values
(3113701,0,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove aura'),
(3113701,2000,20,2,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Set path 2'),
(3113702,2000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Set path 1'),
(3113703,0,31,31281,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 31281'),
(3113703,100,15,46598,0,0,31281,30,3,0,0,0,0,0,0,0,0,'cast 46598');
