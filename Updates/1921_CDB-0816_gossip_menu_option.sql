-- Fixed quests 7481 & 7482 (Elven Legends - Alliance / Horde) by adding missing
-- gossip_menu_options and missing DBscripts on gossip. Thanks TheTrueAnimal
-- for pointing. This closes #637
-- Also fixed quest requirements
-- Source: YTDB and http://www.wowhead.com/quest=7482
DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (5743, 5744);
UPDATE `gossip_menu_option` SET `action_script_id` = 574301 WHERE `menu_id` = 5743 AND `id` = 0;
UPDATE `gossip_menu_option` SET `action_script_id` = 574302 WHERE `menu_id` = 5743 AND `id` = 1;

