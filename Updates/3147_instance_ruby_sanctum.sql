
-- Meteor strikes
UPDATE creature_template SET Faction=14, UnitFlags=33554432, MinLevel=80, MaxLevel=80, MinLevelHealth=4274, MaxLevelHealth=4274 WHERE entry IN (40041,40042,40043,40044,40055);

-- Heroic creatures
UPDATE creature_template SET DifficultyEntry1=40682, Faction=834, DamageMultiplier=42, MinLevel=82, MaxLevel=82, MinLevelHealth=1078480, MaxLevelHealth=1078480 WHERE entry IN (40681);
UPDATE creature_template SET Faction=834, DamageMultiplier=42, MinLevel=82, MaxLevel=82, MinLevelHealth=1078480, MaxLevelHealth=1078480 WHERE entry IN (40682);

UPDATE creature_template SET DifficultyEntry1=40684, Faction=834, DamageMultiplier=9.2, MinLevel=82, MaxLevel=82, MinLevelHealth=202215, MaxLevelHealth=202215 WHERE entry IN (40683);
UPDATE creature_template SET Faction=834, DamageMultiplier=9.2, MinLevel=82, MaxLevel=82, MinLevelHealth=202215, MaxLevelHealth=202215 WHERE entry IN (40684);

-- missing script target
DELETE FROM spell_script_target WHERE entry=75509;
INSERT INTO spell_script_target VALUES
(75509,1,40142,0),
(75509,1,39863,0);
