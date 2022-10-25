-- q.12627 'Breaking Through Jin'Alai'
-- afterscript
DELETE FROM dbscripts_on_quest_end WHERE id IN (12627);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12627,4000,0,0,0,0,0,0,0,28431,0,0,0,0,0,0,0,'whisper to Player'),
(12627,4001,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote');
UPDATE quest_template SET CompleteScript = 12627 WHERE entry IN (12627);
UPDATE `broadcast_text` SET `ChatTypeID`=4 WHERE `Id` IN (28431);
DELETE FROM dbscripts_on_spell WHERE id IN (51862);
INSERT INTO dbscripts_on_spell (`id`, `priority`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(51862,1,0,15,52452,0,0,23837,503198,1 |0x10,0,0,0,0,0,0,0,0,'cast 52452 on specific target'),
(51862,2,0,15,52453,0,0,23837,503192,1 |0x10,0,0,0,0,0,0,0,0,'cast 52453 on specific target'),
(51862,3,0,15,52454,0,0,23837,503194,1 |0x10,0,0,0,0,0,0,0,0,'cast 52454 on specific target'),
(51862,4,0,15,51861,0,0,23837,503193,1 |0x10,0,0,0,0,0,0,0,0,'cast 51861 on specific target');
-- target for spells
DELETE FROM spell_script_target WHERE entry IN(52452,52453,52454,51861);
INSERT INTO spell_script_target VALUES
(52452,1,23837,0),
(52453,1,23837,0),
(52454,1,23837,0),
(51861,1,23837,0);
-- Stats
UPDATE creature_template SET MinLevel = 83, MaxLevel = 83, MinLevelHealth = 13945, MaxLevelHealth = 13945, UnitFlags = 768 WHERE entry IN (28514,28515,28516,28517);
