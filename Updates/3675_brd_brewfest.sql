REPLACE INTO creature_spawn_data_template(entry,UnitFlags,Faction) VALUES
(10000,54,32768);

-- Dark Iron Antagonist - correct flags
UPDATE creature_template SET Faction=35,UnitFlags=33024 WHERE entry IN(23795);

