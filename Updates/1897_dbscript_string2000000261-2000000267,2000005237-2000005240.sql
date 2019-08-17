-- Move 2000000261 - 2000000267 to wotlk-range 2000005000+ to free them for 230_blackrock_depths classic-db/tbc-db align
DELETE FROM `dbscript_string` WHERE `entry` IN (2000000261,2000000262,2000000263,2000000264,2000000265,2000000266,2000000267,2000005899,2000005900,2000005901,2000005902,2000005903,2000005904,2000005905);
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000005899, 'I\'m not afraid of anything -- bring it on!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005900, 'This isn\'t right at all, $N. In the tale Wind Tamer Barah told me, Stormhoof was a hero, not a villain.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005901, 'The North Wind is the ancient enemy of the taunka, a ruler among the elements, and the very force which bleeds the life from these ancient people.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005902, 'They would rather die than bow before the North Wind. Something is amiss here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005903, 'The Lorehammer...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005904, 'It confirms our suspicions. The threads of time have been severed and rewoven in the wrong pattern. But, how?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005905, 'My brother, Stormhoof, was a far greater warrior than I. While I trained to be the chieftain of our clan, he prepared for a larger quest.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (9874,9906) AND `dataint` IN (2000000261,2000005899,2000000267,2000005905);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(9874, 0, 0, 0, 0, 0, 30154, 10, 4, 2000005899, 0, 0, 0, 0, 0, 0, 0, 'Say'),
(9906, 0, 0, 0, 0, 0, 0, 0, 0, 2000005906, 0, 0, 0, 0, 0, 0, 0, 'say 1');

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (13034) AND `dataint` IN (2000000262,2000000263,2000000264,2000000265,2000000266,2000005900,2000005901,2000005902,2000005903,2000005904);
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(13034, 0, 0, 0, 0, 0, 30381, 10, 4, 2000005900, 0, 0, 0, 0, 0, 0, 0, 'say 1'),
(13034, 8, 0, 0, 0, 0, 30381, 10, 4, 2000005901, 0, 0, 0, 0, 0, 0, 0, 'say 2'),
(13034, 14, 0, 0, 0, 0, 30381, 10, 4, 2000005902, 0, 0, 0, 0, 0, 0, 0, 'say 3'),
(13034, 21, 0, 0, 0, 0, 30381, 10, 4, 2000005903, 0, 0, 0, 0, 0, 0, 0, 'say 4'),
(13034, 25, 0, 0, 0, 0, 30381, 10, 4, 2000005904, 0, 0, 0, 0, 0, 0, 0, 'say 5');

DELETE FROM `dbscript_string` WHERE `entry` IN (2000005237,2000005238,2000005239,2000005240); -- unused due to change to classic-db/tbc-db 2000005099,2000005100,2000005101,2000005102

