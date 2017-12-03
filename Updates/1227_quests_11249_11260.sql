-- Quests 'Stop the Ascension!'
-- q.11260 - horde ver
-- q.11249 - Alliance ver
DELETE FROM dbscripts_on_event WHERE id = 15672;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15672,0,31,24119,255,0,0,0,8,0,0,0,0,0,0,0,0,'search for buddy - terminate if alive'),
(15672,0,31,23671,255,0,0,0,8,0,0,0,0,0,0,0,0,'search for buddy - terminate if alive'),
(15672,1,10,23671,300000,0,0,0,8,0,0,0,0,1668.82,-4117.59,273.409,0.244346,'summon Halfdan the Ice-Hearted'),
(15672,1,10,24118,300000,0,0,0,8,0,0,0,0,1676.912,-4108.803,278.9944,0.332923,'summon Val\'kyr Observer'),
(15672,1,10,24118,300000,0,0,0,8,0,0,0,0,1679.509,-4122.266,279.408,0.500723,'summon Val\'kyr Observer'),
(15672,2,0,0,0,0,23671,100,0x03,2000001451,0,0,0,0,0,0,0,''),
(15672,6,0,0,0,0,23671,100,0x03,2000001452,0,0,0,0,0,0,0,''),
(15672,6,5,59,256,0,23671,100,7,0,0,0,0,0,0,0,0,''),
(15672,7,26,0,0,0,23671,100,0x03,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001451 AND 2000001454;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001451,'You think I do not know what you are trying to do? You think I haven\'t been watching you?',0,1,0,1,''),
(2000001452,'You will not stop my ascension, tiny $r. Time to die!',0,1,0,0,''),
(2000001453,'How unfortunate, Halfdan.',0,1,0,0,''),
(2000001454,'We find you unworthy of ascension, Halfdan. Let your soul know oblivion!',0,1,0,0,'');

-- Halfdan the Ice-Hearted
DELETE FROM dbscripts_on_creature_death WHERE id = 23671; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23671,1,15,43091,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(23671,2,31,24118,255,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(23671,2,0,0,0,0,24118,200,7,2000001453,0,0,0,0,0,0,0,''),
(23671,8,31,24118,255,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(23671,9,0,0,0,0,24118,200,7,2000001454,0,0,0,0,0,0,0,'');

-- Val'kyr Observer
UPDATE creature_template SET InhabitType = 4 WHERE entry = 24118;
DELETE FROM creature_template_addon WHERE entry = 24118;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(24118,0,50331648,0,0,0,0,NULL);
-- SpellTaget corrected
DELETE FROM spell_script_target WHERE entry = 43092;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(43092,1,24118,0);

-- Halfdan's Soul
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096, InhabitType = 4, MovementType = 2 WHERE entry = 24119;
DELETE FROM creature_template_addon WHERE entry = 24119;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(24119,0,0,0,0,0,0,'37119 36545 36550');
DELETE FROM creature_movement_template WHERE entry = 24119;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(24119,1,1702.776,-4105.694,285.431,10000,2411901,100);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2411901;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2411901,0,15,43092,0,0,24118,255,1,0,0,0,0,0,0,0,0,''),
(2411901,7,15,35426,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2411901,8,18,0,0,0,24118,255,7,0,0,0,0,0,0,0,0,'desp Val\'kyr Observer #1'),
(2411901,9,18,0,0,0,24118,255,7,0,0,0,0,0,0,0,0,'desp Val\'kyr Observer #2'),
(2411901,10,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
