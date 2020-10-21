-- q.12235 'Naxxramas and the Fall of Wintergarde'
-- ReQ Player to finish q.12174 'High Commander Halford Wyrmbane' or q.12298 'High Commander Halford Wyrmbane'
DELETE FROM conditions WHERE condition_entry BETWEEN 20145 AND 20147;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20145,8,12174,0,0,0,0),
(20146,8,12298,0,0,0,0),
(20147,-2,20146,20145,0,0,0);
UPDATE quest_template SET RequiredCondition = 20147 WHERE entry = 12235;
