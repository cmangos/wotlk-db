-- Waterlogged Recipe i.49667
-- Patch 3.2.x
-- Req 300 cooking skill to get. 
UPDATE item_loot_template SET condition_id = 20643 WHERE item = 49667;
DELETE FROM conditions WHERE condition_entry = 20643;
INSERT INTO conditions(condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20643,7,185,300,0,0,0,'');
