-- q.11790 'Cultists Among Us'
-- Req q.11789 'A Soldier in Need' - completed
UPDATE quest_template SET RequiredCondition = 20545 WHERE entry = 11790;
DELETE FROM conditions WHERE condition_entry = 20545;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES 
(20545,8,11789,0,0,0);
-- quest added to object
DELETE FROM gameobject_questrelation WHERE quest = 11790;
INSERT INTO gameobject_questrelation (id, quest) VALUES
(187851, 11790);
