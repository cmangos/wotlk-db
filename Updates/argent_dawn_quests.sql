
-- not needed anymore, replaced with @COND5 (Quest ID 5401 Rewarded OR Quest ID 5405 Rewarded OR Quest ID 5503 Rewarded AND Player Has Less Than 1 of Item ID 12846 in Inventory)
-- Condition 522 - (Quest ID 5503 Rewarded AND Player Has Less Than 1 of Item ID 12846 in Inventory)
-- Condition 560 - (Quest ID 5405 Rewarded AND Player Has Less Than 1 of Item ID 12846 in Inventory)
DELETE FROM conditions WHERE condition_entry IN (522, 560);

SET @COND1 = 522; -- condID reused
SET @COND2 = 320;
SET @COND3 = 168;
SET @COND4 = 560; -- condID reused
SET @COND5 = XXX;

-- only 1 of these quests can be taken/completed (Argent Dawn Commission - Quests)
UPDATE quest_template SET ExclusiveGroup = 5401 WHERE entry IN (5401, 5405, 5503);

-- missing condition
DELETE FROM conditions WHERE condition_entry = @COND1;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(@COND1, 8, 5401, 0, 0, 0, 0, 'Quest ID 5401 Rewarded');
-- (@COND2, 8, 5405, 0, 0, 0, 0, 'Quest ID 5405 Rewarded'), -- already exist
-- (@COND3, 8, 5503, 0, 0, 0, 0, 'Quest ID 5503 Rewarded'); -- already exist

-- new condition
DELETE FROM conditions WHERE condition_entry = @COND4;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(@COND4, -2, @COND1, @COND2, @COND3, 0, 0, '(Quest ID 5401 Rewarded OR Quest ID 5405 Rewarded OR Quest ID 5503 Rewarded)');

-- if 1 of the 3 'Argent Dawn Commission' Quests completed, these 9 Quests will unlock (Scourgestone-Quests)
UPDATE quest_template SET RequiredCondition = @COND4 WHERE entry IN (5402, 5403, 5404, 5406, 5407, 5408, 5508, 5509, 5510);

-- new condition
-- Condition 167 (already exist) = Player Has Less Than 1 of Item ID 12846 in Inventory
DELETE FROM conditions WHERE condition_entry = @COND5;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(@COND5, -1, @COND4, 167, 0, 0, 0, '(Quest ID 5401 Rewarded OR Quest ID 5405 Rewarded OR Quest ID 5503 Rewarded AND Player Has Less Than 1 of Item ID 12846 in Inventory)');

-- update to new condition id for gossip: I need another Argent Dawn Commission.
UPDATE gossip_menu_option SET condition_id = @COND5 WHERE menu_id = 3421 AND id = 0; -- 522 (Argent Quartermaster Hasana)
UPDATE gossip_menu_option SET condition_id = @COND5 WHERE menu_id = 3441 AND id = 0; -- 560 (Argent Quartermaster Lightspark)
UPDATE gossip_menu_option SET condition_id = @COND5 WHERE menu_id = 3461 AND id = 0; -- 167 (Quartermaster Miranda Breechlock)

-- -------------------------------------------------------------------------------------- --

-- quest assignment fixes (verified on wrath, classic & wowhead)
-- Chillwind Camp
-- https://www.wowhead.com/wotlk/npc=10840/argent-officer-pureheart
DELETE FROM creature_questrelation WHERE quest IN (5401, 5402, 5403, 5404);
DELETE FROM creature_involvedrelation WHERE quest IN (5401, 5402, 5403, 5404);
INSERT INTO creature_questrelation (id, quest) VALUES (10840, 5401); -- Argent Dawn Commission
INSERT INTO creature_questrelation (id, quest) VALUES (10840, 5402); -- Minion's Scourgestones
INSERT INTO creature_questrelation (id, quest) VALUES (10840, 5403); -- Invader's Scourgestones
INSERT INTO creature_questrelation (id, quest) VALUES (10840, 5404); -- Corruptor's Scourgestones
INSERT INTO creature_involvedrelation (id, quest) VALUES (10840, 5401);
INSERT INTO creature_involvedrelation (id, quest) VALUES (10840, 5402);
INSERT INTO creature_involvedrelation (id, quest) VALUES (10840, 5403);
INSERT INTO creature_involvedrelation (id, quest) VALUES (10840, 5404);

UPDATE quest_template SET RequiredRaces = 0 WHERE entry IN (5401, 5402, 5403, 5404); -- both factions!

-- The Bulwark
-- https://www.wowhead.com/wotlk/npc=10839/argent-officer-garush
DELETE FROM creature_questrelation WHERE quest IN (5405, 5406, 5407, 5408);
DELETE FROM creature_involvedrelation WHERE quest IN (5405, 5406, 5407, 5408);
INSERT INTO creature_questrelation (id, quest) VALUES (10839, 5405); -- Argent Dawn Commission
INSERT INTO creature_questrelation (id, quest) VALUES (10839, 5406); -- Corruptor's Scourgestones
INSERT INTO creature_questrelation (id, quest) VALUES (10839, 5407); -- Invader's Scourgestones
INSERT INTO creature_questrelation (id, quest) VALUES (10839, 5408); -- Minion's Scourgestones
INSERT INTO creature_involvedrelation (id, quest) VALUES (10839, 5405);
INSERT INTO creature_involvedrelation (id, quest) VALUES (10839, 5406);
INSERT INTO creature_involvedrelation (id, quest) VALUES (10839, 5407);
INSERT INTO creature_involvedrelation (id, quest) VALUES (10839, 5408);

UPDATE quest_template SET RequiredRaces = 0 WHERE entry IN (5405, 5406, 5407, 5408); -- both factions!

-- Light's Hope Chapel
-- https://www.wowhead.com/wotlk/npc=11039/duke-nicholas-zverenhoff
DELETE FROM creature_questrelation WHERE quest = 5503;
DELETE FROM creature_involvedrelation WHERE quest = 5503;
INSERT INTO creature_questrelation (id, quest) VALUES (11039, 5503); -- Argent Dawn Commission
INSERT INTO creature_involvedrelation (id, quest) VALUES (11039, 5503);

-- --------------------------------------------------------------------------- --
