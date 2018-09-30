-- q.11253 'Sniff Out the Enemy'

-- q item must be removed after q. completed
UPDATE quest_template SET ReqSourceCount1 = 1 WHERE entry = 11253;

-- Missing added - WoTLKDB FREE guids used
DELETE FROM gameobject WHERE guid = 15125;
DELETE FROM game_event_gameobject WHERE guid = 15125;
DELETE FROM gameobject_battleground WHERE guid = 15125;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(15125, 300166, 571, 1, 1, 1862.02,-6184.39,25.2394,2.24799, 0, 0, 0.512574, 0.858643, 300, 300, 0, 1);

-- Plaguehound Tracker
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096, MovementType = 2 WHERE Entry = 24156; -- wont stop movement if player decide not fo follow him
DELETE FROM creature_movement_template WHERE entry = 24156;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(24156,1,1860.67,-6181.49,24.4529,0,0,1.91535),
(24156,2,1867.4,-6174.74,24.0396,0,0,0.068096),
(24156,3,1878.91,-6171.04,23.8547,0,0,0.650858),
(24156,4,1883.01,-6168.53,23.7649,0,0,6.27431),
(24156,5,1891.14,-6168.5,23.7235,0,0,6.11723),
(24156,6,1899.65,-6170.57,23.6586,0,0,6.25311),
(24156,7,1908.06,-6170.44,23.6803,0,0,5.61851),
(24156,8,1911.27,-6173.19,24.0866,10000,2415601,5.36875),
(24156,9,1930.91,-6177,24.3168,0,0,6.04419),
(24156,10,1954.76,-6182.63,24.1432,0,0,6.20205),
(24156,11,1987.13,-6178.86,23.131,0,0,0.180403),
(24156,12,2006.38,-6170.3,15.3212,0,0,0.743533),
(24156,13,2009.97,-6164.83,15.7361,0,0,0.990148),
(24156,14,2014.19,-6158.24,13.2915,0,0,1.4229),
(24156,15,2013.73,-6145.65,7.8703,0,0,1.59491),
(24156,16,2041.4,-6116.02,4.79356,0,0,0.255833),
(24156,17,2058.39,-6112.69,5.85019,0,0,0.216563),
(24156,18,2086.18,-6103.4,6.93077,0,0,0.307331),
(24156,19,2098.62,-6101.4,4.95018,0,0,0.146324),
(24156,20,2114.68,-6098.66,5.20728,0,0,6.1075),
(24156,21,2126.52,-6101.74,6.62395,0,0,6.03164),
(24156,22,2159.06,-6109.57,3.01272,0,0,0.033554),
(24156,23,2201.07,-6110.33,1.05585,0,0,0.474945),
(24156,24,2225.83,-6096.46,0.541609,0,0,0.946185),
(24156,25,2238.62,-6077.75,2.62115,0,0,0.781251),
(24156,26,2258.13,-6060.8,1.93668,0,0,0.553485),
(24156,27,2267.67,-6056.66,1.2167,0,0,0.396405),
(24156,28,2287.67,-6048.15,1.24615,0,0,0.423894),
(24156,29,2307.23,-6024.91,2.63326,0,0,2.09352),
(24156,30,2306.47,-6023.57,2.82203,10000,2415602,2.13279),
(24156,31,2299.93,-6026.67,2.35618,0,0,3.97691),
(24156,32,2289.84,-6040.9,2.20458,0,0,3.79234),
(24156,33,2267.99,-6056.47,1.22536,2000,1,3.76485);

-- Script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2415601,2415602);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2415601,3,0,0,0,0,0,0,0,2000001455,0,0,0,0,0,0,0,''),
(2415601,4,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2415602,5,0,0,0,0,0,0,0,2000001456,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry IN (2000001455,2000001456);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001455,'The hound appears to pick up a scent from the north and prepares to sprint to its source.',0,2,0,0,''),
(2000001456,'Upon reaching its destination the hound becomes startled by noise up ahead and appears ready to flee.',0,2,0,0,'');
