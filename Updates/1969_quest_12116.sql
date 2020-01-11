-- q.12116 'It Takes Guts....'
-- Drakkari Canopic Jar
UPDATE gameobject_template SET data2 = 0 WHERE entry = 188499;
UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 188499;
DELETE FROM pool_template WHERE entry = 30153;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(30153,10,'Grizzly Hills - Drakkari Canopic Jar');
DELETE FROM pool_gameobject_template WHERE id = 188499;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(188499,30153,0,'Grizzly Hills - Drakkari Canopic Jar');
-- target for spell
DELETE FROM spell_script_target WHERE entry IN (47681);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(47681,1,26811,0),
(47681,1,26812,0);
DELETE FROM dbscripts_on_spell WHERE id IN (47681);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(47681,1,0,0,0,0,0,0,2,2000020129,2000020130,2000020131,2000020132,0,0,0,0,'text'),
(47681,1,26,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'attack start');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020129 AND 2000020132;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020129,'You take my heart, now I take yours!', 0, 0, 0, 0, NULL),
(2000020130,'Why ya wanna mess wit me innards, mon?', 0, 0, 0, 0, NULL),
(2000020131,'Dat me liver you be squeezin, mon!', 0, 0, 0, 0, NULL),
(2000020132,'Come back here with me guts, $r!', 0, 0, 0, 0, NULL);
