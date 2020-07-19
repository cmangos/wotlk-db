-- q.12132 'The Power to Destroy'

-- quest becomes available after 3 quests completed
-- q.12125 'In Service of Blood'
-- q.12126 'In Service of the Unholy'
-- q.12127 'In Service of Frost'
DELETE FROM conditions WHERE condition_entry BETWEEN 20062 AND 20065;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20062, 8, 12125, 0, 0, 0, 0),
(20063, 8, 12126, 0, 0, 0, 0),
(20064, 8, 12127, 0, 0, 0, 0),
(20065, -1, 20064, 20063, 20062, 0, 0);
UPDATE quest_template SET RequiredCondition = 20065 WHERE entry = 12132;

-- Koltira Deathweaver 26581
-- missin gossip option added
DELETE FROM gossip_menu_option WHERE menu_id=9456 AND id=0;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(9456, 0, 0, 'I must return to the world of shadows, Koltira. Send me back.', 1, 1, -1, 0, 945601, 0, 0, NULL, 20066);
DELETE FROM dbscripts_on_gossip WHERE id=945601;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(945601, 0, 15, 47740, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Koltira Deathweaver - Cast 47740');
DELETE FROM conditions WHERE condition_entry = 20066;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20066, 9, 12132, 0, 0, 0, 0);

-- Shadowy Tormentor 26966
-- All Redone
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26966);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 26966);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 26966);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 26966);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 26966);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 26966)
OR master_guid IN (SELECT guid FROM creature WHERE id = 26966);
DELETE FROM creature WHERE id = 26966;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5714059,26966,571,1,32,0,0,3838.06,1585.61,86.6985,3.60103,180,180,7,0,9610,3309,0,1),
(5714060,26966,571,1,32,0,0,3802.44,1531.54,89.0491,1.62575,180,180,7,0,9610,3309,0,1),
(5714061,26966,571,1,32,0,0,3776.78,1534.78,87.0348,0.373033,180,180,7,0,9610,3309,0,1),
(5714062,26966,571,1,32,0,0,3879.03,1591.5,91.0299,0.0942196,180,180,7,0,9610,3309,0,1),
(5714063,26966,571,1,32,0,0,3863.37,1619.86,90.2741,0.848202,180,180,7,0,9610,3309,0,1),
(5714064,26966,571,1,32,0,0,3782.93,1608.35,87.0748,1.20163,180,180,7,0,9610,3309,0,1),
(5714065,26966,571,1,32,0,0,3757.04,1579.51,87.0298,0.573305,180,180,7,0,9610,3309,0,1),
(5714066,26966,571,1,32,0,0,3858.46,1549.97,89.7232,6.18104,180,180,7,0,9610,3309,0,1),
(5714067,26966,571,1,32,0,0,3867.1,1528.5,89.9272,5.00687,180,180,7,0,9610,3309,0,1),
(5714068,26966,571,1,32,0,0,3841.29,1523.85,90.7812,4.84194,180,180,7,0,9610,3309,0,1),
(5714069,26966,571,1,32,0,0,3865.94,1499.56,92.0609,2.20685,180,180,7,0,9610,3309,0,1),
(5714070,26966,571,1,32,0,0,3799.82,1669.31,112.696,1.16854,180,180,7,0,9610,3309,0,1),
(5714071,26966,571,1,32,0,0,3766.39,1617.01,118.525,5.86915,180,180,7,0,9610,3309,0,1),
(5714072,26966,571,1,32,0,0,3763.15,1619.16,87.4749,5.9422,180,180,7,0,9610,3309,0,1),
(5714073,26966,571,1,32,0,0,3819.34,1503.43,92.0609,3.7957,180,180,7,0,9610,3309,0,1),
(5714074,26966,571,1,32,0,0,3820.28,1500.72,110.745,5.50394,180,180,7,0,9610,3309,0,1),
(5714075,26966,571,1,32,0,0,3845.31,1477.34,137.231,5.50394,180,180,7,0,9610,3309,0,1),
(5714076,26966,571,1,32,0,0,3834.03,1473.98,92.0501,1.52353,180,180,7,0,9610,3309,0,1),
(5714077,26966,571,1,32,0,0,3854.86,1470.98,92.0525,5.28951,180,180,7,0,9610,3309,0,1),
(5714078,26966,571,1,32,0,0,3821.14,1456.81,110.762,5.43088,180,180,7,0,9610,3309,0,1),
(5714079,26966,571,1,32,0,0,3864.46,1457.7,110.762,2.4071,180,180,7,0,9610,3309,0,1),
(5714080,26966,571,1,32,0,0,3865.21,1499.84,110.762,3.91909,180,180,7,0,9610,3309,0,1);
