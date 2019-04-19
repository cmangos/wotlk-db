-- UTGARDE PINNACLE updates

-- Svala (both versions) should be immune when spawned
UPDATE creature_template SET UnitFlags=UnitFlags|320 WHERE entry IN (26668,30810);
UPDATE creature_template SET UnitFlags=UnitFlags|256 WHERE entry IN (29281,30809);

-- Flame braziers shouldn't fall through the map
UPDATE creature_template SET InhabitType=7 WHERE entry IN (27273,30771);
