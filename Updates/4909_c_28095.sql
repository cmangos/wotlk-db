-- Pitch 28097 & Tracker Gekgek 28095 RP
-- fixed

-- Tracker Gekgek 28095
-- shouldnt be a questgiver at start
DELETE FROM dbscript_random_templates WHERE id = 20092;
DELETE FROM creature_spawn_data WHERE guid IN(520742);
INSERT INTO creature_spawn_data (Guid,Id) VALUES
(520742, 10);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20775 AND 20779;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20775,1,0,31,28097,255,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Tracker Gekgek 28095 EAI: script check'),
(20775,100,0,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Tracker Gekgek 28095 EAI: Add NpCFlags'),
(20776,1,0,31,28097,255,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Tracker Gekgek 28095 EAI: script check'),
(20776,100,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Tracker Gekgek 28095 EAI: Remove NpCFlags'),
(20776,101,0,0,20091,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Tracker Gekgek 28095 EAI: Random Say'),
(20777,10,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Tracker Gekgek 28095 EAI: SET RUN'),
(20777,100,0,3,0,0,0,0,0,0x04,0,0,0,0,5063.252,4727.749,-132.2434,2.928551,'Part of Tracker Gekgek 28095 EAI: move to'),
(20777,1000,0,0,0,0,0,0,0,0,27605,0,0,0,0,0,0,0,'Part of Tracker Gekgek 28095 EAI: Say'),
(20778,10,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Frenzyheart Tracker 28077 EAI: SET RUN'),
(20778,100,0,3,0,0,0,0,0,0x04,0,0,0,0,5062.35,4735.288,-130.1532,3.316126,'Part of Frenzyheart Tracker 28077 EAI: move to'),
(20779,10,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Frenzyheart Tracker 28077 EAI: SET RUN'),
(20779,100,0,3,0,0,0,0,0,0x04,0,0,0,0,5061.186,4720.498,-134.3684,2.70526,'Part of Frenzyheart Tracker 28077 EAI: move to');
-- target corrected
DELETE FROM spell_script_target WHERE entry IN (51343);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(51343, 1, 28077, 0),
(51343, 1, 28095, 0);
