UPDATE gameobject_template SET CustomData1=5000 WHERE entry IN(36727,179944);
-- Add visual to Meeting stone summon
UPDATE gameobject_template SET data2=32929 WHERE entry = 179944;

-- Make visual target Meeting Stone Summoning GO as well
DELETE FROM spell_script_target WHERE entry=32929 AND targetEntry=179944;
INSERT INTO spell_script_target VALUES
(32929,0,179944,0);
