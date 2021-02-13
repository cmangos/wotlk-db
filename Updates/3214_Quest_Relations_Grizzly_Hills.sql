-- Conquest Hold - Grizzly Hills
-- Quest relations

-- q.12256 'The Flamebinders' Secrets'
-- becomes available after q.12468 'The Conqueror's Task' completed
DELETE FROM conditions WHERE condition_entry = 20229;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20229, 8, 12468, 0);
UPDATE quest_template SET RequiredCondition = 20229 WHERE entry = 12256;

-- q.12259 'The Thane of Voldrune'
-- becomes available after q.12256 'The Flamebinders' Secrets' & q.12257 'A Show of Strength' completed
DELETE FROM conditions WHERE condition_entry BETWEEN 20230 AND 20232;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20230, 8, 12256, 0),
(20231, 8, 12257, 0),
(20232, -1, 20231, 20230);
UPDATE quest_template SET RequiredCondition = 20232 WHERE entry = 12259;

-- q.12453 'Eyes Above'
-- becomes available after q.12412 'My Enemy's Friend' completed
DELETE FROM conditions WHERE condition_entry = 20233;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20233, 8, 12412, 0);
UPDATE quest_template SET RequiredCondition = 20233 WHERE entry = 12453;

-- q.12207 'Vordrassil's Fall'
-- q.12213 'The Darkness Beneath'
-- both becomes available after q.12413 'Attack on Silverbrook' completed
DELETE FROM conditions WHERE condition_entry = 20234;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20234, 8, 12413, 0);
UPDATE quest_template SET RequiredCondition = 20234 WHERE entry = 12207;
UPDATE quest_template SET RequiredCondition = 20234 WHERE entry = 12213;

-- q.12422 'Tactical Clemency' - UPDATE
-- q.12413 'Attack on Silverbrook' - UPDATE
-- q.12178 'Delivery to Krenna' - UPDATE
UPDATE quest_template SET NextQuestId = 0, ExclusiveGroup = 0 WHERE entry IN (12422,12413,12178);

-- q.12427 'The Conquest Pit: Bear Wrestling!'
-- becomes available after q.12413 'Attack on Silverbrook' & q.12422 'Tactical Clemency' & q.12178 'Delivery to Krenna'completed
DELETE FROM conditions WHERE condition_entry BETWEEN 20235 AND 20237;
INSERT INTO conditions (condition_entry, type, value1, value2, value3) VALUES 
(20235, 8, 12422, 0, 0),
(20236, 8, 12178, 0, 0),
(20237, -1, 20236, 20235,20234);
UPDATE quest_template SET RequiredCondition = 20237 WHERE entry = 12427;

-- q.12208 'Good Troll Hunting'
-- becomes available after q.12412 'My Enemy's Friend' completed
UPDATE quest_template SET RequiredCondition = 20233 WHERE entry = 12208;

-- q.12451 'Onward to Camp Oneqwah'
UPDATE quest_template SET PrevQuestId = 12259 WHERE entry = 12451;

-- q.12229 'A Possible Link'
-- q.12231 'The Bear God's Offspring'
-- both becomes available after q.12213 'The Darkness Beneath' & q.12207 'Vordrassil's Fall' completed
DELETE FROM conditions WHERE condition_entry BETWEEN 20238 AND 20240;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20238, 8, 12213, 0),
(20239, 8, 12207, 0),
(20240, -1, 20239, 20238);
UPDATE quest_template SET RequiredCondition = 20240 WHERE entry = 12229;
UPDATE quest_template SET RequiredCondition = 20240 WHERE entry = 12231;

-- q.12241 'Destroy the Sapling'
-- q.12242 'Vordrassil's Seeds'
-- both becomes available after q.12229 'A Possible Link' & q.12231 'The Bear God's Offspring' completed
DELETE FROM conditions WHERE condition_entry BETWEEN 20241 AND 20243;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20241, 8, 12229, 0),
(20242, 8, 12231, 0),
(20243, -1, 20242, 20241);
UPDATE quest_template SET RequiredCondition = 20243 WHERE entry = 12241;
UPDATE quest_template SET RequiredCondition = 20243 WHERE entry = 12242;

-- q.12236 'Ursoc, the Bear God'
-- becomes available after q.12241 'Destroy the Sapling' & q.12242 'Vordrassil's Seeds' completed
DELETE FROM conditions WHERE condition_entry BETWEEN 20244 AND 20246;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20244, 8, 12241, 0),
(20245, 8, 12242, 0),
(20246, -1, 20245, 20244);
UPDATE quest_template SET RequiredCondition = 20246 WHERE entry = 12236;

-- q.12412 'My Enemy's Friend'
-- becomes available after q.12259 'The Thane of Voldrune' completed
DELETE FROM conditions WHERE condition_entry = 20247;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20247, 8, 12259, 0);
UPDATE quest_template SET RequiredCondition = 20247 WHERE entry = 12412;
