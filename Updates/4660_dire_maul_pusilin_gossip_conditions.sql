-- Correct conditions for dire maul pusilin event path
-- Resolves https://github.com/cmangos/wotlk-db/issues/528
-- .go c id 14354

-- (14354, 0, 1, 86.1935, -197.888, -4.05657, 0, 1000, 1435401),
UPDATE `gossip_menu_option` SET `condition_id` = 719 WHERE `menu_id` = 5709 AND `id` = 0; -- Game? Are you crazy? (719) - 462	33	1	0	0	0	0	Waypoint == 1 -> 719
UPDATE `gossip_menu` SET `condition_id` = 719 WHERE `entry` = 5709 AND `condition_id` = 719;

-- (14354, 0, 9, -150.171, -278.348, -4.14787, 0, 1000, 1435402),
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES (3309, 33, 9, 0, 0, 0, 0, 'Waypoint == 9');
UPDATE `gossip_menu_option` SET `condition_id` = 3309 WHERE `menu_id` = 5709 AND `id` = 1; -- Why you little... (720) - Waypoint == 3 -> 9
UPDATE `gossip_menu` SET `condition_id` = 3309 WHERE `entry` = 5709 AND `condition_id` = 720;

-- (14354, 0, 19, 107.902, -355.904, -4.12403, 0, 1000, 1435402),

INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES (3319, 33, 19, 0, 0, 0, 0, 'Source of Condition\'s Last Waypoint == 19'); -- 1096/390 used in wotlkmangos
UPDATE `gossip_menu_option` SET `condition_id` = 3319 WHERE `menu_id` = 5709 AND `id` = 2; -- Mark my words, I will catch you, imp. And when I do! (721) Waypoint == 10 -> 19
UPDATE `gossip_menu` SET `condition_id` = 3319 WHERE `entry` = 5709 AND `condition_id` = 721;

-- (14354, 0, 32, 50.4384, -631.018, -25.1082, 0, 1000, 1435402),
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES (3332, 33, 32, 0, 0, 0, 0, 'Waypoint == 32');
UPDATE `gossip_menu_option` SET `condition_id` = 3332 WHERE `menu_id` = 5709 AND `id` = 3; -- DIE! (722) - Last Waypoint == 22 -> 32
UPDATE `gossip_menu` SET `condition_id` = 3332 WHERE `entry` = 5709 AND `condition_id` = 722;

-- (14354, 0, 38, 12.7601, -706.167, -12.6426, 0, 1000, 1435402),
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES (3338, 33, 38, 0, 0, 0, 0, 'Waypoint == 38');
UPDATE `gossip_menu_option` SET `condition_id` = 3338 WHERE `menu_id` = 5709 AND `id` = 4; -- Prepare to meet your maker. (723) Last Waypoint == 22 -> 32
UPDATE `gossip_menu` SET `condition_id` = 3338 WHERE `entry` = 5709 AND `condition_id` = 723;

