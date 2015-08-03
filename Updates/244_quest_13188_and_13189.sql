-- q.13188 'Where kings walk'  -- ALLIANCE
DELETE FROM dbscripts_on_quest_end WHERE id = 13188;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13188,1,0,0,0,0,0,0,2000000563,0,0,0,0,0,0,0,''),
(13188,5,0,0,0,0,0,0,2000000564,0,0,0,0,0,0,0,''),
(13188,14,0,0,0,0,0,0,2000000565,0,0,0,0,0,0,0,''),
(13188,20,0,0,0,0,0,0,2000000566,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000563 AND 2000000566;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000563, 'People of Stormwind! Citizens of the Alliance! Your king speaks!', 0, 1, 0, 22, NULL),
(2000000564, 'Today marks the first of many defeats for the Scourge! Death knights, once in service of the Lich King, have broken free of his grasp and formed a new alliance against his tyranny!', 0, 1, 0, 22, NULL),
(2000000565, 'You will welcome these former heroes of the Alliance and treat them with the respect that you would give to any ally of Stormwind!', 0, 1, 0, 22, NULL),
(2000000566, 'Glory to the Alliance!', 0, 1, 0, 4, NULL);
UPDATE quest_template SET CompleteScript = 13188 WHERE entry = 13188;

-- q.13189 'Warchief's Blessing'  -- HORDE
DELETE FROM dbscripts_on_quest_end WHERE id = 13189;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13189,1,0,0,0,0,0,0,2000000567,0,0,0,0,0,0,0,''),
(13189,5,0,0,0,0,0,0,2000000568,0,0,0,0,0,0,0,''),
(13189,14,0,0,0,0,0,0,2000000569,0,0,0,0,0,0,0,''),
(13189,20,0,0,0,0,0,0,2000000570,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000567 AND 2000000570;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000567, 'Horde, hear the call of your Warchief!', 0, 1, 0, 22, NULL),
(2000000568, 'Today marks the first of many defeats for the Scourge! Death knights, once in service of the Lich King, have broken free of his grasp and formed a new alliance against his tyranny!', 0, 1, 0, 22, NULL),
(2000000569, 'You will welcome these former heroes of the Horde and treat them with the respect that you would give any ally of Orgrimmar!', 0, 1, 0, 22, NULL),
(2000000570, 'For the Horde!', 0, 1, 0, 4, NULL);
UPDATE quest_template SET CompleteScript = 13189 WHERE entry = 13189;
