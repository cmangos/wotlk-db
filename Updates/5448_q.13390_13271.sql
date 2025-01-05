-- q.13390 'A Voice in the Dark' - A
-- q.13271 'A Voice in the Dark' - H
DELETE FROM dbscripts_on_quest_start WHERE id IN (13390);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13390,1,0,0,0,0,31237,536668,0x10,32338,0,0,0,0,0,0,0,'say To Player');
UPDATE quest_template SET StartScript = 13390 WHERE entry IN (13390);
UPDATE quest_template SET StartScript = 13390 WHERE entry IN (13271);
UPDATE `broadcast_text` SET `ChatTypeID` = 4 WHERE `Id` IN (32338);
UPDATE creature_loot_template SET ChanceOrQuestChance = -40 WHERE item = 44001 AND entry = 31691;
