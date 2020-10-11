-- q.12047 'Something That Doesn't Melt'
DELETE FROM dbscripts_on_quest_end WHERE id = 12047;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12047,1,31,26677,10,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26677'),
(12047,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12047,100,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.710423,''),
(12047,1000,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(12047,2000,20,2,0,0,26677,20,7,0,0,0,0,0,0,0,0,''),
(12047,6000,0,0,0,0,0,0,0,2000020516,0,0,0,0,0,0,0,''),
(12047,8000,3,0,0,0,0,0,0,0,0,0,0,4722.663,546.1859,129.7407,100,''),
(12047,18000,0,0,0,0,0,0,0,2000020517,0,0,0,0,0,0,0,''),
(12047,19000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0.6283185,''),
(12047,27000,0,0,0,0,0,0,0,2000020518,0,0,0,0,0,0,0,''),
(12047,28000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run ON'),
(12047,30000,3,0,0,0,0,0,0,0,0,0,0,4705.63,559.054,124.112,100,''),
(12047,34000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,4.06662,''),
(12047,34400,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run OFF'),
(12047,34500,0,0,0,0,0,0,0,2000020519,0,0,0,0,0,0,0,''),
(12047,35000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 12047 WHERE entry = 12047;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020516 AND 2000020519;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020516,'The control components are working perfectly this time!',0,0,0,0,NULL),
(2000020517,'Who to test the bomb on?  The Harpies?  Ha ha... wait... what\'s that?',0,0,0,0,NULL),
(2000020518,'NO!  My machine... my bombs!  THAT\'S IT!  Those Harpies are going DOWN!',0,0,0,5,NULL),
(2000020519,'Talk to Narf.  Lets take care of those bird-brains once and for all.',0,0,0,0,NULL);

-- Mistress of the Coldwind 26890
UPDATE creature_template SET InhabitType = 4 WHERE entry = 26890;
-- removed - shes summoned
DELETE FROM creature_addon WHERE guid=515999;
DELETE FROM creature_movement WHERE id=515999;
DELETE FROM game_event_creature WHERE guid=515999;
DELETE FROM game_event_creature_data WHERE guid=515999;
DELETE FROM creature_battleground WHERE guid=515999;
DELETE FROM creature_linking WHERE guid=515999
 OR master_guid=515999;
DELETE FROM creature WHERE guid=515999;

-- Zivlix's Destruction Machine 26677
UPDATE creature_template SET InhabitType = 1, MovementType = 2 WHERE Entry = 26677;
UPDATE creature SET spawntimesecsmin = 15, spawntimesecsmax = 15 WHERE id = 26677;
DELETE FROM creature_movement_template WHERE entry = 26677;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26677,1,4705.114,562.1059,123.5577,100,2000,2667701),
(26677,2,4697.046,567.007,124.5144,100,0,0),
(26677,3,4664.82,589.2839,126.2644,100,0,0),
(26677,4,4667.397,615.4627,127.2089,100,0,0),
(26677,5,4699.403,623.2688,130.9311,100,0,0),
(26677,6,4729.83,593.533,130.2292,100,0,0),
(26677,7,4736.569,546.0275,135.1181,100,0,0),
(26677,8,4729.252,502.6678,133.4237,100,0,0),
(26677,9,4752.534,475.1504,137.7292,100,0,0),
(26677,10,4785.31,485.7249,144.8403,100,0,0),
(26677,11,4788.394,514.8828,139.3682,100,0,2667702),
(26677,12,4773.589,557.9219,143.4515,100,0,0),
(26677,13,4751.125,580.1249,144.9238,100,0,0),
(26677,14,4734.583,613.5748,163.5244,100,0,0),
(26677,15,4730.062,667.8398,143.5737,100,0,0),
(26677,16,4754.887,685.1636,123.7125,100,3000,2667703);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2667701 AND 2667703;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2667701,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2667701,5,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Fly on'),
(2667701,100,1,254,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2667702,0,10,26890,10000,0,0,0,0,0,0,0,0,4770.538,592.455,150.5941,3.761452,''),
(2667703,10,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Fly OFF'),
(2667703,900,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2667703,1000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
