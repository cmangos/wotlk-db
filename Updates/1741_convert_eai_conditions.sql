-- Port ACID Event 22 EVENT_T_RECEIVE_EMOTE Conditions to `conditions` and adjust ACID
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 1545 AND 1555;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`) VALUES
-- (XXX, 8, 11000), -- condition 10040
-- (XXX + 1, 6, 469), -- condition 4
-- (XXX + 1, 6, 67), -- condition 3
(1545, 9, 8353),
(1546, 9, 8354),
(1547, 9, 8357),
(1548, 9, 8360),
(1549, 9, 8356),
(1550, 9, 8359),
(1551, 9, 8355),
(1552, 9, 8358);

-- UPDATE `creature_ai_scripts` SET `event_param2` = 1409, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (8) AND `event_param3` IN (11000); -- 1409 (wotlk)
-- UPDATE `creature_ai_scripts` SET `event_param2` = 22, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (6) AND `event_param3` IN (469); -- 22 (wotlk)
-- UPDATE `creature_ai_scripts` SET `event_param2` = 21, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (6) AND `event_param3` IN (67); -- 21 (wotlk)
-- UPDATE `creature_ai_scripts` SET `event_param2` = 1545, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8353);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 1546, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8354);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 1547, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8357);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 1548, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8360);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 1549, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8356);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 1550, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8359);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 1551, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8355);
-- UPDATE `creature_ai_scripts` SET `event_param2` = 1552, `event_param3` = 0 WHERE `event_type` IN (22) AND `event_param2` IN (9) AND `event_param3` IN (8358);

