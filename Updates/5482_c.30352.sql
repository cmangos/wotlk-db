-- Skybreaker Marine 30352
-- orientation corrected for few in Skybreaker
UPDATE creature SET orientation = 3.141 WHERE guid IN (6230042,6230044,6230047,6230048,6230050);
UPDATE creature SET orientation = 0 WHERE guid = 6230045;
