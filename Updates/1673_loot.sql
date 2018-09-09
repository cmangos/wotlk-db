-- Crudely Written Log should drop if player has already turned in 5121
-- http://www.wowhead.com/item=12842/crudely-written-log#comments:id=219726
DELETE FROM conditions WHERE condition_entry IN (1543,1544);
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(1544,-2,1543,36,'Quest ID 5121 Taken OR Rewarded'),  -- 36 correct already in DB
(1543,8,5121,0,'Quest ID 5121 Rewarded');
UPDATE creature_loot_template SET condition_id=z WHERE item=12842;
