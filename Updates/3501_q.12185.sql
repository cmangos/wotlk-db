-- q.12185 'Put on Your Best Face for Loken'

-- Loken's Pedestal 188596
DELETE FROM dbscripts_on_go_template_use WHERE id = 188596;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(188596,0,31,27212,20,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 27212 - terminate if alive'),
(188596,10,10,27212,31000,0,0,0,0x08,0,0,0,0,3404.628,-5394.321,269.9528,1.43117,'summon: Image of Loken'),
(188596,1000,0,0,0,0,27212,20,7,2000020899,0,0,0,0,0,0,0,'Say 1'),
(188596,5000,0,0,0,0,27212,20,7,2000020900,0,0,0,0,0,0,0,'Say 2'),
(188596,11000,0,0,0,0,27212,20,7,2000020901,0,0,0,0,0,0,0,'Say 3'),
(188596,18000,0,0,0,0,27212,20,7,2000020902,0,0,0,0,0,0,0,'Say 4'),
(188596,24000,0,0,0,0,27212,20,7,2000020903,0,0,0,0,0,0,0,'Say 5'),
(188596,24100,8,27212,0,0,0,0,0,0,0,0,0,0,0,0,0,'kill credit'),
(188596,29000,21,0,0,0,27212,20,7,0,0,0,0,0,0,0,0,'buddy unactive'),
(188596,30000,18,0,0,0,27212,20,7,0,0,0,0,0,0,0,0,'buddy desp');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020899 AND 2000020903;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020899,'You\'re late, overseer.',0,0,0,51,NULL),
(2000020900,'Destiny will not wait. Your craftsmen must increase their production of the war golems before the stone giant leader and his army reach Ulduar.',0,0,0,51,NULL),
(2000020901,'Tell your rune-smiths to continue converting what stone giants you can. Those that will not submit must be destroyed.',0,0,0,51,NULL),
(2000020902,'If the stone giants interfere with our work at Ulduar, I will hold you and your thane responsible. Mortals must not be allowed to come to the aid of the giants.',0,0,0,51,NULL),
(2000020903,'Return to your duties, overseer. Be certain to impress upon your workers the urgency of their tasks.',0,0,0,51,NULL);

-- Image of Loken 27212
UPDATE creature_template SET Faction = 14, UnitFlags = 33555200 WHERE entry = 27212;
