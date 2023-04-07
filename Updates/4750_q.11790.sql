-- Wrong update removed
-- q.11790 'Cultists Among Us' - Quest replaced with new version q.11920 'Cultists Among Us'
UPDATE quest_template SET RequiredCondition = 0 WHERE entry = 11790;
DELETE FROM conditions WHERE condition_entry = 20545;
-- quest added to object
DELETE FROM gameobject_questrelation WHERE quest = 11790;
