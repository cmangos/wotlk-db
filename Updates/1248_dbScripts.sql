-- "Mad" Jonah Sterling
-- waypoints set by script
DELETE FROM creature_movement_template WHERE entry = 24742;
DELETE FROM dbscripts_on_creature_death WHERE id = 24742;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(24742,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(24742,1,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(24742,120,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'resp');
-- set by ACID script
DELETE FROM dbscripts_on_relay WHERE id = 20013;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(20013,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(20013,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(20013,0,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(20013,1,3,0,700,0,0,0,0,0,0,0,0,-32.7382,-3434.87,6.05618,100,'force to move'),
(20013,2,3,0,700,0,0,0,0,0,0,0,0,-36.0278,-3425.38,4.89694,1.78459,'force to move'),
(20013,4,20,2,0,0,24547,100,7,0,0,0,0,0,0,0,0,'buddy - movement chenged to 2:waypoints'),
(20013,6,3,0,0,0,0,0,0x08,0,0,0,0,-39.8345,-3415.08,-15.221,100,'force to move');
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2474201 AND 2474202;

-- Hozzer
-- waypoints set by scripts
UPDATE creature_template SET UnitFlags = 256 WHERE entry = 24547;
DELETE FROM creature_movement_template WHERE entry = 24547;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(24547,1,-49.74284,-3393.537,-8.100207,1000,2454701,3.700098),
(24547,2,-36.4,-3412.64,-15.3366,60000,2454702,3.66253),
(24547,3,-49.74284,-3393.537,-8.100207,10000,2454703,3.700098);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2454701,2454702,2454703);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2454701,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2454701,0,5,59,256,0,0,0,0,0,0,0,0,0,0,0,0,'unitflag removed'),
(2454701,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2454701,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2454702,0,0,0,0,0,0,0,0,2000001488,0,0,0,0,0,0,0,''),
(2454702,0,0,0,0,0,24742,100,7,2000001487,0,0,0,0,0,0,0,''),
(2454702,1,15,5,0,0,24742,100,7,0,0,0,0,0,0,0,0,''),
(2454703,0,28,3,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SLEEP'),
(2454703,0,4,59,256,0,0,0,0,0,0,0,0,0,0,0,0,'unitflag added'),
(2454703,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2454703,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- in case of his death before script finished
DELETE FROM dbscripts_on_creature_death WHERE id = 24547;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(24547,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(24547,60,41,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'resp');

-- texts
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001487 AND 2000001488;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001487,'Is this how you repay your master, you fleabag?  Arrrrrgghh!!',0,1,0,0,NULL),
(2000001488,'%s devours his master\'s body.',0,2,0,0,NULL);
