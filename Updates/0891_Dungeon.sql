-- Dungeon: The Slave Pens
-- Some creatures schould be linked and walk together

-- Coilfang Technician
DELETE FROM creature_linking WHERE guid IN (79386,79411);
INSERT INTO creature_linking VALUES
(79386, 79367, 1+512), -- Coilfang Collaborator
(79411, 79367, 1+512); -- Coilfang Collaborator
UPDATE creature SET Spawndist = 0, MovementType = 0 WHERE guid IN (79386,79411);
DELETE FROM creature_movement WHERE id IN (79386,79411);

-- Coilfang Enchantress #1
DELETE FROM creature_linking WHERE guid IN (79509,79518);
INSERT INTO creature_linking VALUES
(79509, 79375, 1+512), -- Coilfang Technician
(79518, 79375, 1+512); -- Coilfang Technician
UPDATE creature SET Spawndist = 0, MovementType = 0 WHERE guid IN (79509,79518);
DELETE FROM creature_movement WHERE id IN (79509,79518);

-- Coilfang Enchantress #2
DELETE FROM creature_linking WHERE guid IN (79498,79516);
INSERT INTO creature_linking VALUES
(79498, 79372, 1+512), -- Coilfang Technician
(79516, 79372, 1+512); -- Coilfang Technician
UPDATE creature SET Spawndist = 0, MovementType = 0 WHERE guid IN (79498,79516);
DELETE FROM creature_movement WHERE id IN (79498,79516);
