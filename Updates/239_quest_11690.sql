-- q.11690 'Bring 'Em Back Alive'

-- quest has time limit = 10min
UPDATE quest_template SET LimitTime = 600 WHERE entry = 11690;
-- Kodo update
UPDATE creature_template_spells SET spell1 = 45876, spell2 = 45877 WHERE entry = 25596;
UPDATE creature_template_addon SET auras = 45771 WHERE entry = 25596;
-- script targets for spell 45877
DELETE FROM spell_script_target WHERE entry = 45877;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(45877, 1, 25596, 0);
DELETE FROM dbscripts_on_spell WHERE id = 45877;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(45877,1,15,48203,0,0,0,0,0,0,0,0,0,0,0,0,''),
(45877,5,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_spell WHERE id = 48204;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(48204,1,14,45875,0,0,0,0,0,0,0,0,0,0,0,0,''),
(48204,1,0,0,0,0,0,0x04,2000000554,2000000555,2000000556,2000000557,0,0,0,0,''),
(48204,4,0,0,0,25607,138494,0x10,2000000552,2000000553,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000552 AND 2000000557;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000552,'Great job!',0,0,0,71,NULL),
(2000000553,'YES! It worked!',0,0,0,71,NULL),
(2000000554,'One more beast saved from certain death!',0,0,0,0,NULL),
(2000000555,'Here\'s your kodo, Torp!',0,0,0,0,NULL),
(2000000556,'Door-to-door kodo delivery!',0,0,0,0,NULL),
(2000000557,'Delivered as promised, Torp!',0,0,0,0,NULL);
