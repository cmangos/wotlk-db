-- Quest relations
-- Players can do only 1 depending on which phase of the Fleshworks quest they're on.
-- Phase 1
-- q.13221 'I'm Not Dead Yet!' - A
-- q.13229 'I'm Not Dead Yet!' - H
-- Phase 64
-- q.13482 'Let's Get Out of Here' - A
-- q.13481 'Let's Get Out of Here!' - H

-- q.13482 'Let's Get Out of Here' - A
-- available if q.13221 not taken or rewarded
UPDATE quest_template SET RequiredCondition = 20786 WHERE entry IN (13482);
DELETE FROM conditions WHERE condition_entry BETWEEN 20784 AND 20786;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20784,8,13221,0,0,0,1,''),
(20785,9,13221,0,0,0,1,''),
(20786,-2,20785,20784,0,0,0,'');
-- q.13481 'Let's Get Out of Here!' - H
-- available if q.13229 not taken or rewarded
UPDATE quest_template SET RequiredCondition = 20789 WHERE entry IN (13481);
DELETE FROM conditions WHERE condition_entry BETWEEN 20787 AND 20789;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20787,8,13229,0,0,0,1,''),
(20788,9,13229,0,0,0,1,''),
(20789,-2,20788,20787,0,0,0,'');
