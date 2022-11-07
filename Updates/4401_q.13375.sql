-- q.13375 'The Heroic Key to the Focusing Iris'
-- afterscript
DELETE FROM dbscripts_on_quest_end WHERE id IN (13375);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13375,1,31,27990,10,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27990'),
(13375,100,0,0,0,0,27990,15,0,32910,0,0,0,0,0,0,0,'buddy -> Player: say'),
(13375,200,15,4294,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 4294 on Player'), -- 21:16:06.901
(13375,7200,0,0,0,0,0,0,0,32911,0,0,0,0,0,0,0,'buddy -> Player: say'); -- 21:16:13.492
UPDATE quest_template SET CompleteScript = 13375 WHERE entry IN (13375);
UPDATE `broadcast_text` SET `ChatTypeID`= 4 WHERE `Id` IN (32910);
