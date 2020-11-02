-- q.12462 'Breaking Off A Piece'
-- becomes available after q.12326 'Steamtank Surprise' completed
DELETE FROM conditions WHERE condition_entry = 20163;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20163,8,12326,0,0,0,0);
UPDATE quest_template SET RequiredCondition = 20163 WHERE entry = 12462;
