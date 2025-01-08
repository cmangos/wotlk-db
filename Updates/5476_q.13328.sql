-- q.13328 'Shatter the Shards' - Update

-- only 1 item per drop check
-- Broken Shard of Horror 44319
UPDATE gameobject_loot_template SET condition_id = 20320 WHERE item = 44319;
-- Broken Shard of Despair 44320
UPDATE gameobject_loot_template SET condition_id = 20321 WHERE item = 44320;
-- Broken Shard of Suffering 44321
UPDATE gameobject_loot_template SET condition_id = 20322 WHERE item = 44321;
DELETE FROM conditions WHERE condition_entry BETWEEN 20320 AND 20322;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20320,23,44319,1,0,1,''),
(20321,23,44320,1,0,1,''),
(20322,23,44321,1,0,1,'');
