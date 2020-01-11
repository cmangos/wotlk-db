-- q.12121 'See You on the Other Side'
-- Your Corpse
UPDATE creature_template SET EquipmentTemplateId = 0 WHERE Entry = 32742;
DELETE FROM dbscripts_on_spell WHERE id = 51718;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(51718,0,15,51719,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
-- Gong Bunny
UPDATE creature_template SET InhabitType = 4 WHERE entry = 26937;
-- waypoints 
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (5712090);
DELETE FROM creature_movement WHERE id IN (5712090);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(5712090,1,4657.31,-4859.34,40.7129,1000,11,4.92183),
(5712090,2,4657.31,-4859.34,40.7129,1000,3,4.92183);
-- Gan'jo's Chest 
UPDATE gameobject SET phaseMask = 3 WHERE id = 188518;
-- remove source item from players inventory
DELETE FROM dbscripts_on_quest_end WHERE id = 12121;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12121,1,17,36834,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove source item');
UPDATE quest_template SET  CompleteScript = 12121 WHERE entry = 12121;
