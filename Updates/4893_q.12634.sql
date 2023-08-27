-- q.12634 'Some Make Lemonade, Some Make Liquor'
-- req. q.12549 'Dreadsaber Mastery: Becoming a Predator' & q.12520 'Rhino Mastery: The Test' finished first
UPDATE quest_template SET RequiredCondition = 20555 WHERE entry IN (12634);
DELETE FROM `conditions` WHERE `condition_entry` IN (20554,20555);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(20554,8,12549,0,0,0,0,''),
(20555,-1,20554,20553,0,0,0,'');
-- Adventurous Dwarf 28604
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 972401, condition_id = 20556 WHERE menu_id = 9724 AND id = 0;
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 972402, condition_id = 20557 WHERE menu_id = 9724 AND id = 1;
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 972403, condition_id = 20558 WHERE menu_id = 9724 AND id = 2;
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 20556 AND 20558;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(20556,23,38656,1,0,0,1,''),
(20557,23,38653,2,0,0,1,''),
(20558,23,38655,1,0,0,1,'');
DELETE FROM dbscripts_on_gossip WHERE id BETWEEN 972401 AND 972403;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 972401
(972401,1,17,38656,1,0,0,0,0,0,0,0,0,0,0,0,0,'give 38656 to Player'),
(972401,10,0,0,0,0,0,0,0,28593,0,0,0,0,0,0,0,'say'),
(972401,11,1,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(972401,12,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(972401,5000,3,0,0,0,0,0,0x04,0,0,0,0,5475.49,4984.74,-129.864,100,'move'),
(972401,7000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self'),
-- 972402
(972402,1,17,38653,1,0,0,0,0,0,0,0,0,0,0,0,0,'give 38653 to Player'),
(972402,10,0,0,0,0,0,0,0,28593,0,0,0,0,0,0,0,'say'),
(972402,11,1,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(972402,12,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(972402,5000,3,0,0,0,0,0,0x04,0,0,0,0,5475.49,4984.74,-129.864,100,'move'),
(972402,7000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self'),
-- 972403
(972403,1,17,38655,1,0,0,0,0,0,0,0,0,0,0,0,0,'give 38653 to Player'),
(972403,10,0,0,0,0,0,0,0,28593,0,0,0,0,0,0,0,'say'),
(972403,11,1,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(972403,12,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(972403,5000,3,0,0,0,0,0,0x04,0,0,0,0,5475.49,4984.74,-129.864,100,'move'),
(972403,7000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
