-- Move 2000000261 - 2000000267 to wotlk-range 2000005000+ to free them for 230_blackrock_depths classic-db/tbc-db align
DELETE FROM `dbscript_string` WHERE `entry` IN (2000000261,2000000262,2000000263,2000000264,2000000265,2000000266,2000000267,2000000268,2000000269,2000000270,2000000271,2000000272,2000000273,
2000005899,2000005900,2000005901,2000005902,2000005903,2000005904,2000005905,2000005906,2000005907,2000005908,2000005909,2000005910,2000005911);
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000005899, 'I\'m not afraid of anything -- bring it on!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005900, 'This isn\'t right at all, $N. In the tale Wind Tamer Barah told me, Stormhoof was a hero, not a villain.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005901, 'The North Wind is the ancient enemy of the taunka, a ruler among the elements, and the very force which bleeds the life from these ancient people.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005902, 'They would rather die than bow before the North Wind. Something is amiss here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005903, 'The Lorehammer...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005904, 'It confirms our suspicions. The threads of time have been severed and rewoven in the wrong pattern. But, how?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005905, 'My brother, Stormhoof, was a far greater warrior than I. While I trained to be the chieftain of our clan, he prepared for a larger quest.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),

(2000005906, 'How could he be in danger? All he wanted was to give us power over the elements that made life harsh for us here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005907, 'He sought an artifact... a horn, I think. He left the village on a long journey in search of it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005908, 'I know that a terrible enemy pursued him after he won the horn, but I... I don\'t recall... what happened... next.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005909, 'It is as though my memories are shrouded in mist. I cannot even recall what became of my brother. Is this how you mean that he is in danger?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005910, 'The disturbances in the tomb, they must be involved. Look around you, $N. Do you see them?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000005911, 'Yes, they are at fault, but I am powerless to stop them. Will you warn the people of Tunka\'lo, stranger, that their past and their ancestors are in danger?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (9874,9906);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(9874, 0, 0, 0, 0, 0, 30154, 10, 4, 2000000261, 0, 0, 0, 0, 0, 0, 0, 'Say'),
(9874, 0, 22, 14, 7, 0, 30154, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'change faction'),
(9874, 1, 26, 0, 0, 0, 30154, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'start attack'),

(9906, 0, 15, 56760, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast spell 56760'),
(9906, 0, 0, 0, 0, 0, 0, 0, 0, 2000005905, 0, 0, 0, 0, 0, 0, 0, 'say 1'),
(9906, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote OneShotTalk'),
(9906, 7, 0, 0, 0, 0, 0, 0, 0, 2000005906, 0, 0, 0, 0, 0, 0, 0, 'say 2'),
(9906, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote OneShotTalk'),
(9906, 13, 0, 0, 0, 0, 0, 0, 0, 2000005907, 0, 0, 0, 0, 0, 0, 0, 'say 3'),
(9906, 13, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote OneShotQuestion'),
(9906, 19, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote OneShotExclamation'),
(9906, 19, 0, 0, 0, 0, 0, 0, 0, 2000005908, 0, 0, 0, 0, 0, 0, 0, 'say 4'),
(9906, 25, 1, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote OneShotNo'),
(9906, 25, 0, 0, 0, 0, 0, 0, 0, 2000005909, 0, 0, 0, 0, 0, 0, 0, 'say 5'),
(9906, 32, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote OneShotPoint'),
(9906, 32, 0, 0, 0, 0, 0, 0, 0, 2000005910, 0, 0, 0, 0, 0, 0, 0, 'say 6'),
(9906, 38, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote OneShotTalk'),
(9906, 38, 0, 0, 0, 0, 0, 0, 0, 2000005911, 0, 0, 0, 0, 0, 0, 0, 'say 7'),
(9906, 43, 8, 30381, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'killcredit');

DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN (13034);
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(13034, 0, 1, 6, 0, 0, 30381, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote OneShotQuestion'),
(13034, 0, 0, 0, 0, 0, 30381, 10, 4, 2000000262, 0, 0, 0, 0, 0, 0, 0, 'say 1'),
(13034, 8, 0, 0, 0, 0, 30381, 10, 4, 2000000263, 0, 0, 0, 0, 0, 0, 0, 'say 2'),
(13034, 8, 1, 1, 0, 0, 30381, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote OneShotTalk'),
(13034, 14, 0, 0, 0, 0, 30381, 10, 4, 2000000264, 0, 0, 0, 0, 0, 0, 0, 'say 3'),
(13034, 14, 1, 274, 0, 0, 30381, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote OneShotNo'),
(13034, 21, 0, 0, 0, 0, 30381, 10, 4, 2000000265, 0, 0, 0, 0, 0, 0, 0, 'say 4'),
(13034, 21, 1, 25, 0, 0, 30381, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote OneShotPoint'),
(13034, 25, 1, 1, 0, 0, 30381, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'emote OneShotTalk'),
(13034, 25, 0, 0, 0, 0, 30381, 10, 4, 2000000266, 0, 0, 0, 0, 0, 0, 0, 'say 5');

DELETE FROM `dbscript_string` WHERE `entry` IN (2000005237,2000005238,2000005239,2000005240); -- unused due to change to classic-db/tbc-db 2000005099,2000005100,2000005101,2000005102

