
-- more stuff

DELETE FROM `questgiver_greeting` WHERE `Entry` in (1217, 1284, 1377, 3936, 4048, 4080, 5393, 5637, 5694, 5892, 5906, 6019, 7877, 27337);

-- Glorin Steelbrow
INSERT INTO `questgiver_greeting` VALUES (1217, 0, 'Harumph!  As if I don''t have enough to do out here in the muck, without all these distractions!', 0, 0);

-- Archbishop Benedictus
INSERT INTO `questgiver_greeting` VALUES (1284, 0, 'My blessings go to you, $c, and I pray they may guide and protect you during these times of trouble.  Be vigilant, but remain hopeful for peace, for hope is our greatest weapon against the darkness.', 0, 0);

-- Pilot Stonegear
INSERT INTO `questgiver_greeting` VALUES (1377, 0, 'Driving a Steam Tank isn''t for everyone.  It takes an iron grip and nerves of steel...lucky I have both!  How about you?  How''s your mettle?  Want to prove it to me?', 0, 0);

-- Shandris Feathermoon
INSERT INTO `questgiver_greeting` VALUES (3936, 0, 'In the name of Elune, the Sentinels keep vigilant watch over all our lands, from the cobbled streets of Darnassus to the edge of Ashenvale Forest.', 2, 0);

-- Falfindel Waywarder
INSERT INTO `questgiver_greeting` VALUES (4048, 0, 'You look as though you have traveled from afar, $r.', 2, 0);

-- Kaela Shadowspear
INSERT INTO `questgiver_greeting` VALUES (4080, 0, 'Gaxim is so focused on trying to convince the night elves that his methods are superior that I had no choice but to focus his energies on something--so I unleashed him on the Venture Co.$B$BI remain focused on helping the Charred Vale to the northwest.', 0, 0);

-- Quartermaster Lungertz
INSERT INTO `questgiver_greeting` VALUES (5393, 0, 'Nethergarde keep always needs more supplies - supplies to help our mages in their research, and supplies to keep our defenders in top fighting shape.', 1, 0);

-- Roetten Stonehammer
INSERT INTO `questgiver_greeting` VALUES (5637, 0, 'Pleased to meetcha, $c. Me name''s Roetten. I lead Reclaimers Incorporated.$B$BMe guild and I specialize in aquiring lost goods. We usually hire brave adventurers and send them off to finish tasks for those who aren''t able, or don''t have the time.', 2, 0);

-- High Sorcerer Andromath
INSERT INTO `questgiver_greeting` VALUES (5694, 0, ' ', 0, 0);

-- Searn Firewarder
INSERT INTO `questgiver_greeting` VALUES (5892, 0, ' ', 0, 0);

-- Xanis Flameweaver
INSERT INTO `questgiver_greeting` VALUES (5906, 0, 'Hello, shaman. It is good to see one of my $gbrothers:sisters; here. May I aid you somehow?', 1, 0);

-- Hornizz Brimbuzzle
INSERT INTO `questgiver_greeting` VALUES (6019, 0, ' ', 0, 0);

-- Latronicus Moonspear
INSERT INTO `questgiver_greeting` VALUES (7877, 0, ' ', 0, 0);

-- Spy Mistress Repine
INSERT INTO `questgiver_greeting` VALUES (27337, 0, ' ', 0, 0); -- wotlk

-- --------------------------------------------------------------------------- --

-- https://tbc.wowhead.com/quest=467/stonegears-search
-- 2nd Questgiver for "Stonegear's Search" (Pilot Longbeard)
DELETE FROM `creature_questrelation` WHERE `id` = 2092 AND `quest` = 467;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2092, 467);

-- https://tbc.wowhead.com/quest=1919/report-to-jennea
-- 2nd Questgiver for "Report to Jennea" (Zaldimar Wefhellt)
DELETE FROM `creature_questrelation` WHERE `id` = 328 AND `quest` = 1919;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (328, 1919);
-- and a 3rd Questgiver for "Report to Jennea" (Magis Sparkmantle) -- even Wowhead isn't uptodate
DELETE FROM `creature_questrelation` WHERE `id` = 1228 AND `quest` = 1919;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (1228, 1919);

-- --------------------------------------------------------------------------- --

-- text fix (Speak with Bink)
UPDATE quest_template SET
OfferRewardText = 'Oh, I can see you have promise, yes you do! But it takes more than promise to be a good mage.  And if you''re not a good mage, then you''re a bad mage.  And bad mages are part of the problem, yes they are!$b$bOops, I''m getting ahead of things.  Let''s begin at the start!'
WHERE entry = 1879;

-- text fix (Mage-tastic Gizmonitor)
UPDATE quest_template SET
OfferRewardText = 'Oh, splendid day!  When I made the gizmonitor I never realized how dependent on it I would become.  Now I can begin my studies anew!$b$bThank you, $n!  And here--these were my first tools as a mage.  They''re a little scratched but they''re well tested.  Take your pick--I''m sure you''ll find either of them useful.'
WHERE entry = 1880;

-- text fix (Report to Jennea)
UPDATE quest_template SET
OfferRewardText = '$N, I have a mission for you, here in the mage district. Listen closely, for there is no time to waste.'
WHERE entry = 1919;

-- text fix (Gathering Materials)
UPDATE quest_template SET
OfferRewardText = 'Yes, these are great pieces of linen.  I can make a fine robe with them.  And after I weave the rift gems into it, we''ll have a garment fit for a mage!'
WHERE entry = 1921;

-- --------------------------------------------------------------------------- --

