-- q.12171 & q.12297 only one can be completed (both leads to the same chain)
-- q.12171 'Of Traitors and Treason'
-- becomes available after q.12157 'The Lost Courier' completed &
-- if q.12297 'Of Traitors and Treason' not taken or completed 
DELETE FROM conditions WHERE condition_entry BETWEEN 20125 AND 20129;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20125,8,12157,0,0,0,0),
(20126,8,12297,0,0,0,1),
(20127,9,12297,0,0,0,1),
(20128,-2,20127,20126,0,0,0),
(20129,-1,20128,20125,0,0,0);
UPDATE quest_template SET RequiredCondition = 20129 WHERE entry = 12171;
-- q.12297 'Of Traitors and Treason' -- from Captain Adams(howling fjord)
-- if q.12171 'Of Traitors and Treason' not taken or completed
DELETE FROM conditions WHERE condition_entry BETWEEN 20130 AND 20132;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20130,8,12171,0,0,0,1),
(20131,9,12171,0,0,0,1),
(20132,-2,20130,20129,0,0,0);
UPDATE quest_template SET RequiredCondition = 20132 WHERE entry = 12297;

-- q.12092 'Strengthen the Ancients'
-- becomes available after q.12065 'The Focus on the Beach' completed
DELETE FROM conditions WHERE condition_entry = 20133;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20133,8,12065,0,0,0,0);
UPDATE quest_template SET RequiredCondition = 20133 WHERE entry = 12092;
