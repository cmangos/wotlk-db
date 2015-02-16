-- ToC25 - Gormok the Impaler
DELETE FROM creature_linking_template WHERE entry IN (34800);
INSERT INTO creature_linking_template VALUES
(34800,649,34796,4097,0);
DELETE FROM dbscripts_on_spell WHERE id=66313;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, data_flags, comments) VALUES
(66313, 1, 10, 34854, 30000, 2, 'spell Fire Bomb - summon Fire Bomb');
DELETE FROM spell_script_target WHERE entry=66636;
INSERT INTO spell_script_target VALUES
(66636, 1, 34796, 0);
