-- i.8396 Vulture Gizzard
-- drop corrected (wowhead oscillates between 40-30% + comments indicates smth similar)
-- As we know Wowhead is not 100% legit with this so: 33% value will be fair imho
DELETE FROM creature_loot_template WHERE item = 8396;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(5982,8396,33,0,1,1,0,'Vulture Gizzard'),
(5983,8396,33,0,1,1,0,'Vulture Gizzard'),
(8299,8396,33,0,1,1,0,'Vulture Gizzard');
