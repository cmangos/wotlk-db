-- q.13141 'The Battle For Crusaders' Pinnacle'

-- objects
-- phase 128 added
UPDATE gameobject SET phasemask = 2+128 WHERE guid IN (
513995,514046,513997,513996,514002,513999,514000,513998,514028,513994,513992,514001,514026,514003,514025,514024,514010,514019,514013,514009,514008,514007,
514012,514016,514017,514006,514021,514022,514023);

-- missing creatures added
DELETE FROM creature_addon WHERE guid BETWEEN 536055 AND 536072;
DELETE FROM creature_movement WHERE id BETWEEN 536055 AND 536072;
DELETE FROM game_event_creature WHERE guid BETWEEN 536055 AND 536072;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 536055 AND 536072;
DELETE FROM creature_battleground WHERE guid BETWEEN 536055 AND 536072;
DELETE FROM creature_linking WHERE guid BETWEEN 536055 AND 536072;
DELETE FROM creature where guid BETWEEN 536055 AND 536072;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- (Wave 0) Torch Dummy 31004
(536055,31004,571,1,128,6405.316,431.95157,518.23236,0.2967,300,300,0,0),
(536056,31004,571,1,128,6401.721,464.4387,543.1727,2.1991147,300,300,0,0),
(536057,31004,571,1,128,6389.2207,474.00082,511.36502,1.55334,300,300,0,0),
(536058,31004,571,1,128,6391.3306,460.3002,511.3657,1.745329,300,300,0,0),
(536059,31004,571,1,128,6403.202,464.29547,535.65717,3.857,300,300,0,0),
(536060,31004,571,1,128,6397.238,475.2313,529.652,4.328416,300,300,0,0),
(536061,31004,571,1,128,6392.1694,475.7449,512.7209,0.628318,300,300,0,0),
(536062,31004,571,1,128,6394.698,427.47305,523.71765,1.85004,300,300,0,0),
(536063,31004,571,1,128,6393.723,427.96924,538.73535,1.6929,300,300,0,0),
(536064,31004,571,1,128,6408.0566,424.20767,511.3653,1.256637,300,300,0,0),
(536065,31004,571,1,128,6382.271,451.9008,537.9304,1.326450,300,300,0,0),
(536066,31004,571,1,128,6396.961,432.8676,533.744,3.176499,300,300,0,0),
(536067,31004,571,1,128,6371.181,452.45395,513.5053,1.204277,300,300,0,0),
(536068,31004,571,1,128,6366.836,459.12247,530.33606,0.733,300,300,0,0),
(536069,31004,571,1,128,6374.8076,445.4873,517.76294,4.03171,300,300,0,0),
(536070,31004,571,1,128,6372.479,447.4598,511.37253,0.24434,300,300,0,0),
(536071,31004,571,1,128,6367.246,459.7583,518.8009,3.857,300,300,0,0),
-- The Lich King 31013
(536072,31013,571,1,128,6389.7305,451.27432,513.3198,1.32645,300,300,0,0);

-- event
DELETE FROM dbscripts_on_event WHERE id IN (20082);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20082,1,31,30891,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 30891 - terminate if alive'),
(20082,100,10,30891,600000,0,0,0,0x08|0x04,0,0,0,0,6418.4224,422.97055,511.1964,5.8119,'summon 30891');
-- poss corrected for spell 58013
DELETE FROM spell_target_position WHERE Id IN(58013);
INSERT INTO spell_target_position VALUES
(58013,571,6418.42,422.97,511.11,0);

-- The Lich King 31013
UPDATE creature_template SET MinLevel = 83, MaxLevel = 83, Faction = 35, UnitFlags = 33554432, MovementType = 0 WHERE entry = 31013;

-- (Wave 0) Torch Dummy 31004
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, Faction = 35, InhabitType = 4, UnitFlags = 33554432, MovementType = 0 WHERE entry = 31004;

