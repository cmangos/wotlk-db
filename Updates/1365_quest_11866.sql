-- q.11866 'Ears of Our Enemies'
-- Nesingwary Lackey Ear - Players should be able to drop this item even after q completed (req. for repeatable)
DELETE FROM creature_loot_template WHERE item = 35188;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(25800,35188,67,0,1,2,1408,'Nesingwary Lackey Ear'),
(25880,35188,64,0,1,2,1408,'Nesingwary Lackey Ear'),
(25806,35188,63,0,1,2,1408,'Nesingwary Lackey Ear'),
(25836,35188,64,0,1,2,1408,'Nesingwary Lackey Ear'),
(25843,35188,55,0,1,2,1408,'Nesingwary Lackey Ear'),
(25839,35188,63,0,1,2,1408,'Nesingwary Lackey Ear'),
(25979,35188,64,0,1,2,1408,'Nesingwary Lackey Ear');

DELETE FROM conditions WHERE condition_entry IN (1406,1407,1408);
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(1406,9,11866,0,''),
(1407,8,11866,0,''),
(1408,-2,1407,1406,'');
