-- q.12237 'Flight of the Wintergarde Defender'

-- Wintergarde Gryphon 27258
UPDATE creature_template SET InhabitType = 1, UnitFlags = 33555200 WHERE entry = 27258;
DELETE FROM creature_template_addon WHERE entry = 27258;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27258,0,0,1,0,0,0,'47433 48356');
UPDATE npc_spellclick_spells SET cast_flags = 1 WHERE npc_entry = 27258;
-- Part of Wintergarde Gryphon EAI
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20383 AND 20386;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20383,10,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: Run ON'),
(20383,100,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: follow target'),
(20383,2000,25,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: Run OFF'),
(20383,3000,2,59,768,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: unitflags'),
(20384,10,0,20189,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: force Player to random say'),
(20385,10,14,43671,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: Run ON'),
(20386,10,34,20156,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: area check'),
(20386,1000,0,0,0,0,0,0,0,2000020559,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: warning'),
(20386,20000,34,20156,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: area check'),
(20386,20100,14,48365,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wintergarde Gryphon EAI: Player Drop');
DELETE FROM dbscripts_on_spell WHERE id = 48363;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(48363,10,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(48363,1000,15,43671,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020541 AND 2000020546;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020541,'Come with me if you want to live.',0,0,7,0,NULL),
(2000020542,'Get on!',0,0,7,0,NULL),
(2000020543,'Take my hand, villager!',0,0,7,0,NULL),
(2000020544,'I am here to save you, friend!',0,0,7,0,NULL),
(2000020545,'Get on the back of my gryphon, citizen!',0,0,7,0,NULL),
(2000020546,'Hurry! Climb aboard!',0,0,7,0,NULL);
DELETE FROM dbscript_random_templates WHERE id = 20189;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20189,0,2000020541,0,'q.12237 - Player Random Text 1'),
(20189,0,2000020542,0,'q.12237 - Player Random Text 2'),
(20189,0,2000020543,0,'q.12237 - Player Random Text 3'),
(20189,0,2000020544,0,'q.12237 - Player Random Text 4'),
(20189,0,2000020545,0,'q.12237 - Player Random Text 5'),
(20189,0,2000020546,0,'q.12237 - Player Random Text 6');
DELETE FROM spell_script_target WHERE entry=48363;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(48363, 1, 27315, 0),
(48363, 1, 27336, 0);
DELETE FROM conditions WHERE condition_entry BETWEEN 20153 AND 20156;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20153,4,4177,0,0,0,0),
(20154,4,4178,0,0,0,0),
(20155,4,4188,0,0,0,0),
(20156,-2,20155,20154,20153,0,1);

-- Helpless Wintergarde Villager 27315
-- Helpless Wintergarde Villager 27336
DELETE FROM dbscripts_on_relay WHERE id IN (20387,20388);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20387,10,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(20387,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(20387,2000,0,20190,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20388,10,31,26878,30,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20388,50,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(20388,100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(20388,500,0,20191,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20388,1000,3,0,0,0,0,0,0,0,0,0,0,3656.45,-706.39,215.027,3.03875,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020547 AND 2000020559;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020547,'Thanks for your help, hero!',0,0,7,0,NULL),
(2000020548,'You saved my life! Thanks!',0,0,7,0,NULL),
(2000020549,'Are you sure you know how to fly this thing? Feels a little wobbly.',0,0,7,0,NULL),
(2000020550,'I don\'t mean to sound ungrateful, but could you fly a little closer to the ground? I hate heights!',0,0,7,0,NULL),
(2000020551,'I\'m gettin\' a little woozy... Oooooof...',0,0,7,0,NULL),
(2000020552,'Safe at last! Thank you, stranger!',0,0,7,0,NULL),
(2000020553,'My shop\'s doors will always be open to you, friend.',0,0,7,0,NULL),
(2000020554,'HURRAY!',0,0,7,0,NULL),
(2000020555,'Kindness is not lost with this one, Urik. Thank you, hero!',0,0,7,0,NULL),
(2000020556,'We made it! We actually made it!',0,0,7,0,NULL),
(2000020557,'You are my guardian angel! Like a white knight you flew in from the heavens and lifted me from the pit of damnation!',0,0,7,0,NULL),
(2000020558,'How can I ever repay you for this, friend?',0,0,7,0,NULL),
(2000020559,'Return to Wintergarde or the Carrion Fields or your gryphon will drop you!',0,3,0,0,NULL);
DELETE FROM dbscript_random_templates WHERE id IN (20190,20191);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20190,0,2000020547,0,'Helpless Wintergarde Villager - Random Text 1-1'),
(20190,0,2000020548,0,'Helpless Wintergarde Villager - Random Text 1-2'),
(20190,0,2000020549,0,'Helpless Wintergarde Villager - Random Text 1-3'),
(20190,0,2000020550,0,'Helpless Wintergarde Villager - Random Text 1-4'),
(20190,0,2000020551,0,'Helpless Wintergarde Villager - Random Text 1-5'),
(20191,0,2000020552,0,'Helpless Wintergarde Villager - Random Text 2-1'),
(20191,0,2000020553,0,'Helpless Wintergarde Villager - Random Text 2-2'),
(20191,0,2000020554,0,'Helpless Wintergarde Villager - Random Text 2-3'),
(20191,0,2000020555,0,'Helpless Wintergarde Villager - Random Text 2-4'),
(20191,0,2000020556,0,'Helpless Wintergarde Villager - Random Text 2-5'),
(20191,0,2000020557,0,'Helpless Wintergarde Villager - Random Text 2-6'),
(20191,0,2000020558,0,'Helpless Wintergarde Villager - Random Text 2-7');
