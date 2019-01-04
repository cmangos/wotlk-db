-- q.11957 'Saragosa's End'
-- q. item must be removed after complete
UPDATE quest_template SET ReqSourceCount2 = 1 WHERE entry = 11957;

-- Coldarra Invisman
-- missing added - WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid IN (5710685);
DELETE FROM creature_movement WHERE id IN (5710685);
DELETE FROM game_event_creature WHERE guid IN (5710685);
DELETE FROM game_event_creature_data WHERE guid IN (5710685);
DELETE FROM creature_battleground WHERE guid IN (5710685);
DELETE FROM creature_linking WHERE guid IN (5710685)
OR master_guid IN (5710685);
DELETE FROM creature WHERE guid IN (5710685);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(5710685,24771,571,1,1,0,0,4030.92,7327.35,635.973,2.897247,15,15,0,0,4979,0,0,0);

-- target corrected for spell
DELETE FROM spell_script_target WHERE entry = 46793;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(46793, 1, 24771);

-- TEMP Saragosa's Landing
-- range corrected to match spell req.
UPDATE gameobject_template SET data1 = 40 WHERE entry = 300185;

-- Event
DELETE FROM dbscripts_on_event WHERE id = 17452;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17452,0,31,26231,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if buddy found'), -- only one can be summoned in same time
(17452,0,31,26232,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if buddy found'), -- only one can be summoned in same time
(17452,1,10,26231,120000,0,0,0,8,1,0,0,0,3985.616,7160.251,667.5308,1.281183,'summon Saragosa 26231'),
(17452,27,31,26231,100,0,0,0,0,0,0,0,0,0,0,0,0,'terminate if buddy not found'),
(17452,29,10,26232,300000,0,0,0,8,0,0,0,0,4026.49,7297.1,635.971,1.3362,'summon Saragosa 26232'),
(17452,30,26,0,0,0,26232,100,3,0,0,0,0,0,0,0,0,'attack player');

-- Saragosa 26231
UPDATE creature_template SET MovementType = 2 WHERE entry = 26231;
DELETE FROM creature_movement_template WHERE entry = 26231;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(26231,1,3964.744,7130.895,666.9717,0,0,100),
(26231,2,3973.208,7140.034,666.609,0,0,100),
(26231,3,3981.671,7149.173,666.2463,0,0,100),
(26231,4,3989.375,7172.479,669.3846,0,0,100),
(26231,5,3998.89,7199.31,674.7188,0,0,100),
(26231,6,4012.167,7242.467,666.8287,0,6,100),
(26231,7,4020.924,7276.525,652.9682,0,0,100),
(26231,8,4026.488,7297.103,640.2736,20000,2623101,100);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2623101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2623101,1,39,0,0,0,0,0,8,0,0,0,0,0,0,0,0,'Fly OFF'),
(2623101,1,3,0,0,0,0,0,8,0,0,0,0,4026.49,7297.1,635.971,1.3362,''),
(2623101,2,15,46802,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2623101,5,15,66675,1,0,24771,100,7,0,0,0,0,0,0,0,0,''),
(2623101,9,1,15,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2623101,11,15,66675,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
