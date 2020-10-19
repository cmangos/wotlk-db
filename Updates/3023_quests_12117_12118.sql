-- Only one can be completed.. both lead to same person

-- q.12117 'Travel to Moa'ki Harbor' -- from Hotawa(borean tundra)
-- not available if: q.12118 'Travel to Moa'ki Harbor' taken or completed
DELETE FROM conditions WHERE condition_entry BETWEEN 20139 AND 20141;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20139,8,12118,0,0,0,1),
(20140,9,12118,0,0,0,1),
(20141,-2,20140,20139,0,0,0);
UPDATE quest_template SET RequiredCondition = 20141 WHERE entry = 12117;
-- q.12118 'Travel to Moa'ki Harbor' -- from Anuniaq (Howling Fjord)
-- not available if: q.12117 'Travel to Moa'ki Harbor' taken or completed
DELETE FROM conditions WHERE condition_entry BETWEEN 20142 AND 20144;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20142,8,12117,0,0,0,1),
(20143,9,12117,0,0,0,1),
(20144,-2,20143,20142,0,0,0);
UPDATE quest_template SET RequiredCondition = 20144 WHERE entry = 12118;
