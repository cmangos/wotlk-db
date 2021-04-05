-- Budd 32663
-- HP and armor - completed
-- other stats - missing
DELETE FROM pet_levelstats WHERE creature_entry = 32663;
INSERT INTO pet_levelstats (creature_entry, level, hp, mana, armor, str, agi, sta, inte, spi) VALUES
(32663,1,42,0,7,0,0,0,0,0),
(32663,2,55,0,8,0,0,0,0,0),
(32663,3,71,0,33,0,0,0,0,0),
(32663,4,86,0,68,0,0,0,0,0),
(32663,5,102,0,111,0,0,0,0,0),
(32663,6,120,0,165,0,0,0,0,0),
(32663,7,137,0,230,0,0,0,0,0),
(32663,8,156,0,306,0,0,0,0,0),
(32663,9,176,0,387,0,0,0,0,0),
(32663,10,198,0,463,0,0,0,0,0),
(32663,11,222,0,528,0,0,0,0,0),
(32663,12,247,0,562,0,0,0,0,0),
(32663,13,273,0,596,0,0,0,0,0),
(32663,14,300,0,630,0,0,0,0,0),
(32663,15,328,0,665,0,0,0,0,0),
(32663,16,356,0,700,0,0,0,0,0),
(32663,17,386,0,734,0,0,0,0,0),
(32663,18,417,0,768,0,0,0,0,0),
(32663,19,449,0,802,0,0,0,0,0),
(32663,20,484,0,836,0,0,0,0,0),
(32663,21,521,0,872,0,0,0,0,0),
(32663,22,562,0,906,0,0,0,0,0),
(32663,23,605,0,940,0,0,0,0,0),
(32663,24,651,0,975,0,0,0,0,0),
(32663,25,699,0,1008,0,0,0,0,0),
(32663,26,750,0,1043,0,0,0,0,0),
(32663,27,800,0,1078,0,0,0,0,0),
(32663,28,853,0,1111,0,0,0,0,0),
(32663,29,905,0,1145,0,0,0,0,0),
(32663,30,955,0,1179,0,0,0,0,0),
(32663,31,1006,0,1213,0,0,0,0,0),
(32663,32,1057,0,1249,0,0,0,0,0),
(32663,33,1110,0,1281,0,0,0,0,0),
(32663,34,1163,0,1317,0,0,0,0,0),
(32663,35,1220,0,1349,0,0,0,0,0),
(32663,36,1277,0,1456,0,0,0,0,0),
(32663,37,1336,0,1568,0,0,0,0,0),
(32663,38,1395,0,1684,0,0,0,0,0),
(32663,39,1459,0,1808,0,0,0,0,0),
(32663,40,1524,0,1938,0,0,0,0,0),
(32663,41,1585,0,2074,0,0,0,0,0),
(32663,42,1651,0,2218,0,0,0,0,0),
(32663,43,1716,0,2369,0,0,0,0,0),
(32663,44,1782,0,2528,0,0,0,0,0),
(32663,45,1848,0,2695,0,0,0,0,0),
(32663,46,1919,0,2750,0,0,0,0,0),
(32663,47,1990,0,2804,0,0,0,0,0),
(32663,48,2062,0,2857,0,0,0,0,0),
(32663,49,2138,0,2912,0,0,0,0,0),
(32663,50,2215,0,2966,0,0,0,0,0),
(32663,51,2292,0,3018,0,0,0,0,0),
(32663,52,2371,0,3074,0,0,0,0,0),
(32663,53,2453,0,3128,0,0,0,0,0),
(32663,54,2533,0,3180,0,0,0,0,0),
(32663,55,2614,0,3234,0,0,0,0,0),
(32663,56,2699,0,3289,0,0,0,0,0),
(32663,57,2784,0,3342,0,0,0,0,0),
(32663,58,3989,0,3396,0,0,0,0,0),
(32663,59,4142,0,3449,0,0,0,0,0),
(32663,60,4979,0,3750,0,0,0,0,0),
(32663,61,5158,0,4047,0,0,0,0,0),
(32663,62,5341,0,4344,0,0,0,0,0),
(32663,63,5527,0,4641,0,0,0,0,0),
(32663,64,5715,0,4937,0,0,0,0,0),
(32663,65,5914,0,5234,0,0,0,0,0),
(32663,66,6116,0,5531,0,0,0,0,0),
(32663,67,6326,0,5829,0,0,0,0,0),
(32663,68,6542,0,6126,0,0,0,0,0),
(32663,69,6761,0,6423,0,0,0,0,0),
(32663,70,6986,0,6719,0,0,0,0,0),
(32663,71,7181,0,7018,0,0,0,0,0),
(32663,72,7380,0,7318,0,0,0,0,0),
(32663,73,7588,0,7618,0,0,0,0,0),
(32663,74,7804,0,7918,0,0,0,0,0),
(32663,75,8025,0,8219,0,0,0,0,0),
(32663,76,8247,0,8520,226,84,339,62,102), -- sniff
(32663,77,8480,0,8822,249,91,344,62,104), -- sniff
(32663,78,8715,0,9124,0,0,0,0,0),
(32663,79,8960,0,9426,0,0,0,0,0),
(32663,80,9215,0,9729,0,0,0,0,0),
(32663,81,9474,0,10033,0,0,0,0,0),
(32663,82,9741,0,10356,0,0,0,0,0),
(32663,83,10019,0,10673,0,0,0,0,0),
(32663,84,10300,0,10990,0,0,0,0,0),
(32663,85,10595,0,11307,0,0,0,0,0);
-- Pet Bar
DELETE FROM creature_template_spells WHERE entry = 32663;
INSERT INTO creature_template_spells(entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(32663,0,0,0,47031,0,0,0,0);

-- summon pet script
DELETE FROM dbscripts_on_gossip WHERE id IN (930101);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(930101,0,15,61545,0,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Budd'),
(930101,900,48,768,1,0,32663,50,7|0x20,0,0,0,0,0,0,0,0,'Budd - set correct UnitFlags'),
(930101,1000,15,47014,0,0,32663,50,32,0,0,0,0,0,0,0,0,'Budd - Cast Budd\s Attention Span'),
(930101,1100,15,47025,0,0,32663,50,7|0x20,0,0,0,0,0,0,0,0,'Budd - Cast Attention Span'),
(930101,1300,15,47019,0,0,32663,50,7|0x20,0,0,0,0,0,0,0,0,'Budd - Cast Budd Pet Periodic Trigger'),
(930101,1500,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'despawn static Budd'),
(930101,2000,0,0,0,0,32663,50,7|0x20,2000020796,0,0,0,0,0,0,0,'Budd - say');
DELETE FROM spell_script_target WHERE entry IN (47035);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(47035,1,26425,6),
(47035,1,26447,6);
-- Part of Drakkari Warrior/Shaman EAI
DELETE FROM dbscripts_on_relay WHERE id = 20535;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- (20535,0,31,32663,0,0,0,0,xxx,0,0,0,0,0,0,0,0,'Part of Drakkari Warrior/Shaman EAI: search for 32663 (PET)'), -- not implemented (few console errors will be produced)
(20535,100,15,47035,0,0,32663,5,7|0x20,0,0,0,0,0,0,0,0,'Part of Drakkari Warrior/Shaman EAI: buddy Cast 47035');
DELETE FROM dbscripts_on_spell WHERE id IN (47027);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(47027,0,0,20222,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'32663 - Random OOC Texts');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020796 AND 2000020802;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020796,'Ey, mon! Take me to mah troll bruddas!',0,0,0,0,NULL),
(2000020797,'Time to play some troll tag, mon!',0,0,0,0,NULL),
(2000020798,'My troll bruddas be in for some real fun today, mon!',0,0,0,0,NULL),
(2000020799,'Hee hee hee! Dis gunna be some fun, mon!',0,0,0,0,NULL),
(2000020800,'You sure we be goin\' da right way, mon?',0,0,0,0,NULL),
(2000020801,'<sniff, sniff> I can smell \'em, mon.',0,0,0,0,NULL),
(2000020802,'Nuttin\' says luvin\' like a little tap on da noggin.',0,0,0,0,NULL);
DELETE FROM dbscript_random_templates WHERE id = 20222;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20222,0,2000020797,0,'32663 - Random OOC Texts'),
(20222,0,2000020798,0,'32663 - Random OOC Texts'),
(20222,0,2000020799,0,'32663 - Random OOC Texts'),
(20222,0,2000020800,0,'32663 - Random OOC Texts'),
(20222,0,2000020801,0,'32663 - Random OOC Texts'),
(20222,0,2000020802,0,'32663 - Random OOC Texts');
