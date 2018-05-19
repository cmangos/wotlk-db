-- The Eyes of Skettis q.10847 has no prerequisites. q.10862, q.10863, q.10862 are just lead-in quests.
-- However, the player CAN complete more than one of the lead-in quests but can only have one in the quest log at once.
-- For example a horde player can complete q.10862 first and then go back to pick up q.10908 as well.
-- If The Eyes of Skettis q.10847 is taken or completed then none of the lead-ins are available.
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 1491 AND 1503;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(1491, 22, 10847, 0), -- q.10847 NOT Taken AND NOT COMPLETED

(1492, 9, 10862, 0),
(1493, 9, 10863, 0),
(1494, 9, 10908, 0),

(1495, -3, 1492, 0),
(1496, -3, 1493, 0),
(1497, -3, 1494, 0),

(1498, -1, 1495, 1496), -- q.10862 and q.10863 NOT Taken
(1499, -1, 1498, 1491), -- (q.10862 and q.10863 NOT Taken) AND (q.10847 NOT Taken AND NOT COMPLETED)

(1500, -1, 1496, 1497), -- q.10863 and q.10908 NOT Taken
(1501, -1, 1500, 1491), -- (q.10863 and q.10908 NOT Taken) AND (q.10847 NOT Taken AND NOT COMPLETED)

(1502, -1, 1495, 1497), -- q.10862 and q.10908 NOT Taken
(1503, -1, 1502, 1491); -- (q.10862 and q.10908 NOT Taken) AND (q.10847 NOT Taken AND NOT COMPLETED)

UPDATE quest_template SET RequiredCondition=1499, ExclusiveGroup=0, NextQuestId=0 WHERE entry=10908; -- (N)
UPDATE quest_template SET RequiredCondition=1501, ExclusiveGroup=0, NextQuestId=0 WHERE entry=10862; -- (H)
UPDATE quest_template SET RequiredCondition=1503, ExclusiveGroup=0, NextQuestId=0 WHERE entry=10863; -- (A)
