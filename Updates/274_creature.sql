-- Murmur - Update
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 66952;
DELETE FROM creature_movement WHERE id = 66952;
UPDATE creature_template SET ExtraFlags = 4096, MovementType = 2 WHERE entry = 18708;
DELETE FROM creature_movement_template WHERE entry = 18708;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18708,1,-157.895,-497.322,15.8651,5000,1870801,1.5708,0,0),
(18708,2,-157.895,-497.322,15.8651,5000,1870802,1.5708,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1870801); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1870801,1,35,5,500,0,0,0,0,0,0,0,0,0,0,0,'THROW_AI_EVENT'),
(1870801,4,15,33332,0,0,0,0,0,0,0,0,0,0,0,0,'cast 33332'),
(1870802,1,35,5,500,0,0,0,0,0,0,0,0,0,0,0,'THROW_AI_EVENT');
