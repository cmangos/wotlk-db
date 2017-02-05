/* Nathanos Blightcaller in Eastern Plaguelands offers chain that some quest are grouped:
1st group
-- 	q.6022 'To Kill With Purpose'
-- 	q.6042 'Un-Life's Little Annoyances'
-- 	q.6133 'The Ranger Lord's Behest'
2nd group
-- 	q.6135 'Duskwing, Oh How I Hate Thee...'
--	q.6136 'The Corpulent One'
3rd group
-- 	q.6163 'Ramstein'
--  q.14349 'The Call to Command' -- added in 3.3.0 replaces older q.6144
finishing q.14349 will unlock final chain
*/

-- 1st group must be completed to unlock 2nd group
DELETE FROM conditions WHERE condition_entry BETWEEN 1136 AND 1140;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1136, 8, 6022, 0), -- q.6022 'To Kill With Purpose' 
(1137, 8, 6042, 0), -- q.6042 'Un-Life's Little Annoyances'
(1138, 8, 6133, 0), -- q.6133 'The Ranger Lord's Behest'
(1139, -1, 1137, 1136),
(1140, -1, 1139, 1138); -- this will unlock 2nd group
UPDATE quest_template SET RequiredCondition = 1140 WHERE entry = 6135;
UPDATE quest_template SET RequiredCondition = 1140 WHERE entry = 6136;

-- 2nd group must be completed to unlock 3rd group
DELETE FROM conditions WHERE condition_entry BETWEEN 1141 AND 1143;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1141, 8, 6135, 0), -- q.6135 'Duskwing, Oh How I Hate Thee...' 
(1142, 8, 6136, 0), -- q.6136 'The Corpulent One'
(1143, -1, 1142, 1141); -- this will unlock 3rd group
UPDATE quest_template SET RequiredCondition = 1143 WHERE entry = 6163;
UPDATE quest_template SET RequiredCondition = 1143 WHERE entry = 14349;

-- quests were redone in 3.3 due to replace Varimathras' quests, that would cease to exist for Horde players post-Wrath Gate.
-- q.14350 'The Crimson Courier' -- q. added in 3.3.0
UPDATE quest_template SET PrevQuestId = 14349 WHERE entry = 14350;
-- q.6146 'Nathanos\' Ruse'
UPDATE quest_template SET PrevQuestId = 14350 WHERE entry = 6146;

-- q.6144 'The Call to Command' has been replaced by q.14349 'The Call to Command' after 3.3 update
UPDATE creature_questrelation SET quest = 14349 WHERE id = 11878 AND quest = 6144;
-- Lady Sylvanas Windrunner - after 3.3 will continue chain
DELETE FROM creature_involvedrelation WHERE id = 10181 AND quest = 14349;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(10181,14349);