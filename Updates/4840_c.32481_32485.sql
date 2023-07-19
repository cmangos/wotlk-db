-- Aotona 32481
DELETE FROM creature_addon WHERE guid IN (520328,520352,520355,520357,520358);
DELETE FROM creature_movement WHERE Id IN (520328,520352,520355,520357,520358);
DELETE FROM game_event_creature WHERE guid IN (520328,520352,520355,520357,520358);
DELETE FROM game_event_creature_data WHERE guid IN (520328,520352,520355,520357,520358);
DELETE FROM creature_battleground WHERE guid IN (520328,520352,520355,520357,520358);
DELETE FROM creature_linking WHERE guid IN (520328,520352,520355,520357,520358)  
 OR master_guid IN (520328,520352,520355,520357,520358);
DELETE FROM creature WHERE guid IN (520328,520352,520355,520357,520358);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(520328,32481,571,1,1,5390.5376,4433.8926,-138.12128,0.8151,28800,28800,15,1),
(520352,32481,571,1,1,5278.45,5000.45,-134.987,4.73295,28800,28800,15,1),
(520355,32481,571,1,1,5169.58,4632.44,-132.482,0.611179,28800,28800,15,1),
(520357,32481,571,1,1,5762.54,5070.1,-134.572,2.28407,28800,28800,15,1), -- poss waypoints
(520358,32481,571,1,1,5734.49,4726.46,-133.774,5.87805,28800,28800,15,1);
DELETE FROM `spawn_group` WHERE id = 32534;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32534, 'Sholazar Basin - Aotona 32481 - Rare', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 32534;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32534, 520328, -1),
(32534, 520352, -1),
(32534, 520355, -1),
(32534, 520357, -1),
(32534, 520358, -1);

-- King Krush 32485
DELETE FROM creature_addon WHERE guid IN (520359,520364,520376);
DELETE FROM creature_movement WHERE Id IN (520359,520364,520376);
DELETE FROM game_event_creature WHERE guid IN (520359,520364,520376);
DELETE FROM game_event_creature_data WHERE guid IN (520359,520364,520376);
DELETE FROM creature_battleground WHERE guid IN (520359,520364,520376);
DELETE FROM creature_linking WHERE guid IN (520359,520364,520376)  
 OR master_guid IN (520359,520364,520376);
DELETE FROM creature WHERE guid IN (520359,520364,520376);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(520359,32485,571,1,1,6064.319,4896.986,-94.37252,0,28800,28800,0,4), -- linear
(520364,32485,571,1,1,6388.94,5387.62,-40.6474,0,28800,28800,0,0), -- missing waypoints
(520376,32485,571,1,1,4871.74,4471.62,-66.2593,0,28800,28800,0,0); -- missing waypoints
DELETE FROM `spawn_group` WHERE id = 32535;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32535, 'Sholazar Basin - King Krush 32485 - Rare', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 32535;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32535, 520359, -1),
(32535, 520364, -1),
(32535, 520376, -1);
DELETE FROM creature_movement WHERE Id IN (520359);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(520359,1 ,6064.319,4896.986,-94.37252,100,1000,0),
(520359,2 ,6037.0625,4888.588,-94.63033,100,0,0),
(520359,3 ,6020.516,4874.889,-96.102394,100,0,0),
(520359,4 ,6015.044,4860.4165,-97.604385,100,0,0),
(520359,5 ,5991.258,4839.444,-100.77092,100,0,0),
(520359,6 ,5994.7827,4805.953,-99.944756,100,0,0),
(520359,7 ,6002.1616,4779.902,-96.548134,100,0,0),
(520359,8 ,6009.2935,4752.007,-97.33956,100,0,0),
(520359,9 ,6021.486,4718.9253,-94.93725,100,0,0),
(520359,10,6037.9644,4695.8853,-94.46775,100,0,0),
(520359,11,6051.5356,4662.6724,-94.492966,100,0,0),
(520359,12,6073.332,4623.297,-97.30014,100,1000,0);
