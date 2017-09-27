-- dbscript_random_templates ids moved to correct expansions

-- 0 - 9999    - Vanilla
-- 10k - 19999 - TBC
-- 20k - x     - WoTLK

-- ----------------------
-- WOTLK
-- ----------------------
-- Civilian Recruit (25317) - Borean Tundra
UPDATE dbscript_random_templates SET id = 20000, comments = '25317 - Random Texts' WHERE id = 1;
-- Script Updated
UPDATE dbscripts_on_creature_movement SET datalong = 20000 WHERE id = 2531702 AND delay = 3;

-- Recruitment Officer Carven (25222) & Civilian Recruit (25220) - Borean Tundra
UPDATE dbscript_random_templates SET id = 20001, comments = '25222 - Random Texts 1' WHERE id = 2;
UPDATE dbscript_random_templates SET id = 20002, comments = '25220 - Random Texts' WHERE id = 3;
UPDATE dbscript_random_templates SET id = 20003, comments = '25222 - Random Texts 2' WHERE id = 4;
-- Script Updated
UPDATE dbscripts_on_creature_movement SET datalong = 20001 WHERE id = 2522001 AND delay = 7;
UPDATE dbscripts_on_creature_movement SET datalong = 20002 WHERE id = 2522001 AND delay = 12;
UPDATE dbscripts_on_creature_movement SET datalong = 20003 WHERE id = 2522001 AND delay = 16;


-- ----------------------
-- TBC
-- ----------------------
-- Coilskar Assassin (21044) - Shadowmoon Valley
UPDATE dbscript_random_templates SET id = 10010, comments = '21044 - Random Aggro Texts' WHERE id = 5;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10010 WHERE id = 2104401;

-- Time Keeper (17918) - The Black Morass
UPDATE dbscript_random_templates SET id = 10011, comments = '17918 - Random Despawn Texts' WHERE id = 7;
UPDATE dbscript_random_templates SET id = 10012, comments = '17918 - Random Spawn Texts' WHERE id = 8;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action2_param3 = 10011 WHERE id = 1791803;
UPDATE creature_ai_scripts SET action1_param3 = 10012 WHERE id = 1791802;

-- Papa Wheeler (19645) - Netherstorm
UPDATE dbscript_random_templates SET id = 10013, comments = '19645 - Random OOC Texts' WHERE id = 9;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10013 WHERE id = 1964501;

-- Shadowy Necromancer (17899) - Hyjal Summit
UPDATE dbscript_random_templates SET id = 10014, comments = '17899 - Random Death Texts' WHERE id = 10;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10014 WHERE id = 1789907;

-- Samia Inkling (Entry: 21983) - Blade's Edge Mountains
UPDATE dbscript_random_templates SET id = 10015, comments = '21983 - Random Text' WHERE id = 11;
-- Script Updated
UPDATE dbscripts_on_creature_movement SET datalong = 10015 WHERE id = 2213002 AND buddy_entry = 21983;

-- Baron Sablemane (22103) - Blade's Edge Mountains
UPDATE dbscript_random_templates SET id = 10016, comments = '22103 - Random Text' WHERE id = 12;
-- Script Updated
UPDATE dbscripts_on_creature_movement SET datalong = 10016 WHERE id = 2213001 AND buddy_entry = 22103;

-- Natasha (22465) - Blade's Edge Mountains
UPDATE dbscript_random_templates SET id = 10017, comments = '22465 - Random OOC Texts' WHERE id = 13;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10017 WHERE id = 2246501;

-- Boulderfist Crusher(17134)/Boulderfist Mystic(17135)/Boulderfist Warrior(17136)/Boulderfist Mage(17137) - Nagrand
UPDATE dbscript_random_templates SET id = 10018, comments = '17134/17135/17136/17137 - Random OOC Texts' WHERE id = 14;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10018 WHERE id = 1713402;
UPDATE creature_ai_scripts SET action1_param3 = 10018 WHERE id = 1713502;
UPDATE creature_ai_scripts SET action1_param3 = 10018 WHERE id = 1713602;
UPDATE creature_ai_scripts SET action1_param3 = 10018 WHERE id = 1713702;
-- Corki (18369) - Nagrand
UPDATE dbscript_random_templates SET id = 10019, comments = '18369 - Random OOC Texts' WHERE id = 15;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10019 WHERE id = 1836902;

-- Grulloc (20216) - Blade's Edge Mountains
UPDATE dbscript_random_templates SET id = 10020, comments = '20216 - Random Yell on SpellHit' WHERE id = 16;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10020 WHERE id = 2021605;

-- Cro Threadstrong (19196) - Shattrath City
UPDATE dbscript_random_templates SET id = 10021, comments = '19196 - Random Text' WHERE id = 17;
-- Script Updated
UPDATE dbscripts_on_creature_movement SET datalong = 10021 WHERE id = 1919601 AND delay = 0;

-- The Rokk (24393) - Shattrath City
UPDATE dbscript_random_templates SET id = 10022, comments = '24393 - Random OOC Texts' WHERE id = 18;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10022 WHERE id = 2439301;

-- Grisy Spicecrackle (24416) - Shattrath City 
UPDATE dbscript_random_templates SET id = 10023, comments = '24416 - Random Texts' WHERE id = 19;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10023 WHERE id = 2441601;

-- Corki (20812) - Nagrand
UPDATE dbscript_random_templates SET id = 10024, comments = '20812 - Random OOC Texts' WHERE id = 20;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10024 WHERE id = 2081202;

-- Harold Lane (18218) - Nagrand
UPDATE dbscript_random_templates SET id = 10025, comments = '18218 - Random OOC Texts' WHERE id = 21;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10025 WHERE id = 1821801;

-- Field Marshal Rohamus (19316) - Hellfire Peninsula
UPDATE dbscript_random_templates SET id = 10026, comments = '19316 - Random OOC Texts' WHERE id = 22;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10026 WHERE id = 1931602;

-- Vashj'ir Honor Guard (21218) - Coilfang Reservoir: Serpentshrine Cavern
UPDATE dbscript_random_templates SET id = 10027, comments = '21218 - Random OOC Texts' WHERE id = 23;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10027 WHERE id = 2121807;

-- Marshal Isildor (19308) - Hellfire Peninsula
UPDATE dbscript_random_templates SET id = 10028, comments = '19308 - Random OOC Texts' WHERE id = 24;
-- [ACID] Script updated
UPDATE creature_ai_scripts SET action1_param3 = 10028 WHERE id = 1930802;


-- ----------------------
-- Classic
-- ----------------------

-- A tormented voice (8887) - The Burning Steppes
UPDATE dbscript_random_templates SET id = 1, comments = '8887 - Random Whisper' WHERE id = 25;
UPDATE dbscript_random_templates SET id = 2, comments = '8887 - Random Texts' WHERE id = 26;
-- Script Updated
UPDATE dbscripts_on_event SET datalong = 1 WHERE id = 3361 AND delay = 1;
UPDATE dbscripts_on_event SET datalong = 2 WHERE id = 3361 AND delay = 3;

-- dbscript_random_templates id = 6 is added in all 3 DB's
UPDATE dbscript_random_templates SET comments = '8506 - Random Spawn Texts' WHERE id = 6;
