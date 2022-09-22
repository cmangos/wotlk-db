/*
Troll Partol - Daily quest chain
- Captain Brandon 28042
-- q.12588 'Troll Patrol: Can You Dig It?'
-- q.12502 'Troll Patrol: High Standards'
-- q.12564 'Troll Patrol: Something for the Pain'
- Captain Rupert 28044
-- q.12568 'Troll Patrol: Done to Death'
-- q.12591 'Troll Patrol: Throwing Down'
-- q.12509 'Troll Patrol: Intestinal Fortitude'
- Captain Grondel 28043
-- q.12594 'Troll Patrol: Couldn't Care Less'
-- q.12585 'Troll Patrol: Creature Comforts'
-- q.12519 'Troll Patrol: Whatdya Want, a Medal?'
-- Alchemist Finklestein 28205
-- q.12541 'Troll Patrol: The Alchemist's Apprentice'
- if all done:
-- q.12604 Congratulations!
*/

-- Add all to Event list
DELETE FROM game_event WHERE entry BETWEEN 1246 AND 1254;
INSERT INTO game_event (entry, `schedule_type`, occurence, `length`, holiday, `EventGroup`, `description`) VALUES
(1246,0,0,1440,0,42,'Captain Brandon - Random Daily - Troll Patrol: Can You Dig It?'),
(1247,0,0,1440,0,42,'Captain Brandon - Random Daily - Troll Patrol: High Standards'),
(1248,0,0,1440,0,42,'Captain Brandon - Random Daily - Troll Patrol: Something for the Pain'),
(1249,0,0,1440,0,43,'Captain Rupert - Random Daily - Troll Patrol: Done to Death'),
(1250,0,0,1440,0,43,'Captain Rupert - Random Daily - Troll Patrol: Throwing Down'),
(1251,0,0,1440,0,43,'Captain Rupert - Random Daily - Troll Patrol: Intestinal Fortitude'),
(1252,0,0,1440,0,44,'Captain Grondel - Random Daily - Troll Patrol: Couldn\'t Care Less'),
(1253,0,0,1440,0,44,'Captain Grondel - Random Daily - Troll Patrol: Creature Comforts'),
(1254,0,0,1440,0,44,'Captain Grondel - Random Daily - Troll Patrol: Whatdya Want, a Medal?');
DELETE FROM game_event_quest WHERE quest IN (12588,12502,12564,12568,12591,12509,12594,12585,12519);
INSERT INTO game_event_quest (quest, Event) VALUES
(12588,1246),(12502,1247),(12564,1248),
(12568,1249),(12591,1250),(12509,1251),
(12594,1252),(12585,1253),(12519,1254);
-- fix for quest relations
UPDATE quest_template SET RequiredCondition = 20498, PrevQuestId=0, ExclusiveGroup = 0 WHERE entry IN (12588,12502,12564,12568,12591,12509,12594,12585,12519);
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 20495 AND 20498;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(20495,9,12587,0,0,0,0,''),
(20496,9,12501,0,0,0,0,''),
(20497,9,12563,0,0,0,0,''),
(20498,-2,20497,20496,20495,0,0,'');
UPDATE quest_template SET RequiredCondition = 20504, PrevQuestId=0 WHERE entry IN (12604);
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 20499 AND 20504;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES
(20499,8,12587,0,0,0,0,''),
(20500,8,12501,0,0,0,0,''),
(20501,8,12563,0,0,0,0,''),
(20502,-2,20501,20500,20499,0,0,''),
(20503,1,51573,0,0,0,0,''),
(20504,-1,20503,20502,0,0,0,'');
-- assigneg main quests to 'Commander Kunz' 28039
DELETE FROM creature_questrelation WHERE quest IN (12587,12501,12563);
INSERT INTO creature_questrelation (`id`, quest) VALUES 
(28039,12587),(28039,12501),(28039,12563);
DELETE FROM creature_involvedrelation WHERE quest IN (12587,12501,12563);
INSERT INTO creature_involvedrelation (`id`, quest) VALUES 
(28039,12587),(28039,12501),(28039,12563);
-- quest fixes
UPDATE quest_template SET PrevQuestId=12596, SrcSpell = 51573 WHERE entry IN (12563);
UPDATE quest_template SET SrcSpell = 51573 WHERE entry IN (12501);
