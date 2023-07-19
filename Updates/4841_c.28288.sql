-- Farunn 28288
UPDATE creature_template SET MovementType = 4, ExtraFlags = 1048576 WHERE entry = 28288;
UPDATE creature SET position_x = 5986.364, position_y = 4823.672, position_z = -101.77508, spawndist = 0, MovementType = 4 WHERE guid = 522148;
DELETE FROM creature_movement_template WHERE entry = 28288;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(28288,1,5986.364,4823.672,-101.77508,100,0,0),
(28288,2,5997.8574,4844.4624,-100.5302,100,0,0),
(28288,3,6003.5454,4867.1377,-97.78867,100,0,0),
(28288,4,6026.4688,4879.6685,-95.28782,100,0,0),
(28288,5,6042.11,4892.51,-94.308,100,0,0),
(28288,6,6068.98,4909.88,-96.8855,100,0,0);
-- Sholazar Tickbird 28093 on Farunn 28288
DELETE FROM vehicle_accessory WHERE vehicle_entry = 28288;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(28288,0,28093,'Sholazar Tickbird 28093 on Farunn 28288');
