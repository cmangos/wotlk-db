-- q.12276 'The Search for Slinkin'
DELETE FROM dbscripts_on_event WHERE id = 17970;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17970,0,31,27159,30,0,0,0,0,0,0,0,0,0,0,0,0,''),
(17970,100,0,0,0,0,27159,40,3,2000020560,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry = 2000020560;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020560,'The bot will adjust its speed to match your own. I would suggest you mount up to speed things along. By the way, the bot was put together with salvaged components from a pile of scrap metal delivered to me from Outland. There were some side effects.',0,4,0,0,NULL);

-- Quarterflash's Homing Bot 27433
UPDATE creature_template SET MinLevel = 71, MaxLevel = 73, UnitFlags = 776, MovementType = 2 WHERE entry = 27433;
DELETE FROM creature_movement_template WHERE entry = 27433;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27433,1,3695.28,-735.268,213.13,5.85703,10000,9),
(27433,2,3712.96,-742.872,208.515,100,0,0),
(27433,3,3735.19,-753.417,199.502,100,0,0),
(27433,4,3756.48,-766.044,196.764,100,0,0),
(27433,5,3782.529,-774.4757,196.087,100,0,0),
(27433,6,3875.96,-746.768,221.194,100,0,0),
(27433,7,3884.62,-739.822,226.383,100,0,0),
(27433,8,3890.94,-730.842,232.289,100,0,0),
(27433,9,3897.19,-725.577,236.879,100,0,0),
(27433,10,3904.92,-722.985,240.322,100,0,0),
(27433,11,3914.09,-731.126,241.448,100,0,0),
(27433,12,3919.6,-748.865,240.947,100,0,0),
(27433,13,3925.59,-759.829,240.729,100,0,0),
(27433,14,3939.98,-768.995,242.121,100,0,0),
(27433,15,3942.6,-777.446,244.268,100,0,0),
(27433,16,3947.69,-786.381,244.441,100,0,0),
(27433,17,3954.64,-798.419,243.08,100,0,0),
(27433,18,3962.05,-809.619,240.894,100,0,0),
(27433,19,3968.44,-820.094,239.874,100,0,0),
(27433,20,3971.89,-830.509,240.097,100,0,0),
(27433,21,3972.44,-840.063,238.429,100,0,0),
(27433,22,3973.68,-852.034,233.625,100,0,0),
(27433,23,3974.01,-862.894,227.099,100,0,0),
(27433,24,3973.48,-881.696,217.625,100,0,0),
(27433,25,3973.33,-899.224,209.623,100,0,0),
(27433,26,3972.4,-911.929,204.917,100,0,0),
(27433,27,3971.53,-921.347,202.518,100,0,0),
(27433,28,3959.51,-928.113,199.354,100,0,0),
(27433,29,3950.66,-928.066,198.415,100,0,0),
(27433,30,3946.88,-924.452,196.8,100,0,0),
(27433,31,3945.35,-914.517,191.051,100,0,0),
(27433,32,3943.24,-905.295,184.58,100,0,0),
(27433,33,3940.68,-891.636,178.789,100,0,0),
(27433,34,3941.15,-882.538,176.364,100,0,0),
(27433,35,3942.25,-869.85,171.365,100,0,0),
(27433,36,3942.08,-859.599,168.183,100,0,0),
(27433,37,3939.28,-848.624,164.49,100,0,0),
(27433,38,3929.62,-843.659,161.883,100,0,0),
(27433,39,3922.28,-842.411,160.965,100,0,0),
(27433,40,3917.09,-843.139,159.469,100,0,0),
(27433,41,3909.01,-847.831,154.179,100,0,0),
(27433,42,3900.53,-850.774,149.825,100,0,0),
(27433,43,3893.6,-851.79,145.098,100,0,0),
(27433,44,3882.08,-852.885,135.455,100,0,0),
(27433,45,3873.35,-854.967,127.598,100,0,0),
(27433,46,3863.06,-861.397,119.891,100,0,0),
(27433,47,3857.26,-869.459,116.262,100,0,0),
(27433,48,3855.87,-880.8448,114.3868,100,10000,2743301);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2743301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2743301,2000,0,0,0,0,0,0,0,2000020563,0,0,0,0,0,0,0,''),
(2743301,5000,0,0,0,0,0,0,0,2000020564,0,0,0,0,0,0,0,''),
(2743301,9000,15,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2743301,9100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Part of Quarterflash\'s Homing Bot EAI
DELETE FROM dbscripts_on_relay WHERE id = 20389;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20389,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Quarterflash\'s Homing Bot EAI: Run ON'),
(20389,5000,0,0,0,0,0,0,0,2000020561,0,0,0,0,0,0,0,'Part of Quarterflash\'s Homing Bot EAI: say 1'),
(20389,8000,0,0,0,0,0,0,0,2000020562,0,0,0,0,0,0,0,'Part of Quarterflash\'s Homing Bot EAI: say 2');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020561 AND 2000020564;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020561,'Trajectory locked.',11347,0,0,0,NULL),
(2000020562,'Engage maximum speed.',11348,0,0,0,NULL),
(2000020563,'Directive accomplished.',11350,0,0,0,NULL),
(2000020564,'System failure in five, f-o-u-r...',11352,0,0,0,NULL);
