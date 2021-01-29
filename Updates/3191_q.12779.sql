-- q.12779 'An End To All Things...'

-- Frostbrood Vanquisher 28670
UPDATE creature_template SET RegenerateStats = 12, MinLevelHealth = 133525, MaxLevelHealth = 133525, MinLevelMana = 51360, MaxLevelMana = 51360, HealthMultiplier = 31, PowerMultiplier = 20 WHERE entry = 28670;

-- Scarlet Ballista 29104
UPDATE creature_template SET Detection = 50, VisibilityDistanceType = 3 WHERE entry = 29104;

DELETE FROM dbscripts_on_relay WHERE id IN (20513,20514);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- Part of Frostbrood Vanquisher EAI
(20513,10,34,20223,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Frostbrood Vanquisher EAI: area check'),
(20513,100,15,51272,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Frostbrood Vanquisher EAI: cast 51272'),
(20513,1000,0,0,0,0,0,0,0,2000020101,0,0,0,0,0,0,0,'Part of Frostbrood Vanquisher EAI: Say warning'),
(20513,10000,34,20223,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Frostbrood Vanquisher EAI: area check'),
(20513,10010,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Frostbrood Vanquisher EAI: send AI Event A'),
(20513,10100,14,52196,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Frostbrood Vanquisher EAI: Player Drop'),
-- Part of Scarlet Ballista EAI
(20514,100,31,28670,150,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Scarlet Ballista EAI: search for 28670'),
(20514,200,26,0,0,0,28670,160,1,0,0,0,0,0,0,0,0,'Part of Scarlet Ballista EAI: start attack target');

DELETE FROM conditions WHERE condition_entry BETWEEN 20205 AND 20223;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(20205, 4, 4356,0,0,0),(20206, 4, 4347,0,0,0),(20207, 4, 4349,0,0,0),
(20208, 4, 4348,0,0,0),(20209, 4, 4350,0,0,0),(20210, 4, 4365,0,0,0),
(20211, 4, 4355,0,0,0),(20212, 4, 4343,0,0,0),(20213, 4, 4346,0,0,0),
(20214, 4, 4352,0,0,0),(20215, 4, 4345,0,0,0),(20216, 4, 4360,0,0,0),
(20217, 4, 4351,0,0,0),(20218, 4, 4377,0,0,0),
(20219, -2, 20218,20217,20216,20215),
(20220, -2, 20214,20213,20212,20211),
(20221, -2, 20210,20209,20208,20207),
(20222, -2, 20221,20220,20219,20206),
(20223, -2, 20222,20205,0,0);
DELETE FROM dbscript_string WHERE entry = 2000020101;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020101,'Return to the field of battle or you will be dropped!',0,3,0,0,NULL);
