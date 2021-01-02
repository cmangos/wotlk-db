
-- missing script targets
DELETE FROM spell_script_target WHERE entry IN (66193,66129);
INSERT INTO spell_script_target VALUES
(66193,1,34564,0),
(66193,1,34607,0),
(66129,1,34607,0);
