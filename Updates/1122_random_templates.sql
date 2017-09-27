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

-- Time Keeper (17918) - The Black Morass
UPDATE dbscript_random_templates SET id = 10011, comments = '17918 - Random Despawn Texts' WHERE id = 7;
UPDATE dbscript_random_templates SET id = 10012, comments = '17918 - Random Spawn Texts' WHERE id = 8;

-- Papa Wheeler (19645) - Netherstorm
UPDATE dbscript_random_templates SET id = 10013, comments = '19645 - Random OOC Texts' WHERE id = 9;

-- Shadowy Necromancer (17899) - Hyjal Summit
UPDATE dbscript_random_templates SET id = 10014, comments = '17899 - Random Death Texts' WHERE id = 10;

-- Samia Inkling (Entry: 21983) - Blade's Edge Mountains
UPDATE dbscript_random_templates SET id = 10015, comments = '21983 - Random Text' WHERE id = 11;
UPDATE dbscripts_on_creature_movement SET datalong = 10015 WHERE id = 2213002 AND command = 0;

-- Baron Sablemane (22103) - Blade's Edge Mountains
UPDATE dbscript_random_templates SET id = 10016, comments = '22103 - Random Text' WHERE id = 12;
UPDATE dbscripts_on_creature_movement SET datalong = 10016 WHERE id = 2213001 AND command = 0;

-- Natasha (22465) - Blade's Edge Mountains
UPDATE dbscript_random_templates SET id = 10017, comments = '22465 - Random OOC Texts' WHERE id = 13;

-- Boulderfist Crusher(17134)/Boulderfist Mystic(17135)/Boulderfist Warrior(17136)/Boulderfist Mage(17137) - Nagrand
UPDATE dbscript_random_templates SET id = 10018, comments = '17134/17135/17136/17137 - Random OOC Texts' WHERE id = 14;

-- Corki (18369) - Nagrand
UPDATE dbscript_random_templates SET id = 10019, comments = '18369 - Random OOC Texts' WHERE id = 15;

-- Grulloc (20216) - Blade's Edge Mountains
UPDATE dbscript_random_templates SET id = 10020, comments = '20216 - Random Yell on SpellHit' WHERE id = 16;

-- Cro Threadstrong (19196) - Shattrath City
UPDATE dbscript_random_templates SET id = 10021, comments = '19196 - Random Text' WHERE id = 17;
UPDATE dbscripts_on_creature_movement SET datalong = 10021 WHERE id = 1919601 AND delay = 0;

-- The Rokk (24393) - Shattrath City
UPDATE dbscript_random_templates SET id = 10022, comments = '24393 - Random OOC Texts' WHERE id = 18;

-- Grisy Spicecrackle (24416) - Shattrath City 
UPDATE dbscript_random_templates SET id = 10023, comments = '24416 - Random Texts' WHERE id = 19;

-- Corki (20812) - Nagrand
UPDATE dbscript_random_templates SET id = 10024, comments = '20812 - Random OOC Texts' WHERE id = 20;

-- Harold Lane (18218) - Nagrand
UPDATE dbscript_random_templates SET id = 10025, comments = '18218 - Random OOC Texts' WHERE id = 21;


-- Field Marshal Rohamus (19316) - Hellfire Peninsula
UPDATE dbscript_random_templates SET id = 10026, comments = '19316 - Random OOC Texts' WHERE id = 22;

-- Vashj'ir Honor Guard (21218) - Coilfang Reservoir: Serpentshrine Cavern
UPDATE dbscript_random_templates SET id = 10027, comments = '21218 - Random OOC Texts' WHERE id = 23;

-- Marshal Isildor (19308) - Hellfire Peninsula
UPDATE dbscript_random_templates SET id = 10028, comments = '19308 - Random OOC Texts' WHERE id = 24;


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
