-- Scarlet Captain 28611 - update
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2861101,2861102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2861101,0,31,28557,20,0,0,0,0,-15000,0,0,0,0,0,0,0,''),
(2861101,100,3,0,700,0,0,0,0,0,0,0,0,2165.24,-5877.88,101.342,4.76026,''),
(2861101,3000,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2861101,3500,35,5,7,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2861102,0,31,28557,20,0,0,0,0,-15000,0,0,0,0,0,0,0,''),
(2861102,100,3,0,700,0,0,0,0,0,0,0,0,2144.43,-5724.82,100.802,0.60027,''),
(2861102,3000,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2861101,3500,35,5,7,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- PArt of Scarlet Peasant 28557 EAI:
DELETE FROM dbscripts_on_relay WHERE id = 20480;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20480,1000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'PArt of Scarlet Peasant 28557 EAI: state emote - off'),
(20480,3000,0,0,0,0,0,0,0,2000020739,2000020740,0,0,0,0,0,0,'PArt of Scarlet Peasant 28557 EAI: random say'),
(20480,8000,1,234,0,0,0,0,0,0,0,0,0,0,0,0,0,'PArt of Scarlet Peasant 28557 EAI: emote');
UPDATE dbscript_string SET entry = 2000020739 WHERE entry = 2000000407;
UPDATE dbscript_string SET entry = 2000020740 WHERE entry = 2000000408;
