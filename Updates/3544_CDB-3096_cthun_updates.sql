-- Add support for C'Thun's stomach update in core

-- Update template for NPC 15800 (Exit Trigger)
UPDATE creature_template SET MinLevel=60, MaxLevel=60, Faction=16, MinLevelHealth=2203, MaxLevelHealth=2203, UnitFlags=33554432 WHERE Entry=15800;
