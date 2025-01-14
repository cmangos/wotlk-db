-- Kvaldir Attack Plans i.49676
-- drop corrected
DELETE FROM creature_loot_template WHERE item = 49676;
INSERT INTO creature_loot_template (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id,comments) VALUES
(34838,49676,20,0,1,1,20325,'Kvaldir Attack Plans');
DELETE FROM conditions WHERE condition_entry BETWEEN 20323 AND 20322;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20323,23,49676,1,0,1,''),
(20324,8,24442,0,0,1,''),
(20325,-1,20324,20323,0,0,'');
