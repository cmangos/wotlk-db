-- Datalore Smallsphere
-- Scripts
DELETE FROM dbscript_random_templates WHERE id = 20106;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20106,1,20161,0,'29277 - Random OOC Scripts'),
(20106,1,20162,0,'29277 - Random OOC Scripts'),
(20106,1,20163,0,'29277 - Random OOC Scripts'),
(20106,1,20164,0,'29277 - Random OOC Scripts'),
(20106,1,20165,0,'29277 - Random OOC Scripts'),
(20106,1,20166,0,'29277 - Random OOC Scripts');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20161 AND 20166;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- #20161
(20161,1,0,0,0,0,0,0,0,2000020139,0,0,0,0,0,0,0,''),
(20161,5,0,0,0,0,0,0,0,2000020140,0,0,0,0,0,0,0,''),
(20161,9,0,0,0,0,0,0,0,2000020141,0,0,0,0,0,0,0,''),
(20161,15,0,0,0,0,0,0,0,2000020142,0,0,0,0,0,0,0,''),
(20161,17,0,0,0,0,0,0,0,2000020143,0,0,0,0,0,0,0,''),
-- #20162
(20162,1,0,0,0,0,0,0,0,2000020144,0,0,0,0,0,0,0,''),
(20162,3,31,26886,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26886'),
(20162,4,0,0,0,0,26886,55,0,2000005764,0,0,0,0,0,0,0,''),
(20162,5,31,26884,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26884'),
(20162,6,0,0,0,0,26886,55,0,2000005764,0,0,0,0,0,0,0,''),
-- #20163
(20163,1,0,0,0,0,0,0,0,2000020145,0,0,0,0,0,0,0,''),
(20163,5,0,0,0,0,0,0,0,2000020146,0,0,0,0,0,0,0,''),
(20163,9,0,0,0,0,0,0,0,2000020147,0,0,0,0,0,0,0,''),
(20163,10,0,0,0,0,0,0,0,2000005764,0,0,0,0,0,0,0,''),
-- #20164
(20164,1,0,0,0,0,0,0,0,2000020148,0,0,0,0,0,0,0,''),
(20164,5,0,0,0,0,0,0,0,2000020149,0,0,0,0,0,0,0,''),
(20164,9,0,0,0,0,0,0,0,2000020150,0,0,0,0,0,0,0,''),
(20164,10,0,0,0,0,0,0,0,2000005764,0,0,0,0,0,0,0,''),
-- #20165
(20165,1,0,0,0,0,0,0,0,2000020151,0,0,0,0,0,0,0,''),
(20165,2,0,0,0,0,0,0,0,2000005764,0,0,0,0,0,0,0,''),
(20165,6,0,0,0,0,0,0,0,2000020152,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020139 AND 2000020152;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000020139,'Oh boy Jones and I have had some adventures...',0,0,0,0,NULL),
(2000020140,'%s takes a deep breath and puffs out his chest.',0,2,0,0,NULL),
(2000020141,'Where Jones goes, I go.  Where he steps, I step.  But this time he told me to stay back.',0,0,0,0,NULL),
(2000020142,'I hope Jones is okay.',0,0,0,0,NULL),
(2000020143,'%s looks around nervously.',0,2,0,0,NULL),
(2000020144,'If Jones listened to me, he\'d live longer.',0,0,0,0,NULL),
(2000020145,'I hope Jones makes it back okay.',0,0,0,0,NULL),
(2000020146,'%s looks off into the distance, annoyed.',0,2,0,0,NULL),
(2000020147,'Jones still owes me money from our last card game.  Can you believe he tried to cheat me!  I may be little, but he cheats very big.',0,0,0,0,NULL),
(2000020148,'Oh boy... I can\'t believe I just remembered that...',0,0,0,0,NULL),
(2000020149,'%s can hardly control his laughter.  His story is constantly interrupted by his own laughter.',0,2,0,0,NULL),
(2000020150,'...so he dropped the potatoes, even though I told him to hold onto them.',0,0,0,0,NULL),
(2000020151,'That Jones...',0,0,0,0,NULL),
(2000020152,'He\'s not nuts, he\'s crazy!  Always going off looking for fortune and glory...',0,0,0,0,NULL);
