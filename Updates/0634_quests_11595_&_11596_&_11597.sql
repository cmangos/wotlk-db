-- quests 'The Defense of Warsong Hold'
-- They're 3 versions of this quest.
-- q.11595 -- after killing nefarian - Will only greet you like this if you have completed the q.7783 'The Lord of Blackrock'
-- q.11596 -- If you have not turned in Nefarian's Head, and do not have the Scarab Lord title, this is what Saurfang will say to you.
-- q.11597 -- Player has Scarab lord title (achievement=416) 
-- Also all three ... becomes available after q.11585 or q.11586 completed
-- Only one of these quests should be displayed on quests list, accepted and completed... 
DELETE FROM conditions WHERE condition_entry BETWEEN 1104 AND 1115;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
-- for prev quests
(1104, 8, 11585, 0),
(1105, 8, 11586, 0),
(1106, -2, 1105, 1104),
-- 
(1107, 22, 7783, 0), -- q.not taken yet
(1108, 8, 7783, 0),  -- quest finished
(1109, 20, 416, 0),  -- Scarab lord
(1110, 20, 416, 1),  -- Scarab lord missing
-- q.11596
(1111, -1, 1110, 1107),
(1112, -1, 1111, 1106),
-- q.11597
(1113, -1, 1109, 1107),
(1114, -1, 1113, 1106),
-- q.11595
(1115, -1, 1108, 1106);
UPDATE quest_template SET RequiredCondition = 1115 WHERE entry = 11595;
UPDATE quest_template SET RequiredCondition = 1112 WHERE entry = 11596;
UPDATE quest_template SET RequiredCondition = 1114 WHERE entry = 11597;

-- missing quest added into list
DELETE FROM creature_questrelation WHERE id = 25256 AND quest = 11597;
INSERT INTO creature_questrelation (id, quest) VALUES
(25256,11597);
