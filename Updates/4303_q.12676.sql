-- q.12676 'Sabotage'
UPDATE broadcast_text SET ChatTypeID = 2 WHERE `Id` BETWEEN 28816 AND 28820;
DELETE FROM dbscripts_on_spell WHERE id = 52322;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52322,1,40,0,0,0,190731,30,7,0,0,0,0,0,0,0,0,''),
(52322,2,40,0,0,0,190732,30,7,0,0,0,0,0,0,0,0,''),
(52322,10,15,52324,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(52322,100,15,52335,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,101,15,52325,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,102,15,52330,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,103,15,52332,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,104,15,52332,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,105,15,52332,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,106,15,52332,0,0,28778,30,7,0,0,0,0,0,0,0,0,''),
(52322,107,18,0,0,0,28778,30,7,0,0,0,0,0,0,0,0,'');
-- Scourgewagon Bunny 28778
-- missing added
DELETE FROM creature_addon WHERE guid IN (523087,523091,523093,523096);
DELETE FROM creature_movement WHERE id IN (523087,523091,523093,523096);
DELETE FROM game_event_creature WHERE guid IN (523087,523091,523093,523096);
DELETE FROM game_event_creature_data WHERE guid IN (523087,523091,523093,523096);
DELETE FROM creature_battleground WHERE guid IN (523087,523091,523093,523096);
DELETE FROM creature_linking WHERE guid IN (523087,523091,523093,523096)
 OR master_guid IN (523087,523091,523093,523096);
DELETE FROM creature WHERE guid IN (523087,523091,523093,523096);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(523087,28778,571,1,1,0,0,6197.426,-2173.221,235.5354,5.253441,120,120,0,0,0,0,0,0),
(523091,28778,571,1,1,0,0,5955.15,-2026.29,240.2237,5.078908,120,120,0,0,0,0,0,0),
(523093,28778,571,1,1,0,0,6058.623,-2026.97,235.5104,1.012291,120,120,0,0,0,0,0,0),
(523096,28778,571,1,1,0,0,6151.271,-2077.621,235.2416,1.169371,120,120,0,0,0,0,0,0);
UPDATE creature SET spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 28778;
DELETE FROM dbscripts_on_relay WHERE id = 20638;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20638,1,9,0,0,0,190731,30,7,0,0,0,0,0,0,0,0,'');
-- Scourgewagon 190731
-- missing added
DELETE FROM gameobject WHERE guid BETWEEN 520960 AND 520964;
INSERT INTO gameobject (`guid`, `id`, `map`, `spawnMask`, `phasemask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(520960,190731,571,1,1,5956.584,-2024.938,240.278,2.373644,0,0,0.9271832,0.3746083,300,300,100,1),
(520961,190731,571,1,1,6196.577,-2173.523,235.5564,0.3665176,0,0,0.1822348,0.983255,300,300,100,1),
(520962,190731,571,1,1,6153.656,-2076.119,235.1153,-2.234018,0,0,-0.8987932,0.4383728,300,300,100,1),
(520963,190731,571,1,1,6058.734,-2026.155,235.4405,2.897245,0,0,0.9925461,0.12187,300,300,100,1);
