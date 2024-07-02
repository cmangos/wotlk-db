-- q.13044 'If There Are Survivors...'
-- Req 3 quests to be finish first: 13008, 13039, 13040
UPDATE quest_template SET RequiredCondition = 20696 WHERE entry IN (13044);
DELETE FROM conditions WHERE condition_entry BETWEEN 20693 AND 20696;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20693,8,13008,0,0,0,0,''),
(20694,8,13039,0,0,0,0,''),
(20695,8,13040,0,0,0,0,''),
(20696,-1,20695,20694,20693,0,0,'');
