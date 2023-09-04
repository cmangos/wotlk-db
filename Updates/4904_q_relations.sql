-- q.12603 'Sharpening Your Talons'
-- q.12605 'Securing the Bait'
-- q.12595 'In Search of Bigger Game'
-- q.12683 'Burning to Help'
-- req. q.12558 & q.12569 & q.12556 finished first.
UPDATE quest_template SET RequiredCondition = 20567, PrevQuestId = 0, ExclusiveGroup = 0 WHERE entry IN (12603,12605,12595,12683);
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 20564 AND 20567;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(20564,8,12558,0,0,0,0,''),
(20565,8,12569,0,0,0,0,''),
(20566,8,12556,0,0,0,0,''),
(20567,-1,20566,20565,20564,0,0,'');

-- q.12607 'A Mammoth Undertaking'
-- q.12658 'My Pet Roc'
-- q.12681 'Reagent Agent'
-- req. q.12603 & q.12605 finished first.
UPDATE quest_template SET RequiredCondition = 20570, PrevQuestId = 0, ExclusiveGroup = 0 WHERE entry IN (12607,12658,12681);
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 20568 AND 20570;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(20568,8,12603,0,0,0,0,''),
(20569,8,12605,0,0,0,0,''),
(20570,-1,20569,20568,0,0,0,'');