-- q.12282 'Imprints on the Past'
DELETE FROM dbscripts_on_quest_end WHERE id = 12282;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12282,1000,0,0,0,0,0,0,0,2000020569,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 12282 WHERE entry = 12282;
DELETE FROM dbscript_string WHERE entry = 2000020569;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020569,'With the orb returned, the search for answers begins!',0,0,7,5,NULL);
-- Scrying Orb 189292
UPDATE gameobject SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE id = 189292;

-- See Wintergarde Invisibility Type C
DELETE FROM spell_area WHERE spell = 48797;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(48797,4177,0,0,0,20168,0,0,2,1);
DELETE FROM conditions WHERE condition_entry = 20168;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20168,8,12282,0,0,0,0);