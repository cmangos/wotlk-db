-- Broggok Poison Cloud in Blood Furnace
-- add UNIT_FLAG_NOT_SELECTABLE
UPDATE creature_template SET UnitFlags=UnitFlags|33554432 WHERE entry IN (17662,18602);
