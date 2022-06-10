-- Readd deleted object by prev commit (had to move them to new guids - to avoid conflicts with new spawn_groups)
DELETE FROM `gameobject` WHERE guid IN (5309999,97240);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
('5309999','186081','530','1','1','-2253.16','5477.76','55.1426','-0.303716','0','0','-0.151275','0.988492','180','180','100','1'), -- TDB area
('97240','3658','1','1','1','-2212.89','-376.176','-8.69453','1.69297','0','0','0.748956','0.66262','180','900','100','1'); -- mulgore - pool 21604
UPDATE pool_gameobject SET guid = 97240 WHERE guid = 18434 AND pool_entry = 21604;
