-- q.13308 'Mind Tricks'
DELETE FROM dbscripts_on_quest_end WHERE id IN (13308);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13308,1,0,0,0,0,0,0,0,32533,0,0,0,0,0,0,0,'say to Player'),
(13308,5000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
UPDATE quest_template SET CompleteScript = 13308 WHERE entry IN (13308);
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE `Id`='32533';
