-- Learn to Ride in ....
-- fix for all related quests (Added in patch 3.3.0) 

-- q.14086 'Learn to Ride in Orgrimmar'
DELETE FROM mail_loot_template WHERE entry = 231;
INSERT INTO mail_loot_template VALUES (231, 46880, 100, 0, 1, 1, 0);
-- q.14081 'Learn to Ride in the Eversong Woods'
DELETE FROM mail_loot_template WHERE entry = 232;
INSERT INTO mail_loot_template VALUES (232, 46882, 100, 0, 1, 1, 0);
-- q.14085 'Learn to Ride in Darnassus'
DELETE FROM mail_loot_template WHERE entry = 225;
INSERT INTO mail_loot_template VALUES (225, 46876, 100, 0, 1, 1, 0);
-- q.14079 'Learn to Ride in Elwynn Forest'
DELETE FROM mail_loot_template WHERE entry = 224;
INSERT INTO mail_loot_template VALUES (224, 46875, 100, 0, 1, 1, 0);
-- q.14082 'Learn to Ride at the Exodar'
DELETE FROM mail_loot_template WHERE entry = 227;
INSERT INTO mail_loot_template VALUES (227, 46879, 100, 0, 1, 1, 0);
-- q.14083 'Learn to Ride in Dun Morogh' -- Dwarf ver.
DELETE FROM mail_loot_template WHERE entry = 226;
INSERT INTO mail_loot_template VALUES (226, 46877, 100, 0, 1, 1, 0);
-- q.14084 'Learn to Ride in Dun Morogh' -- Gnome ver.
DELETE FROM mail_loot_template WHERE entry = 228;
INSERT INTO mail_loot_template VALUES (228, 46878, 100, 0, 1, 1, 0);
-- q.14087 'Learn to Ride in Mulgore'
DELETE FROM mail_loot_template WHERE entry = 229;
INSERT INTO mail_loot_template VALUES (229, 46884, 100, 0, 1, 1, 0);
-- q.14089 'Learn to Ride in Tirisfal Glades'
DELETE FROM mail_loot_template WHERE entry = 233;
INSERT INTO mail_loot_template VALUES (233, 46881, 100, 0, 1, 1, 0);
-- q.14088 'Learn to Ride in Durotar'
DELETE FROM mail_loot_template WHERE entry = 230;
INSERT INTO mail_loot_template VALUES (230, 46883, 100, 0, 1, 1, 0);

-- Fix for Ultham Ironhorn <Riding Trainer>
-- This Closes: https://github.com/unified-db/Database/issues/44
UPDATE gossip_menu_option SET condition_id = 0 WHERE menu_id = 4014;
