-- q.12847 'Second Chances'

-- Archbishop Landgren's corpse and Lord-Commander Arete not be present
-- object spawned by spell
DELETE FROM gameobject WHERE guid = 99734;

-- Missing template - added
DELETE FROM gameobject_template WHERE entry = 300226; -- temp removed
DELETE FROM gameobject_template WHERE entry = 191578;
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(191578,8,0,'Archbishop Landgren\'s corpse and Lord-Commander Arete not be present','','','',0,0,1,0,0,0,0,0,0,1566,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Landgren's Soul
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, UnitFlags = 256, DynamicFlags = 32, InhabitType = 4 WHERE entry = 29572;
DELETE FROM creature_template_addon WHERE entry = 29572;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(29572,0,0,0,0,383,0,'36545 36550');

-- Lord-Commander Arete
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, UnitFlags = 33280, UnitClass = 2, NpcFlags = 0, Expansion = 2, EquipmentTemplateId = 992 WHERE Entry = 29560;
DELETE FROM creature_template_addon WHERE entry = 29560;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(29560,0,0,0,0,0,0,NULL);
-- Arete should spawn inside portal
DELETE FROM dbscripts_on_spell WHERE id = 26560;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(26560,1,40,0,0,191578,100,1,0,0,0,0,0,0,0,0,'desp gobject'), -- only one script should be able to activate
(26560,3,13,0,0,191579,30,1,0,0,0,0,0,0,0,0,''),
(26560,4,21,1,0,29560,30,7,0,0,0,0,0,0,0,0,'Arete - active'),
(26560,4,36,0,0,29560,30,0,0,0,0,0,0,0,0,0,''),
(26560,9,0,0,0,29560,30,7,2000001697,0,0,0,0,0,0,0,''),
(26560,10,40,0,0,191579,100,1,0,0,0,0,0,0,0,0,'desp gobject'),
(26560,12,15,22966,0,29560,30,0,0,0,0,0,0,0,0,0,''),
(26560,17,0,0,0,29560,30,7,2000001698,0,0,0,0,0,0,0,''),
(26560,21,0,0,0,29572,30,7,2000001699,0,0,0,0,0,0,0,''),
(26560,25,0,0,0,29560,30,7,2000001700,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001697 AND 2000001705;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001697,'Come, Landgren, cough up your soul so that I can ask you a very important question.',0,0,0,0,NULL),
(2000001698,'YOU WILL TELL ME WHERE WESTWIND IS OR I WILL DESTROY YOUR SOUL!',0,1,0,25,NULL),
(2000001699,'No.',0,0,0,0,NULL),
(2000001700,'Then you leave me no choice. I won\'t say that I won\'t enjoy this.',0,0,0,1,NULL),
(2000001701,'STOP! It isn\'t worth it. I\'ll tell you where he is.',0,0,0,0,NULL),
(2000001702,'Very well. Tell me!',0,0,0,0,NULL),
(2000001703,'On the south end of the island is a cave -- a hidden hollow. The grand admiral has holed himself up in there, preparing for the final battle against the Lich King.',0,0,0,0,NULL),
(2000001704,'A hidden hollow? How very interesting. You\'ve served your purpose, Landgren, but I\'m afraid there\'ll be no resurrection for you this time!',0,0,0,6,NULL),
(2000001705,'AAAEEEEIIIiiiiiiiiiiiiiiiiiiiiiiiiiiii........................................',0,1,0,0,NULL);

-- Script for Landgren's Soul
DELETE FROM dbscripts_on_relay WHERE id = 20046;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20046,16,15,54723,0,0,29560,100,3,0,0,0,0,0,0,0,0,''),
(20046,25,0,0,0,0,0,0,0,2000001701,0,0,0,0,0,0,0,''),
(20046,30,14,54723,0,0,29560,50,1,0,0,0,0,0,0,0,0,''),
(20046,31,0,0,0,0,29560,50,7,2000001702,0,0,0,0,0,0,0,''),
(20046,35,0,0,0,0,0,0,0,2000001703,0,0,0,0,0,0,0,''),
(20046,42,0,0,0,0,29560,50,7,2000001704,0,0,0,0,0,0,0,''),
(20046,45,1,25,0,0,29560,50,3,0,0,0,0,0,0,0,0,''),
(20046,47,15,54723,0,0,29560,100,3,0,0,0,0,0,0,0,0,''),
(20046,50,0,0,0,0,0,0,0,2000001705,0,0,0,0,0,0,0,''),
(20046,55,15,35426,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20046,56,14,54723,0,0,29560,50,1,0,0,0,0,0,0,0,0,''),
(20046,58,29,2,1,0,29560,50,7,0,0,0,0,0,0,0,0,'NpcFlags added'),
(20046,119,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(20046,119,21,0,0,0,29560,50,7,0,0,0,0,0,0,0,0,'Arete - unactive');
DELETE FROM spell_script_target WHERE entry = 22966;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(22966,2,29542);
