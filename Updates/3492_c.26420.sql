-- Gavrock 26420
-- gossip script redone
UPDATE gossip_menu_option SET action_script_id = 948501 WHERE menu_id = 9485;
DELETE FROM dbscripts_on_gossip WHERE id IN (9485,948501);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(948501,0,0,0,0,0,0,0,0,2000020887,0,0,0,0,0,0,0,''),
(948501,100,1,35,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(948501,4000,0,0,0,0,0,0,0,2000020888,0,0,0,0,0,0,0,''),
(948501,4100,1,35,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(948501,10000,0,0,0,0,0,0,0,2000020889,0,0,0,0,0,0,0,''),
(948501,10100,1,35,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE dbscript_string SET entry = 2000020887 WHERE entry = 2000000216;
UPDATE dbscript_string SET entry = 2000020888 WHERE entry = 2000000217;
UPDATE dbscript_string SET entry = 2000020889 WHERE entry = 2000000218;
