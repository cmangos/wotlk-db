
-- more stuff

DELETE FROM `questgiver_greeting` WHERE `Entry` in (1217, 1284, 1377, 4080, 5393, 5637, 5694, 7877, 27337);

-- Glorin Steelbrow
INSERT INTO `questgiver_greeting` VALUES (1217, 0, 'Harumph!  As if I don''t have enough to do out here in the muck, without all these distractions!', 0, 0);

-- Archbishop Benedictus
INSERT INTO `questgiver_greeting` VALUES (1284, 0, 'My blessings go to you, $c, and I pray they may guide and protect you during these times of trouble.  Be vigilant, but remain hopeful for peace, for hope is our greatest weapon against the darkness.', 0, 0);

-- Pilot Stonegear
INSERT INTO `questgiver_greeting` VALUES (1377, 0, 'Driving a Steam Tank isn''t for everyone.  It takes an iron grip and nerves of steel...lucky I have both!  How about you?  How''s your mettle?  Want to prove it to me?', 0, 0);

-- Kaela Shadowspear
INSERT INTO `questgiver_greeting` VALUES (4080, 0, 'Gaxim is so focused on trying to convince the night elves that his methods are superior that I had no choice but to focus his energies on something--so I unleashed him on the Venture Co.$B$BI remain focused on helping the Charred Vale to the northwest.', 0, 0);

-- Quartermaster Lungertz
INSERT INTO `questgiver_greeting` VALUES (5393, 0, 'Nethergarde keep always needs more supplies - supplies to help our mages in their research, and supplies to keep our defenders in top fighting shape.', 1, 0);

-- Roetten Stonehammer
INSERT INTO `questgiver_greeting` VALUES (5637, 0, 'Pleased to meetcha, $c. Me name''s Roetten. I lead Reclaimers Incorporated.$B$BMe guild and I specialize in aquiring lost goods. We usually hire brave adventurers and send them off to finish tasks for those who aren''t able, or don''t have the time.', 2, 0);

-- High Sorcerer Andromath
INSERT INTO `questgiver_greeting` VALUES (5694, 0, ' ', 0, 0);

-- Latronicus Moonspear
INSERT INTO `questgiver_greeting` VALUES (7877, 0, ' ', 0, 0);

-- Spy Mistress Repine
INSERT INTO `questgiver_greeting` VALUES (27337, 0, ' ', 0, 0); -- wotlk

-- --------------------------------------------------------------------------- --

-- https://tbc.wowhead.com/quest=467/stonegears-search
-- 2nd Questgiver for "Stonegear's Search" (Pilot Longbeard)
DELETE FROM `creature_questrelation` WHERE `id` = 2092 AND `quest` = 467;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2092, 467);

-- --------------------------------------------------------------------------- --

