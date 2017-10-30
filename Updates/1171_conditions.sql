-- Prevented item 5075 (Blood Shard) from dropping outside the Barrens
-- Thanks Zingzah for pointing.
-- Source: http://www.wowwiki.com/Blood_Shard

UPDATE `gameobject_loot_template` SET `condition_id` = 1398 WHERE `item` = 5075;

DELETE FROM `conditions` WHERE `condition_entry` = 1398;
INSERT INTO conditions (condition_entry,type,value1,value2) VALUE
(1398, 4, 17, 0);
