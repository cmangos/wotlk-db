-- q.13398 'Where Dragons Fell' - A
-- q.13359 'Where Dragons Fell' - H

-- q.13398 'Where Dragons Fell' - A
-- available after q.13396 rewarded
UPDATE quest_template SET RequiredCondition = 20816 WHERE entry IN (13398);
-- q.13359 'Where Dragons Fell' - H
-- available after q.13348 rewarded
UPDATE quest_template SET RequiredCondition = 20817 WHERE entry IN (13359);
-- script
DELETE FROM dbscripts_on_quest_end WHERE id IN (13359);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13359,1,31,32443,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 32443 - terminate if alive'),
(13359,100,15,61043,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 61043'),
(13359,200,10,32443,120000,0,0,0,6|0x08,0,0,0,0,7863.9526,941.29083,451.70636,1.42168,'Player: summon 32443'); -- 00:41:42.262
UPDATE quest_template SET CompleteScript = 13359 WHERE entry IN (13359);
UPDATE quest_template SET CompleteScript = 13359 WHERE entry IN (13398);
-- The Lich King 32443
UPDATE creature_template SET Faction = 2043, MinLevel = 83, MaxLevel = 83, UnitClass = 2, UnitFlags = 768, MovementType = 2 WHERE Entry = 32443;
DELETE FROM creature_movement_template WHERE Entry = 32443;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32443,0,1,7863.9526,941.29083,451.70636,1.42168,0,0),
(32443,0,2,7862.519,962.66016,450.28934,100,20000,3244301);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3244301);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3244301,1000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STAND_STATE_KNEEL'),
(3244301,1100,0,0,0,0,0,0,0x04,32874,0,0,0,0,0,0,0,'say'), -- 00:41:51.27
(3244301,1200,10,32446,120000,0,0,0,0x08,0,0,0,20056,7812.1885,1084.342,410.40668,5.0594,'summon 32446'), -- 00:41:51.979
(3244301,17000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self'); -- 00:42:07.787
-- Sindragosa 32446
UPDATE creature_template SET SpeedWalk = (12 / 2.5), SpeedRun = (30 / 7), Faction = 2068, MinLevel = 83, MaxLevel = 83, UnitClass = 1, UnitFlags = 768, StaticFlags1 = 2147483648, MovementType = 3 WHERE Entry = 32446;
DELETE FROM creature_movement_template WHERE Entry = 32446;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32446,0,1,7811.205,1087.0612,400.83386,100,0,0),
(32446,0,2,7811.205,1087.0612,400.83386,100,0,0),
(32446,0,3,7812.1885,1084.342,410.40668,100,0,0),
(32446,0,4,7820.2085,1062.1705,488.46118,100,0,0),
(32446,0,5,7858.777,956.971,506.32025,100,0,0),
(32446,0,6,7840.278,891.8768,506.32025,100,0,0),
(32446,0,7,7785.0713,899.6137,506.32025,100,0,0),
(32446,0,8,7750.4307,955.01196,506.32025,100,0,0),
(32446,0,9,7727.3794,1065.4987,506.32025,100,0,0),
(32446,0,10,7698.6016,1189.6842,506.32025,100,100,1);
