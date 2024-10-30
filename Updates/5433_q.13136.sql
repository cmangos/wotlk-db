-- q.13136 'Jagged Shards'
-- corrected
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 13136;
-- Jagged Shard 43242 - quest starter has 62
-- Jagged Shard 43259 - quest req item
UPDATE creature_loot_template SET condition_id = 20775 WHERE item = 43242;
DELETE FROM conditions WHERE condition_entry = 62; -- old wrong condition
DELETE FROM conditions WHERE condition_entry BETWEEN 20772 AND 20775;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20772,8,13119,0,0,0,''),
(20773,8,13120,0,0,0,''),
(20774,23,43242,1,0,1,''),
(20775,-1,20774,20773,20772,0,'');
