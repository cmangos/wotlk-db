-- q.12929 'The Earthen of Ulduar'
-- q.13273 'Going After the Core'
-- available after q.12928 'Norgannon's Shell' Rewarded (Horde ver.)
UPDATE quest_template SET RequiredCondition = 21118 WHERE entry IN (12929,13273);
DELETE FROM conditions WHERE condition_entry = 21118;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(21118,8,12928,0,0,0,0,'');
-- q.12871 'Aid from the Explorers' League'
-- q.12885 'The Exiles of Ulduar'
-- available after q.12872 'Norgannon's Shell' Rewarded (Ally ver.)
UPDATE quest_template SET RequiredCondition = 21119 WHERE entry IN (12871,12885);
DELETE FROM conditions WHERE condition_entry = 21119;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(21119,8,12872,0,0,0,0,'');
