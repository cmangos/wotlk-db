-- Boulder Hills - Grizzly Hills

-- Thor Modan Mole Machine Trap 188459 - missing object added
DELETE FROM gameobject_template WHERE entry = 188459;
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, faction, flags, ExtraFlags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, CustomData1, mingold, maxgold, ScriptName) VALUES
('188459','6','0','Thor Modan Mole Machine Trap','','','0','0','0','0.75','0','0','0','47387','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');

-- Thor Modan Mole Machine 188460 -- summoned from spell
DELETE FROM game_event_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE id = 188460);
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM gameobject WHERE id = 188460);
DELETE FROM gameobject WHERE id = 188460;

-- Iron Rune Avenger 26786 - theyre summoned
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26786);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 26786);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 26786);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 26786);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 26786);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 26786)
OR master_guid IN (SELECT guid FROM creature WHERE id = 26786);
DELETE FROM creature WHERE id = 26786;

-- Runed Giant 26417
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 26417;

-- Grizzly Hills Giant 26261
-- Duplicates
DELETE FROM creature_addon WHERE guid IN (512589,512617,512594,512614,512591,512596,512602,512593);
DELETE FROM creature_movement WHERE id IN (512589,512617,512594,512614,512591,512596,512602,512593);
DELETE FROM game_event_creature WHERE guid IN (512589,512617,512594,512614,512591,512596,512602,512593);
DELETE FROM game_event_creature_data WHERE guid IN (512589,512617,512594,512614,512591,512596,512602,512593);
DELETE FROM creature_battleground WHERE guid IN (512589,512617,512594,512614,512591,512596,512602,512593);
DELETE FROM creature_linking WHERE guid IN (512589,512617,512594,512614,512591,512596,512602,512593)
 OR master_guid IN (512589,512617,512594,512614,512591,512596,512602,512593);
DELETE FROM creature WHERE guid IN (512589,512617,512594,512614,512591,512596,512602,512593);
-- updates
UPDATE creature SET position_x = 5132.725098, position_y = -4785.223633, position_z = 293.671814, orientation = 0.761828 WHERE guid = 512613;
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 26261;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (512600,512610,512612,512613,512615,512616);
DELETE FROM creature_movement WHERE id IN (512600,512610,512612,512613,512615,512616);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 512600
(512600,1,5064.66,-4682.07,287.521,0.15708,1000,2626101),
(512600,3,5082.7,-4663.03,287.621,100,0,0),
(512600,4,5099.97,-4658.41,288.045,100,0,0),
(512600,5,5122.64,-4658.81,287.091,100,0,0),
(512600,6,5134.45,-4654.33,286.952,100,0,0),
(512600,7,5146.39,-4644.38,287.132,100,0,0),
(512600,8,5150.08,-4633.12,286.533,100,100,20),
-- 512610
(512610,1,5297.76,-4862.49,302.517,1.39216,1000,2626101),
(512610,2,5300.93,-4844.31,301.793,100,0,0),
(512610,3,5299.45,-4826.4,300.221,100,100,20),
-- 512612
(512612,1,5239.44,-4850.56,299.481,1.32585,1000,2626101),
(512612,2,5247.63,-4831.12,300.567,100,0,0),
(512612,3,5254.76,-4811.41,298.966,100,0,0),
(512612,4,5258.77,-4798,299.153,100,0,0),
(512612,5,5275.65,-4776.35,297.6,100,100,20),
-- 512613
(512613,1,5132.725098,-4785.223633,293.671814,0.761828,1000,2626101),
(512613,2,5156.14,-4770.45,294.328,100,0,0),
(512613,3,5171.98,-4757.27,294.376,100,0,0),
(512613,4,5194.95,-4744.81,294.553,100,0,0),
(512613,5,5213.86,-4725.33,293.844,100,100,20),
-- 512615
(512615,1,5180.57,-4861.61,297.629,1.20428,1000,2626101),
(512615,2,5188.57,-4843.87,297.392,100,0,0),
(512615,3,5197.05,-4829.08,295.857,100,0,0),
(512615,4,5207.3,-4814.72,294.115,100,100,20),
-- 512616
(512616,1,5082.64,-4724.19,287.5,0.321751,1000,2626101),
(512616,2,5112.79,-4713.87,287.755,100,0,0),
(512616,3,5126.01,-4711.49,289.585,100,0,0),
(512616,4,5136.7,-4708.59,290.502,100,0,0),
(512616,5,5153.04,-4700.78,289.044,100,0,0),
(512616,6,5170.43,-4694.82,288.438,100,100,20);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2626101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2626101,10,35,6,0,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event AI 6'),
(2626101,100,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON');
DELETE FROM dbscripts_on_relay WHERE id IN (20565,20566);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20565,0,31,26417,140,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26417'),
(20565,10,15,47320,0,0,26417,150,1,0,0,0,0,0,0,0,0,'cast Toss Boulder 2'),
(20566,5000,15,47387,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
