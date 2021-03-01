-- fix creature templates
UPDATE creature_template SET MinLevel=80, MaxLevel=80, Expansion=2, faction=14 WHERE entry=36568;
UPDATE creature_template SET UnitFlags=33555200, Expansion=2, faction=14 WHERE entry=36710;
UPDATE creature_template SET UnitFlags=33555200 WHERE entry=36530;
UPDATE creature_template SET faction=190 WHERE entry=15108;

DELETE FROM spell_script_target WHERE entry IN (69039,68644);
INSERT INTO spell_script_target VALUES
(69039,1,36530,0),
(68644,1,36530,0);
