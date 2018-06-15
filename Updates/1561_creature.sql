-- Archmage Arugal should not move when summoned
UPDATE creature_template SET MovementType = 0 WHERE entry = 4275;
