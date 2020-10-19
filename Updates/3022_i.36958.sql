-- i.36958 'The Favor of Zangus'
-- alliance only
-- shouldnt drop if: already in Players inventory or Player has q.12168 'The Favor of Zangus' taken or comleted
DELETE FROM conditions WHERE condition_entry BETWEEN 20134 AND 20138;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20134,2,36958,1,0,0,1),
(20135,8,12171,0,0,0,0),
(20136,9,12171,0,0,0,0),
(20137,-2,20136,20135,20134,0,0),
(20138,-1,20137,22,0,0,0);
UPDATE creature_loot_template SET condition_id = 20138 WHERE item = 36958;
