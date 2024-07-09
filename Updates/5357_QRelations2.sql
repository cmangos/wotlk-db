-- q.13122 'The Scourgestone'
-- q.13118 'The Purging Of Scourgeholme'
-- q.13130 'The Stone That Started A Revolution'
-- q.13135 'It Could Kill Us All'
-- q.13110 'The Restless Dead'
-- Opens after one of them 2 completed q.13104 or q.13105
UPDATE quest_template SET RequiredCondition = 20699 WHERE entry IN (13122,13118,13130,13135,13110);
DELETE FROM conditions WHERE condition_entry BETWEEN 20697 AND 20699;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20697,8,13104,0,0,0,0,''),
(20698,8,13105,0,0,0,0,''),
(20699,-2,20698,20697,0,0,0,'');

-- q.13125 'The Air Stands Still'
-- opens after q.13122 and q.13118 completed
UPDATE quest_template SET RequiredCondition = 20702 WHERE entry IN (13125);
DELETE FROM conditions WHERE condition_entry BETWEEN 20700 AND 20702;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20700,8,13122,0,0,0,0,''),
(20701,8,13118,0,0,0,0,''),
(20702,-1,20698,20697,0,0,0,'');

-- q.13139 'Into The Frozen Heart Of Northrend'
-- opens after completed: q.13125, q.13130, q.13110, q.13135
UPDATE quest_template SET RequiredCondition = 20707 WHERE entry IN (13139);
DELETE FROM conditions WHERE condition_entry BETWEEN 20703 AND 20707;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20703,8,13125,0,0,0,0,''),
(20704,8,13130,0,0,0,0,''),
(20705,8,13110,0,0,0,0,''),
(20706,8,13135,0,0,0,0,''),
(20707,-1,20706,20705,20704,20703,0,'');
