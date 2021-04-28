-- q.12153 'The Iron Thane and His Anvil' - Alliance
-- q.12199 'Bringing Down the Iron Thane' - Horde

-- Iron Thane Furyhammer 26405 & The Anvil 26406
UPDATE creature_template SET Faction = 1954 WHERE entry = 26405;
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20580 AND 20582;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20580,0,34,20288,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Thane Furyhammer 26405 EAI: check condition - terminate if aura applied'),
(20580,50,15,47922,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Thane Furyhammer 26405 EAI: Cast 47922'),
(20580,60,0,0,0,0,0,0,0x04,2000020905,0,0,0,0,0,0,0,'Part of Thane Furyhammer 26405 EAI: text'),
(20581,0,35,5,50,0,0,0,0,0,0,0,0,0,0,0,0,'Part of The Anvil 26406 EAI: Send AI Event 5'),
(20582,0,31,26405,50,0,0,0,0,0,0,0,0,0,0,0,0,'Part of The Anvil 26406 EAI: search for 26405'),
(20582,50,14,47922,0,0,26405,60,7,0,0,0,0,0,0,0,0,'Part of The Anvil 26406 EAI: remove aura'),
(20582,60,0,0,0,0,0,0,0,2000020904,0,0,0,0,0,0,0,'Part of The Anvil 26406 EAI: text');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020904 AND 2000020905;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020904,'The EMP disrupts Iron Thane Furyhammer\'s shield!',0,2,0,0,NULL),
(2000020905,'%s recovers from the EMP and restores Iron Thane Furyhammer\'s shield.',0,2,0,0,NULL);
DELETE FROM conditions WHERE condition_entry = 20288;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20288, 1, 47922, 0, 2);

-- Charged War Golem 29005
UPDATE creature_template SET MinLevel = 75, MaxLevel = 75 WHERE entry = 29005;
