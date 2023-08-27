-- q.12804 'A Steak Fit for a Hunter'
-- req. q.12520 'Rhino Mastery: The Test' finished first
UPDATE quest_template SET RequiredCondition = 20553 WHERE entry IN (12804);
DELETE FROM `conditions` WHERE `condition_entry` = 20553;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(20553,8,12520,0,0,0,0,'');
