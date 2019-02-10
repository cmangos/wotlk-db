-- q.11284 'The Yeti Next Door'

-- Script fixed
DELETE FROM dbscripts_on_event WHERE id = 15739;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15739,4,31,24178,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24178'),
(15739,5,1,53,0,0,24178,100,0,0,0,0,0,0,0,0,0,''),
(15739,5,0,0,0,0,24178,100,7,2000000191,0,0,0,0,0,0,0,''),
(15739,6,2,59,32768,0,24178,100,7,0,0,0,0,0,0,0,0,''),
(15739,7,26,0,0,0,24178,100,3,0,0,0,0,0,0,0,0,'');
UPDATE dbscript_string SET type = 2 WHERE entry = 2000000191;

-- Drop for Frosthorn Ram corrected
DELETE FROM creature_loot_template WHERE entry = 23740 AND groupid = 0;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(23740,43013,  31.4,  0,1,1,0,'Chilled Meat'),
(23740,44764, 18.95,  0,1,1,0,'Wiry Tail Hair'),
(23740,33549,  18.2,  0,1,1,0,'Thick Tail Hair'),
(23740,44765,  14.2,  0,1,1,0,'Dented Hoof'),
(23740,33352,  12.9,  0,1,1,20007,'Tough Ram Meat'),
(23740,33548,   4.1,  0,1,1,0,'Icy Hoof'),
(23740,43622,   0.1,  0,1,1,0,'Froststeel Lockbox'),
(23740,31501,  0.05,  0,1,1,0,'Tome of Conjure Food VIII'),
(23740,22153,  0.05,  0,1,1,0,'Tome of Arcane Brilliance 2'),
(23740,31952,  0.05,  0,1,1,0,'Khorium Lockbox'),
-- quest item
(23740,33351,   -26,  0,1,1,0,'Undamaged Ram Horn');
