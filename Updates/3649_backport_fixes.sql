 -- https://github.com/cmangos/wotlk-db/commit/b7e441638ad88495964bf9d359d8575af0650c48#r54214768
UPDATE `dbscript_string` SET `type` = 2 WHERE `entry` = 2000003320;

-- https://github.com/cmangos/tbc-db/commit/bece16738337621356e1717c5c7be11ffc305e6c
-- q.829 'Neeru Fireblade'
-- .go c id 3216
DELETE FROM dbscripts_on_quest_end WHERE id = 829;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(829, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2000003330, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 13:42:06.750
(829, 3000, 0, 0, 897, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- 13:42:09.594

UPDATE quest_template SET CompleteScript = 829 WHERE entry = 829;

DELETE FROM `dbscript_string` WHERE `entry` IN (2000003236,2000003237);
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003330 AND 2000003334;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment, broadcast_text_id) VALUES
(2000003330,'%s inspects the Searing Collar...',0,2,0,0,NULL, 990), -- 2000003236
(2000003331,'Interesting, very interesting.  You found this in Durotar, $N?',0,0,1,0,NULL, 991),
(2000003332,'The collar is indeed infused with demonic power, $N.  This bodes ill for our people.',0,0,1,0,NULL, 992), -- 2000003237
(2000003333,'Hm...it is good that you brought this to me, $N.',0,0,1,0,NULL, 993),
(2000003334,'A dangerous device this is, $N.  I am glad you brought it to my attention.',0,0,1,0,NULL, 994);

DELETE FROM `dbscript_random_templates` WHERE `id` = 897;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(897, 0, 2000003331, 0, 'Neeru Fireblade 3216 - Random Text q.829'),
(897, 0, 2000003332, 0, 'Neeru Fireblade 3216 - Random Text q.829'),
(897, 0, 2000003333, 0, 'Neeru Fireblade 3216 - Random Text q.829'),
(897, 0, 2000003334, 0, 'Neeru Fireblade 3216 - Random Text q.829');

-- https://github.com/cmangos/wotlk-db/commit/286ffbfb59f7341d8a1d044310e0d1598b8ebd47#r54210530
-- Boiled skull 2551
DELETE FROM `gameobject` WHERE `guid` IN (12186) AND `id` = 2551;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(12186, 2551, 0, 1, -12342.7, 165.09, 4.34192, 1.23918, 0, 0, 0.580703, 0.814116, 10, 10, 100, 1); -- 12184 taken

-- https://github.com/cmangos/wotlk-db/commit/ee0af3a26f7666ce3f7184c94de9cbeefa0125cb#r53920701
UPDATE `dbscripts_on_quest_start` SET `data_flags` = 0 WHERE `id` = 401 AND `delay` = 9000;

-- https://github.com/cmangos/wotlk-db/commit/a1b37ee7a3f9ae318d69fe6c645d8d7e753c691b#r53499855
UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 105175;
UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 105174;

