
-- Heeding the Call (Alliance)
DELETE FROM `creature_questrelation` WHERE `quest` IN (5923, 5924, 5925);

INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(4218, 5923), -- Denatharion
(5505, 5924), -- Theridran
(16721, 5924), -- Shalannius
(3602, 5925); -- Kal

-- he isn't a quest-npc at all (remove questgiver flag)
UPDATE `creature_template` SET `NpcFlags` = 49 WHERE `entry` = 4219;


-- Heeding the Call (Horde)
DELETE FROM `creature_questrelation` WHERE `quest` IN (5926, 5927, 5928);

INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(6746, 5926), -- Innkeeper Pala
(6929, 5927), -- Innkeeper Gryshka
(16655, 5927), -- Harene Plainwalker
(3064, 5928); -- Gennia Runetotem

-- --------------------------------------------------------------------- --

DELETE FROM `questgiver_greeting` WHERE `Entry` in (2079, 658, 3143, 1569, 2980, 15278, 21175);

-- Conservator Ilthalaine
INSERT INTO `questgiver_greeting` VALUES (2079, 0, 'Ah, the beauty of Shadowglen never ceases to delight my senses!', 0, 0);

-- Sten Stoutarm
INSERT INTO `questgiver_greeting` VALUES (658, 0, 'Ah, well aren''t you a sturdy-looking one? Perhaps you can assist me with a thing or two. Not much help around here except for green apprentices, and they''ve other things to worry about.', 0, 0);

-- Gornek
INSERT INTO `questgiver_greeting` VALUES (3143, 0, 'The Valley of Trials will temper even the weakest into a warrior worthy to join the Horde. Those who cannot rise to its tests will be left to bake in the scorching desert sun.', 0, 0);

-- Shadow Priest Sarvis
INSERT INTO `questgiver_greeting` VALUES (1569, 0, 'No other race on Azeroth has suffered as much as our people, $c. To laugh in the face of death has become second nature for all of us.', 0, 0);

-- Grull Hawkwind
INSERT INTO `questgiver_greeting` VALUES (2980, 0, 'Greetings, $N, and welcome to Camp Narache. News of your arrival spread quickly among the tribe.', 0, 0);

-- Magistrix Erona
INSERT INTO `questgiver_greeting` VALUES (15278, 0, '$N!  I hope you''re ready to get to work, because there is much for you to do here on Sunstrider Isle.$B$BEver since the destruction of the Sunwell by Arthas and the Scourge, we have been a race adrift on a sea of uncertainty.', 0, 0);

-- Magister Bloodhawk
INSERT INTO `questgiver_greeting` VALUES (21175, 0, ' ', 0, 0);

-- --------------------------------------------------------------------- --
