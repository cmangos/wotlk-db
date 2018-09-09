-- Wing Commander Ichman
UPDATE creature_template SET UnitFlags=33024 WHERE entry=23345;
-- Dragonmaw Race: Ichman's Target
UPDATE creature_template SET InhabitType=7, UnitFlags=33554432 WHERE entry=23359;

-- fix facing of Corlok
UPDATE creature SET orientation=1.603191 WHERE id=23344;
-- fix facing of Skyshatter
UPDATE creature SET orientation=1.570796 WHERE id=23348;

-- Wing Commander Ichman - should start quest "Dragonmaw Race: Wing Commander Ichman"
DELETE FROM creature_questrelation WHERE id IN (23345);
INSERT INTO creature_questrelation (id, quest) VALUES
(23345, 11069);

-- Wing Commander Mulverick
UPDATE creature_template SET UnitFlags=33024 WHERE entry=23346;
-- Dragonmaw Race: Mulverick's Target
UPDATE creature_template SET InhabitType=7 WHERE entry=23360;

-- Captain Skyshatter
UPDATE creature_template SET UnitFlags=33024 WHERE entry=23348;
-- Dragonmaw Race: Skyshatter's Target
UPDATE creature_template SET InhabitType=7 WHERE entry=23361;
