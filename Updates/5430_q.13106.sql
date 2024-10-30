-- q.13106 'Blackwatch'
-- available if q.13117 not taken or rewarded
UPDATE quest_template SET RequiredCondition = 20768 WHERE entry IN (13106);
DELETE FROM conditions WHERE condition_entry BETWEEN 20766 AND 20768;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20766,8,13117,0,0,0,1,''),
(20767,9,13117,0,0,0,1,''),
(20768,-2,20767,20766,0,0,0,'');
