
-- for 'A Gift for ...' quests
UPDATE `quest_template` SET `OfferRewardText` = 'My thanks for this Lovely Charm Bracelet.' WHERE `entry` IN (24597, 24609, 24610, 24611, 24612, 24613, 24614, 24615);

-- for all the 'Crushing the Crown' quests (Horde + Alliance) [looks like they all have the same texts]
UPDATE `quest_template` SET `OfferRewardText` = 'Good job, kid. You deserve a little somethin''. And hey, come back tomorrow if you get the time; I might have a job for ya.' WHERE `entry` IN (24638, 24645, 24647, 24648, 24649, 24650, 24651, 24652, 24658, 24659, 24660, 24662, 24663, 24664, 24665, 24666);
UPDATE `quest_template` SET `RequestItemsText` = 'Did you teach ''em a lesson?' WHERE `entry` IN (24638, 24645, 24647, 24648, 24649, 24650, 24651, 24652, 24658, 24659, 24660, 24662, 24663, 24664, 24665, 24666);

-- for 'Uncommon Scents' quests
UPDATE `quest_template` SET `OfferRewardText` = 'Hey. You got some time on your hands? I could use someone like you.' WHERE `entry` IN (24804, 24805);

-- Horde (text fixes or missing texts added)
UPDATE `quest_template` SET `OfferRewardText` = 'Hey, thanks, kid. Give it over, let''s take a look.$b$b<He takes the device from you and fiddles with it.>$b$bOh, that ain''t good.' WHERE `entry` = 24536;

UPDATE `quest_template` SET `OfferRewardText` = 'You got it, huh? Good job, kid. Top notch. Let''s see what we got here.$b$b<He cracks open the crate and rummages around inside.>' WHERE `entry` = 24541;

UPDATE `quest_template` SET `OfferRewardText` = 'Fantastic. Help is exactly what I need.' WHERE `entry` = 24793;

UPDATE `quest_template` SET `OfferRewardText` = 'You''re not Snivel. He was supposed to be here an hour ago! What have you done with him?$b$b<Roka seems to calm down when you tell her that you''re looking for Snivel, too. Then, tears start to well up in her eyes.>$b$bThis isn''t like my sweet Snivel. Do you think something''s happened to him?' WHERE `entry` = 24850;

UPDATE `quest_template` SET `OfferRewardText` = 'All he talked about was leaving town with all his money? Then he really has abandoned me, hasn''t he?$b$bI can''t believe I fell for such a horrible goblin! But he was so irresistible when we first met.' WHERE `entry` = 24851;
UPDATE `quest_template` SET `RequestItemsText` = 'Did you find him?' WHERE `entry` = 24851;

UPDATE `quest_template` SET `OfferRewardText` = 'You got his ledger? Really? That''s great, $n. There''s probably loads of good information in here.' WHERE `entry` = 24576;

-- Alliance (text fixes or missing texts added)
UPDATE `quest_template` SET `OfferRewardText` = 'Hey, thanks, kid. Give it over, let''s take a look.$b$b<He takes the device from you and fiddles with it.>$b$bOh, that ain''t good.' WHERE `entry` = 24655;

UPDATE `quest_template` SET `OfferRewardText` = 'You got it, huh? Good job, kid. Top notch. Let''s see what we got here.$b$b<He cracks open the crate and rummages around inside.>' WHERE `entry` = 24656;

UPDATE `quest_template` SET `RequestItemsText` = 'Did you find him?' WHERE `entry` = 24849;

-- --------------------------------------------------------- --

-- Detective Snap Snagglebolt (id=37172) [Horde]
-- 'Crushing the Crown' and 'Man on the Inside' needs 'A Friendly Chat...' as pre quest
UPDATE `quest_template` SET `PrevQuestId` = 24576 WHERE `entry` IN (24638, 24645, 24647, 24648, 24649, 24650, 24651, 24652, 24793);

-- UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 24793;

-- Crushing the Crown (Horde Lv 5)
DELETE FROM `creature_questrelation` WHERE `quest` = 24638;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24638;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37172, 24638);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (37172, 24638);

-- Crushing the Crown (Horde Lv 14)
DELETE FROM `creature_questrelation` WHERE `quest` = 24645;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24645;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37172, 24645);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (37172, 24645);

-- Crushing the Crown (Horde Lv 23)
DELETE FROM `creature_questrelation` WHERE `quest` = 24647;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24647;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37172, 24647);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (37172, 24647);

-- Crushing the Crown (Horde Lv 32)
DELETE FROM `creature_questrelation` WHERE `quest` = 24648;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24648;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37172, 24648);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (37172, 24648);

-- Crushing the Crown (Horde Lv 41)
DELETE FROM `creature_questrelation` WHERE `quest` = 24649;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24649;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37172, 24649);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (37172, 24649);

-- Crushing the Crown (Horde Lv 51)
DELETE FROM `creature_questrelation` WHERE `quest` = 24650;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24650;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37172, 24650);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (37172, 24650);

-- Crushing the Crown (Horde Lv 61)
DELETE FROM `creature_questrelation` WHERE `quest` = 24651;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24651;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37172, 24651);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (37172, 24651);

-- Crushing the Crown (Horde Lv 71)
DELETE FROM `creature_questrelation` WHERE `quest` = 24652;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24652;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (37172, 24652);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (37172, 24652);

-- --------------------------------------------------------- --

-- Inspector Snip Snagglebolt (id=38066) [Alliance]
-- 'Crushing the Crown' and 'Man on the Inside' needs 'A Friendly Chat...' as pre quest
UPDATE `quest_template` SET `PrevQuestId` = 24657 WHERE `entry` IN (24658, 24659, 24660, 24662, 24663, 24664, 24665, 24666, 24792);

-- UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `entry` = 24792;

-- Crushing the Crown (Alliance Lv 5)
DELETE FROM `creature_questrelation` WHERE `quest` = 24658;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24658;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38066, 24658);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (38066, 24658);

-- Crushing the Crown (Alliance Lv 14)
DELETE FROM `creature_questrelation` WHERE `quest` = 24659;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24659;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38066, 24659);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (38066, 24659);

-- Crushing the Crown (Alliance Lv 23)
DELETE FROM `creature_questrelation` WHERE `quest` = 24660;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24660;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38066, 24660);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (38066, 24660);

-- Crushing the Crown (Alliance Lv 32)
DELETE FROM `creature_questrelation` WHERE `quest` = 24662;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24662;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38066, 24662);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (38066, 24662);

-- Crushing the Crown (Alliance Lv 41)
DELETE FROM `creature_questrelation` WHERE `quest` = 24663;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24663;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38066, 24663);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (38066, 24663);

-- Crushing the Crown (Alliance Lv 51)
DELETE FROM `creature_questrelation` WHERE `quest` = 24664;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24664;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38066, 24664);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (38066, 24664);

-- Crushing the Crown (Alliance Lv 61)
DELETE FROM `creature_questrelation` WHERE `quest` = 24665;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24665;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38066, 24665);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (38066, 24665);

-- Crushing the Crown (Alliance Lv 71)
DELETE FROM `creature_questrelation` WHERE `quest` = 24666;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 24666;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (38066, 24666);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (38066, 24666);

-- --------------------------------------------------------- --

