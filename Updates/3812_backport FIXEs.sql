-- Reaplied objects that were removed during backports  (must use new guids)
DELETE FROM gameobject WHERE guid IN (18911,18913,18915);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
('18911','3085','0','1','1','-4667.08','-1715.54','503.324','3.07425','0','0','0.999433','0.0336635','25','25','100','1'), -- Campfire
('18913','180338','1','1','1','10054.7','2126.61','1330.22','0','0','0','0','1','180','180','255','1'), -- Candle 01 (Event35)
('18915','182807','1','1','1','10063.4','2111.85','1329.66','0','0','0','0','1','180','180','255','1'); -- Bottle    (Event35)

-- Alocate new guids for OBJECTs that were removed during backports
UPDATE game_event_gameobject SET guid = 18913 WHERE guid = 20598; -- Candle 01 (Event35)
UPDATE game_event_gameobject SET guid = 18915 WHERE guid = 20600; -- Bottle    (Event35)
