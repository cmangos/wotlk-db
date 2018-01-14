-- q.11899 'Souls of the Decursed'

-- quest Script
DELETE FROM dbscripts_on_quest_end WHERE id = 11899;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11899,0,31,26097,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if alive'),
(11899,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(11899,1,0,0,0,0,0,0,0,2000001524,0,0,0,0,0,0,0,''),
(11899,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0.338801,''),
(11899,3,15,28892,0,0,0,0,4,0,0,0,0,0,0,0,0,''),
(11899,9,14,28892,0,0,0,0,4,0,0,0,0,0,0,0,0,''),
(11899,10,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0.33944,''),
(11899,10,10,26097,38000,0,0,0,8,0,0,0,0,3483.047,4114.145,18.48475,3.403392,'summon - Fizzcrank Gnome Ghost'),
(11899,10,10,26097,38000,0,0,0,8,0,0,0,0,3486.638,4116.401,18.48475,3.403392,'summon - Fizzcrank Gnome Ghost'),
(11899,10,10,26097,38000,0,0,0,8,0,0,0,0,3483.65,4112.257,18.48475,2.9147,'summon - Fizzcrank Gnome Ghost'),
(11899,10,10,26097,38000,0,0,0,8,0,0,0,0,3481.733,4118.205,18.48475,3.926991,'summon - Fizzcrank Gnome Ghost'),
(11899,10,10,26097,38000,0,0,0,8,0,0,0,0,3485.337,4117.493,18.48475,3.543018,'summon - Fizzcrank Gnome Ghost'),
(11899,10,10,26097,38000,0,0,0,8,0,0,0,0,3482.166,4116.395,18.48475,3.612832,'summon - Fizzcrank Gnome Ghost'),
(11899,11,10,26097,38000,0,0,0,8,0,0,0,0,3485.657,4113.342,18.48475,3.124139,'summon - Fizzcrank Gnome Ghost'),
(11899,11,10,26097,38000,0,0,0,8,0,0,0,0,3483.949,4118.282,18.48475,3.682645,'summon - Fizzcrank Gnome Ghost'),
(11899,11,10,26097,38000,0,0,0,8,0,0,0,0,3484.028,4115.051,18.48475,3.316126,'summon - Fizzcrank Gnome Ghost'),
(11899,11,10,26097,38000,0,0,0,8,0,0,0,0,3484.057,4116.235,18.48474,3.560472,'summon - Fizzcrank Gnome Ghost'),
(11899,12,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0.338801,''),
(11899,12,1,378,0,0,26097,20,7,0,0,0,0,0,0,0,0,''),
(11899,12,0,0,0,0,26097,20,7,2000001525,0,0,0,0,0,0,0,''),
(11899,21,0,0,0,0,26097,20,7,2000001526,0,0,0,0,0,0,0,''),
(11899,29,0,0,0,0,26097,20,7,2000001527,0,0,0,0,0,0,0,''),
(11899,38,0,0,0,0,26097,20,7,2000001528,0,0,0,0,0,0,0,''),
(11899,45,1,0,0,0,26097,20,7,0,0,0,0,0,0,0,0,''),
(11899,48,3,0,0,0,0,0,0,0,0,0,0,0,0,0,3.490659,''),
(11899,48,0,0,0,0,0,0,0,2000001529,0,0,0,0,0,0,0,''),
(11899,49,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 11899, ReqSourceCount1 = 1 WHERE entry = 11899;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001524 AND 2000001529;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001524,'Now, $n, let us release their souls and hear what they have to say.',0,0,0,1,NULL),
(2000001525,'Thank you for saving us. We accidentally uncovered the pieces of Gearmaster Mechazod and reassembled him.',0,0,0,0,NULL),
(2000001526,'In return, he \'de-cursed\' us, saying that we were being \'fixed\' by returning us to the state of being mechanical constructs.',0,0,0,0,NULL),
(2000001527,'He claims that all creations of the Titans fall prey to what he calls, \'The Curse of Flesh\'. He says that the original gnomes were once mechagnomes.',0,0,0,0,NULL),
(2000001528,'He\'s quite insane! Someone must put a stop to his madness before it\'s too late for everyone!',0,0,0,0,NULL),
(2000001529,'This is dire news indeed!',0,0,0,1,NULL);

-- Gnome Soul
UPDATE creature_template SET UnitFlags = 33555200 WHERE entry = 26096;

-- Fizzcrank Mechagnome - RELAY_SCRIPT
-- *NOTE* Summon should be done by 46486 - but doesn't work
DELETE FROM dbscripts_on_relay WHERE id IN (20021);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20021,0,10,26096,60000,0,0,0,0,0,0,0,0,0,0,0,0,'summon Gnome Soul');

-- Fizzcrank Gnome Ghost
UPDATE creature_template SET UnitFlags = 33587968 WHERE entry = 26097;
