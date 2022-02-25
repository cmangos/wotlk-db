UPDATE `quest_template` SET `RequiredCondition`=1604 WHERE `entry`=3450;
DELETE FROM `conditions` WHERE `condition_entry` IN (1602, 1603, 1604);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(1602, 9, 3449, 0, 0, 0, 0, "Quest ID 3449 Taken"),
(1603, 8, 3449, 0, 0, 0, 0, "Quest ID 3449 Rewarded"),
(1604, -2, 1602, 1603, 0, 0, 0, "Quest ID 3449 Taken OR Quest ID 3449 Rewarded");