-- Blessed Banner of the Crusade 30891
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 2140, RegenerateStats = 0, StaticFlags2 = 2048, StaticFlags3 = 1, UnitFlags = 0, MovementType = 0 WHERE entry = 30891;
DELETE FROM creature_template_addon WHERE entry IN (30891);
UPDATE `broadcast_text` SET `ChatTypeID` = 3 WHERE `id` IN (31538,31539);
DELETE FROM dbscripts_on_relay WHERE id = 20932;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20932,1,31,31003,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003 - terminate if found'),
(20932,99,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: active self'),
(20932,100,10,31003,600000,0,0,0,0x08,0,0,0,0,6459.136,403.84842,490.39325,3.12086,'summon 31003'),
(20932,101,10,30919,600000,0,0,0,0x08,0,0,0,88,6462.385,403.66656,489.64752,3.1008,'summon 30919 - path 1'),
(20932,102,10,30919,600000,0,0,0,0x08,0,0,0,102,6463.9688,407.19748,489.2395,2.2689,'summon 30919 - path 2'),
(20932,103,10,30919,600000,0,0,0,0x08,0,0,0,103,6464.3706,400.94434,489.18616,6.1610,'summon 30919 - path 3'),
(20932,104,10,30900,600000,0,0,0,0x08,0,0,0,88,6462.982,401.0937,489.51758,2.7862,'summon 30900 - path 1'),
(20932,105,10,30900,600000,0,0,0,0x08,0,0,0,102,6463,405.59848,489.4898,2.9419,'summon 30900 - path 2'),
(20932,106,10,30900,600000,0,0,0,0x08,0,0,0,103,6463.276,409.81076,489.27222,3.0968,'summon 30900 - path 3'),
(20932,25000,0,0,0,0,31013,536072,7|0x10,29508,0,0,0,0,0,0,0,'buddy say'), -- 00:37:51.151
(20932,25100,16,14793,2,0,31013,536072,7|0x10,0,0,0,0,0,0,0,0,'buddy sound'),
-- waves starts here
(20932,27000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.268,408.24734,490.1217,2.984513,'summon 30984'), -- ghoul
(20932,27001,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.91,397.833,489.9973,2.8099,'summon 30984'),
(20932,27002,10,30984,300000,0,0,0,0x08,0,0,0,0,6465.638,402.74252,488.84833,2.86233,'summon 30984'),
(20932,55000,0,0,0,0,31013,536072,7|0x10,29515,0,0,0,0,0,0,0,'buddy say'), -- 00:38:21.985
(20932,55100,16,14800,2,0,31013,536072,7|0x10,0,0,0,0,0,0,0,0,'buddy sound'),
(20932,55500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,56000,10,30986,300000,0,0,0,0x08,0,0,0,0,6470.7114,399.197,487.66043,2.8623,'summon 30986'), -- captain -- 00:38:22.984
(20932,56001,10,30986,300000,0,0,0,0x08,0,0,0,0,6471.0957,407.59766,487.27872,3.08923,'summon 30986'), -- captain
(20932,59500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,60000,10,30984,300000,0,0,0,0x08,0,0,0,0,6465.638,402.74252,488.84833,2.86233,'summon 30984'), -- ghoul -- 00:38:26.218
(20932,61000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.91,397.833,489.9973,2.80998,'summon 30984'), -- 00:38:27.424
(20932,62000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.268,408.24734,490.1217,2.98451,'summon 30984'),
(20932,77500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,78000,10,30986,300000,0,0,0,0x08,0,0,0,0,6471.0957,407.59766,487.27872,3.08923,'summon 30986'), -- captain -- 00:38:54.857
(20932,83500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,84000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.268,408.24734,490.1217,2.98451,'summon 30984'), -- ghoul
(20932,84001,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.91,397.833,489.9973,2.80998,'summon 30984'), -- ghoul -- 00:39:00.012
(20932,88500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,89000,10,30984,300000,0,0,0,0x08,0,0,0,0,6465.638,402.74252,488.84833,2.86233,'summon 30984'), -- ghoul -- 00:39:05.471
(20932,89001,10,30986,300000,0,0,0,0x08,0,0,0,0,6470.7114,399.197,487.66043,2.8623399,'summon 30986'), -- captain -- 00:39:05.471
(20932,103500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,104000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.268,408.24734,490.1217,2.98451,'summon 30984'), -- ghoul -- 00:39:31.375
(20932,108500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,109000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.91,397.833,489.9973,2.80998,'summon 30984'), -- ghoul -- 00:39:36.613
(20932,109001,10,30986,300000,0,0,0,0x08,0,0,0,0,6471.0957,407.59766,487.27872,3.089232,'summon 30986'), -- captain -- 00:39:36.613
(20932,119500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,120000,10,30984,300000,0,0,0,0x08,0,0,0,0,6465.638,402.74252,488.84833,2.86233,'summon 30984'), -- ghoul -- 00:39:47.142
(20932,124500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,125000,10,30986,300000,0,0,0,0x08,0,0,0,0,6470.7114,399.197,487.66043,2.86233,'summon 30986'), -- captain -- 00:39:52.075
(20932,125800,0,0,0,0,31013,536072,7|0x10,29516,0,0,0,0,0,0,0,'buddy say'), -- 00:39:52.819
(20932,125900,16,14801,2,0,31013,536072,7|0x10,0,0,0,0,0,0,0,0,'buddy sound'),
(20932,129500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,130000,10,30987,300000,0,0,0,0x08,0,0,0,0,6476.5933,402.24673,486.00436,2.799599,'summon 30987'), -- Plaguebringer -- 00:39:57.299
(20932,130001,10,30987,300000,0,0,0,0x08,0,0,0,0,6474.8994,408.96136,486.1203,2.8993,'summon 30987'), -- Plaguebringer -- 00:39:57.299
(20932,134500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,135000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.268,408.24734,490.1217,2.9845,'summon 30984'), -- ghoul -- 00:40:02.515
(20932,139500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,140000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.91,397.833,489.9973,2.8099,'summon 30984'), -- ghoul -- 00:40:07.828
(20932,140001,10,30986,300000,0,0,0,0x08,0,0,0,0,6471.0957,407.59766,487.27872,3.0892,'summon 30986'), -- captain -- 00:40:07.828
(20932,154500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,155000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.91,397.833,489.9973,2.8099,'summon 30984'), -- ghoul -- 00:40:23.28
(20932,164500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,165000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.91,397.833,489.9973,2.8099,'summon 30984'), -- ghoul -- 00:40:33.638
(20932,165001,10,30987,300000,0,0,0,0x08,0,0,0,0,6474.8994,408.96136,486.1203,2.89939,'summon 30987'), -- Plaguebringer -- 00:40:33.638
(20932,169500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,170000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.268,408.24734,490.1217,2.984,'summon 30984'), -- ghoul -- 00:40:38.966
(20932,170001,10,30987,300000,0,0,0,0x08,0,0,0,0,6476.5933,402.24673,486.00436,2.799599,'summon 30987'), -- Plaguebringer -- 00:40:38.966
(20932,179500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,180000,10,30986,300000,0,0,0,0x08,0,0,0,0,6471.0957,407.59766,487.27872,3.0892,'summon 30986'), -- captain -- 00:40:49.438
(20932,189500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,190000,10,30984,300000,0,0,0,0x08,0,0,0,0,6465.638,402.74252,488.84833,2.86233,'summon 30984'), -- ghoul -- 00:41:00.009
(20932,199500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,200000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.91,397.833,489.9973,2.80998,'summon 30984'), -- ghoul -- 00:41:10.197
(20932,200001,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.268,408.24734,490.1217,2.98451,'summon 30984'), -- ghoul -- 00:41:10.197
(20932,204500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,205000,10,30986,300000,0,0,0,0x08,0,0,0,0,6470.7114,399.197,487.66043,2.86233,'summon 30986'), -- captain -- 00:41:15.372
(20932,205001,10,30987,300000,0,0,0,0x08,0,0,0,0,6476.5933,402.24673,486.00436,2.799599,'summon 30987'), -- Plaguebringer -- 00:41:15.372
(20932,224500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,225000,10,30984,300000,0,0,0,0x08,0,0,0,0,6465.638,402.74252,488.84833,2.86233,'summon 30984'), -- ghoul -- 00:41:36.286
(20932,235001,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.268,408.24734,490.1217,2.98451,'summon 30984'), -- ghoul -- 00:41:46.615
(20932,235002,10,30987,300000,0,0,0,0x08,0,0,0,0,6474.8994,408.96136,486.1203,2.86233,'summon 30987'), -- Plaguebringer -- 00:41:46.615
(20932,243500,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,244000,0,0,0,0,31013,536072,7|0x10,29517,0,0,0,0,0,0,0,'buddy say'), -- 00:41:54.315
(20932,244001,16,14802,2,0,31013,536072,7|0x10,0,0,0,0,0,0,0,0,'buddy sound'),
(20932,244002,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,244100,10,30989,600000,0,0,0,0x08,0,0,0,0,6469.5547,405.3344,487.7435,3.281219,'summon 30989'), -- Halof the Deathbringer -- 00:41:54.580
(20932,249500,31,30989,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 30989'),
(20932,249800,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,250000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.91,397.833,489.9973,2.80998,'summon 30984'), -- ghoul -- 00:41:57.040
(20932,250001,10,30987,300000,0,0,0,0x08,0,0,0,0,6476.5933,402.24673,486.00436,2.799599,'summon 30987'), -- Plaguebringer -- 00:41:57.040
(20932,252500,31,30989,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 30989'),
(20932,252800,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,253000,10,30984,300000,0,0,0,0x08,0,0,0,0,6465.638,402.74252,488.84833,2.86233,'summon 30984'), -- ghoul -- 00:42:00.270
(20932,253001,10,30986,300000,0,0,0,0x08,0,0,0,0,6470.7114,399.197,487.66043,2.86233,'summon 30986'), -- captain -- 00:42:00.270
(20932,258500,31,30989,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 30989'),
(20932,258800,31,31003,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Blessed Banner of the Crusade 30891 EAI: search for 31003'),
(20932,259000,10,30986,300000,0,0,0,0x08,0,0,0,0,6471.0957,407.59766,487.27872,3.08923,'summon 30986'), -- captain -- 00:42:07.420
(20932,265000,10,30984,300000,0,0,0,0x08,0,0,0,0,6460.91,397.833,489.9973,2.80998,'summon 30984'); -- ghoul -- 00:42:12.744
-- default for all attackers
DELETE FROM dbscripts_on_relay WHERE id = 20933;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20933,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of q.13141 - attackers'),
(20933,5000,3,0,0,0,0,0,0x04,0,0,0,0,6421.41,424.401,510.905,2.6471,'Part of q.13141 - attackers'),
(20935,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of q.13141 - attackers'),
(20935,100,3,0,0,0,0,0,0x04,0,0,0,0,6421.41,424.401,510.905,2.6471,'Part of q.13141 - attackers');
DELETE FROM spell_script_target WHERE entry IN (58114,58121);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(58114, 1, 30984, 0),
(58114, 1, 30986, 0),
(58114, 1, 30987, 0),
(58114, 1, 30989, 0),
(58121, 1, 31004, 0);

-- Scourge Drudge 30984
UPDATE creature_template SET MinLevel = 77, MaxLevel = 78, UnitClass = 2, Expansion = 2, HealthMultiplier = 1, PowerMultiplier = 1, Faction = 2068, UnitFlags = 32768 WHERE entry = 30984;
-- Reanimated Captain 30986
UPDATE creature_template SET MinLevel = 78, MaxLevel = 79, UnitClass = 2, Expansion = 2, HealthMultiplier = 1, PowerMultiplier = 1, Faction = 2068, UnitFlags = 32768 WHERE entry = 30986;
-- Hideous Plaguebringer 30987
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, UnitClass = 1, Expansion = 2, HealthMultiplier = 1, PowerMultiplier = 1, Faction = 2068, UnitFlags = 32768 WHERE entry = 30987;
-- Halof the Deathbringer 30989
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpeedWalk = (6 / 2.5), SpeedRun = (14 / 7), UnitClass = 2, Expansion = 2, HealthMultiplier = 10, PowerMultiplier = 1, Faction = 2068, UnitFlags = 32768, EquipmentTemplateId = 2544, MovementType = 2 WHERE entry = 30989;
DELETE FROM creature_equip_template WHERE entry = 2544;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2544,33169,33169,0);
DELETE FROM creature_template_addon WHERE entry IN (30989);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(30989,0,0,1,0,0,0,'42459');
DELETE FROM creature_movement_template WHERE Entry = 30989;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30989,1,6469.5547,405.3344,487.7435,3.281219,7000,5),
(30989,2,6469.5547,405.3344,487.7435,3.281219,1000,3098901),
(30989,3,6450.5527,403.93048,492.94794,100,0,0),
(30989,4,6436.8027,412.93048,500.94794,100,0,0),
(30989,5,6423.0503,422.02658,510.15234,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3098901;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3098901,1,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3098901,100,0,0,0,0,0,0,0x04,31545,0,0,0,0,0,0,0,''),
(3098901,110,31,30891,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 30891'),
(3098901,500,26,0,0,0,30891,1100,1,0,0,0,0,0,0,0,0,'');
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `id` IN (31545,31573,29511);

-- Crusader Lord Dalfors 31003
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, UnitClass = 2, Expansion = 2, HealthMultiplier = 20, PowerMultiplier = 8, Faction = 2131, UnitFlags = 32768, EquipmentTemplateId = 1030, MovementType = 2 WHERE entry = 31003;
DELETE FROM creature_template_addon WHERE entry IN (31003);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(31003,2786,0,0,0,333,0,'58110');
DELETE FROM creature_movement_template WHERE Entry = 31003;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31003,1,6459.136,403.84842,490.39325,3.12086,10,5),
(31003,2,6429.734,416.6166,505.4706,100,0,0),
(31003,3,6422.9497,423.33536,510.4508,100,9000,3100301),
(31003,4,6422.9497,423.33536,510.4508,5.58505,9000,3100302),
(31003,5,6426.3433,420.51547,508.5636,5.829399,1000,3100303);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3100301 AND 3100303;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3100301,1,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RuN Off'),
(3100301,1000,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3100301,1100,0,0,0,0,0,0,0x04,31560,0,0,0,0,0,0,0,'say'),
(3100302,3000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3100302,3100,0,0,0,0,0,0,0x04,31561,0,0,0,0,0,0,0,'say'),
(3100303,100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3100303,200,0,0,0,0,0,0,0x04,31562,0,0,0,0,0,0,0,'say'),
(3100303,300,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle');
DELETE FROM dbscripts_on_relay WHERE id = 20934;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20934,3000,0,0,0,0,0,0,0x04,31573,0,0,0,0,0,0,0,'Part of  Crusader Lord Dalfors 31003 EAI - Say'),
(20934,15000,35,6,100,0,0,0,0,0,0,0,0,0,0,0,0,'send event 6'),
(20934,16000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');

-- Argent Battle-priest 30919
UPDATE creature_template SET MinLevel = 79, MaxLevel = 80, UnitClass = 2, Expansion = 2, HealthMultiplier = 10, PowerMultiplier = 4, Faction = 2131, UnitFlags = 32768, EquipmentTemplateId = 1009 WHERE entry = 30919;
DELETE FROM creature_template_addon WHERE entry IN (30919);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(30919,0,0,0,0,333,0,'58110');
DELETE FROM creature_movement_template WHERE Entry = 30919;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- Path 1
(30919,1,1,6462.385,403.66656,489.64752,3.1008,10,5),
(30919,1,2,6436.925,409.3444,499.86145,100,0,0),
(30919,1,3,6421.4824,423.57617,510.78876,100,0,0),
(30919,1,4,6421.4824,423.57617,510.78876,5.742133140563964843,1000,3),
-- Path 2
(30919,2,1,6463.9688,407.19748,489.2395,2.2689,10,5),
(30919,2,2,6449.3374,406.9103,493.07556,100,0,0),
(30919,2,7,6419.449,421.37018,510.82278,100,0,0),
(30919,2,8,6419.449,421.37018,510.82278,5.71,1000,3),
-- Path 3
(30919,3,1,6464.3706,400.94434,489.18616,6.1610,10,5),
(30919,3,2,6456.74,404.59253,490.8675,100,0,0),
(30919,3,4,6433.3027,411.41644,502.13776,100,0,0),
(30919,3,8,6423.5156,425.78217,510.7749,100,0,0),
(30919,3,9,6423.5156,425.78217,510.7749,5.35,1000,3);

-- Argent Mason 30900
UPDATE creature_template SET MinLevel = 75, MaxLevel = 78, UnitClass = 2, Expansion = 1, HealthMultiplier = 1, PowerMultiplier = 1, Faction = 2070, UnitFlags = 32768, EquipmentTemplateId = 845 WHERE entry = 30900;
DELETE FROM creature_movement_template WHERE Entry = 30900;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- Path 1
(30900,1,1,6462.982,401.0937,489.51758,2.7862,10,5),
(30900,1,2,6423.8555,416.5983,508.25903,100,14000,0),
(30900,1,3,6417.072,438.81866,511.28198,100,0,0),
(30900,1,4,6417.072,438.81866,511.28198,3.66519,1000,3090001),
-- Path 2
(30900,2,1,6463,405.59848,489.4898,2.9419,10,5),
(30900,2,2,6426.2505,419.19418,508.1281,100,14000,0),
(30900,2,3,6415.0166,446.84357,511.2829,100,0,0),
(30900,2,4,6415.0166,446.84357,511.2829,3.124139,1000,3090001),
-- Path 3
(30900,3,1,6463.276,409.81076,489.27222,3.0968,10,5),
(30900,3,2,6428.1626,421.96072,508.2083,100,14000,0),
(30900,3,3,6414.3374,454.89996,511.29297,100,0,0),
(30900,3,4,6414.3374,454.89996,511.29297,2.89724,1000,3090001);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3090001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3090001,1,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 5'),
(3090001,2,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle');
