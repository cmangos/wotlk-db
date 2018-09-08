-- missing loot added
DELETE FROM creature_loot_template WHERE entry = 22910;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(22910, 32383, -100, 0, 1, 1, 0,'Skulloc\'s Soul');

-- not used anymore (moved to diff ids - TBC sync)
DELETE FROM `dbscript_string` WHERE `entry` IN (2000001325,2000005024,2000005038,2000005050,2000005099,2000005100,2000005101,2000005102,2000005178,2000005179);
