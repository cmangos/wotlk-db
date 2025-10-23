-- q.12862 'When All Else Fails' - A
-- q.13060 'When All Else Fails' - H

-- Ricket 29428
-- gossip transport fixed
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 991701 WHERE menu_id = 9917 AND id = 0; -- A
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 991702 WHERE menu_id = 9917 AND id = 1; -- H
DELETE FROM dbscripts_on_gossip WHERE id IN (991701,991702);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(991701,0,15,58061,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 58061 on Player'),
(991702,0,15,58062,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 58062 on Player');
DELETE FROM spell_target_position WHERE Id IN(56859,56899);
INSERT INTO spell_target_position VALUES
(56859,571,6147.5205,-1069.0864,402.67035,100),
(56899,571,6147.5205,-1069.0864,402.67035,100);
-- D16 Propelled Delivery Device 30477
UPDATE creature_template SET UnitFlags = 512, StaticFlags2 = 1024, InhabitType = 3, MovementTemplateId = 144, VehicleTemplateId = 240, MovementType = 0 WHERE entry = 30477;
DELETE FROM creature_movement_template WHERE Entry = 30477;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30477,1,6147.5205,-1069.0864,402.67035,100,0,0),
(30477,2,6148.49,-1069.33,402.67035,100,0,0),
(30477,3,6164.999,-1064.5122,422.1189,100,0,0),
(30477,4,6204.096,-998.4872,457.5628,100,0,0),
(30477,5,6289.5728,-952.1809,504.6187,100,0,0),
(30477,6,6307.7876,-872.7999,541.7296,100,0,0),
(30477,7,6370.5815,-821.95074,653.868,100,0,0),
(30477,8,6413.268,-660.4708,808.39526,100,0,0),
(30477,9,6554.8135,-550.3772,1018.1122,100,0,0),
(30477,10,6633.2646,-419.31586,1173.9137,100,0,0),
(30477,11,6760.5034,-364.46646,1277.7195,100,0,0),
(30477,12,6807.88,-427.51944,1399.109,100,0,0),
(30477,13,6808.07,-471.4465,1419.2474,100,0,0),
(30477,14,6775.634,-529.2309,1394.3866,100,0,0),
(30477,15,6720.6445,-535.55286,1328.0541,100,0,0),
(30477,16,6660.3096,-486.86514,1238.5532,100,0,0),
(30477,17,6658.9365,-417.84094,1186.1096,100,0,0),
(30477,18,6680.4897,-329.30872,1098.6091,100,0,0),
(30477,19,6683.783,-220.34538,972.72034,100,0,0),
(30477,20,6663.772,-192.12614,962.2485,100,100,3048701),
(30477,21,6654.82,-180.16895,958.13165,100,0,0),
(30477,22,6631.4673,-171.33052,966.46326,100,0,0),
(30477,23,6598.2227,-162.36642,984.2227,100,0,0),
(30477,24,6566.6704,-155.20769,992.0551,100,0,0),
(30477,25,6529.6514,-154.93631,992.0551,100,0,0),
(30477,26,6454.4165,-152.13107,962.305,100,100,1);
-- D16 Propelled Delivery Device 30487
UPDATE creature_template SET UnitFlags = 512, StaticFlags2 = 1024, InhabitType = 3, MovementTemplateId = 144, VehicleTemplateId = 240, MovementType = 0 WHERE entry = 30487;
DELETE FROM creature_movement_template WHERE Entry = 30487;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30487,1,6169.229,-1069.619,420.69446,100,0,0),
(30487,2,6232.725,-1031.5977,505.7779,100,0,0),
(30487,3,6339.224,-1035.0797,575.3331,100,0,0),
(30487,4,6431.492,-987.6745,694.8887,100,0,0),
(30487,5,6632.437,-925.97394,896.1384,100,0,0),
(30487,6,6822.084,-755.521,1171.1941,100,0,0),
(30487,7,7090.693,-619.48737,1455.6394,100,0,0),
(30487,8,7260.7495,-282.75003,1513.3616,100,0,0),
(30487,9,7552.5024,-334.65088,1657.6676,100,0,0),
(30487,10,7692.3013,-509.42502,1536.5002,100,0,0),
(30487,11,7799.192,-636.3267,1252.2778,100,0,0),
(30487,12,7841.5547,-726.5501,1193.9164,100,0,0),
(30487,13,7844.731,-775.36127,1185.8333,100,100,3048701),
(30487,14,7842.4487,-815.5735,1186.3956,100,0,0),
(30487,15,7838.703,-859.95715,1173.1735,100,0,0),
(30487,16,7865.014,-911.2181,1163.9792,100,0,0),
(30487,17,7856.225,-951.6568,1151.5625,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3048701);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3048701,0,1,14,46598,0,0,0,0,0x004,0,0,0,0,0,0,0,0,''),
(3048701,0,2,15,42895,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
