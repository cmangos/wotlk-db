-- q.11878 'Khu'nok Will Know'
-- DB part:
DELETE FROM dbscripts_on_quest_start WHERE id = 11878;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11878,0,15,46232,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 11878 WHERE entry = 11878;

DELETE FROM spell_script_target WHERE entry = 46237;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(46237,1,25861,0);
