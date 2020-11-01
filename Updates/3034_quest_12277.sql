-- q.12277 'Leave Nothing to Chance'
-- Wintergarde Mine Bomb 27435
UPDATE creature_template SET Expansion = 2, MinLevel = 71, MaxLevel = 73, MinLevelHealth = 9291, MaxLevelHealth = 9940, UnitFlags = 0 WHERE entry = 27435;
DELETE FROM dbscripts_on_relay WHERE id IN (20390);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20390,10,0,0,0,0,0,0,0,2000001041,0,0,0,0,0,0,0,'Part of Wintergarde Mine Bomb EAI: say ready'),
(20390,2000,0,0,0,0,0,0,0,2000001042,0,0,0,0,0,0,0,'Part of Wintergarde Mine Bomb EAI: say 1'),
(20390,3000,0,0,0,0,0,0,0,2000001043,0,0,0,0,0,0,0,'Part of Wintergarde Mine Bomb EAI: say 2'),
(20390,4000,0,0,0,0,0,0,0,2000001044,0,0,0,0,0,0,0,'Part of Wintergarde Mine Bomb EAI: say 3'),
(20390,5000,0,0,0,0,0,0,0,2000001045,0,0,0,0,0,0,0,'Part of Wintergarde Mine Bomb EAI: say 4'),
(20390,6000,0,0,0,0,0,0,0,2000001046,0,0,0,0,0,0,0,'Part of Wintergarde Mine Bomb EAI: say 5'),
(20390,7000,15,48742,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Wintergarde Mine Bomb EAI: Cast 48742'),
(20390,8000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wintergarde Mine Bomb EAI: desp');

-- Wintergarde Mine Cave In (2) 188712
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60, animprogress = 255, state = 0 WHERE id = 188712;
DELETE FROM dbscripts_on_go_template_use WHERE id = 188712;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(188712,60000,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset object');
DELETE FROM spell_script_target WHERE entry = 48742;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(48742, 1, 27436, 6),
(48742, 1, 27437, 6),
(48742, 1, 27403, 6),
(48742, 1, 27435, 6),
(48742, 0, 188712, 3);
