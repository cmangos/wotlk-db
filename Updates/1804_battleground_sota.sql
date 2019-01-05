-- Battleground SotA: update unit flags and delete static spawns which should be summoned

-- update template
UPDATE creature_template SET UnitFlags=768 WHERE entry IN (29260,29262);
UPDATE creature_template SET UnitFlags=33570816 WHERE entry=28781;
UPDATE creature_template SET UnitFlags=16384 WHERE entry=27894;

-- delete creatures
DELETE FROM creature WHERE guid IN (107468,107467,128726,128727,128728,128729);
