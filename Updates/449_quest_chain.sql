-- Captain Edward Hanes
DELETE FROM gossip_menu_option WHERE menu_id = 8298;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(8298, 0, 0, 'Can you cast the spell to help me breathe and move underwater?', 1, 3, -1,  8298, 1066);
DELETE FROM dbscripts_on_gossip WHERE id = 8298;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8298, 0, 15, 31319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM conditions WHERE condition_entry IN (1064,1065,1066);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1066, -2, 1065, 1064),
(1065, 9, 9674, 0),
(1064, 9, 9682, 0);

-- q.9674 'The Bloodcursed Naga'
DELETE FROM dbscripts_on_quest_start WHERE id = 9674;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9674, 0, 15, 31319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE quest_template SET StartScript = 9674 WHERE entry = 9674;
-- q.9682 'The Hopeless Ones...'
DELETE FROM dbscripts_on_quest_start WHERE id = 9682;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9682, 0, 15, 31319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE quest_template SET StartScript = 9682 WHERE entry = 9682;
-- q.9683 'Ending the Bloodcurse'
DELETE FROM dbscripts_on_event WHERE id = 11027;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11027,1,9,85566,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(11027,1,9,85567,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(11027,1,9,85568,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(11027,2,9,85569,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(11027,2,9,85570,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(11027,2,9,85571,60,0,0,0,0,0,0,0,0,0,0,0,'respawn gobject'),
(11027,4,10,17715,90000,0,0,0,0,0,0,0,-1901.75,-12863.3,86.9664,3.176499,''),
(11027,5,26,0,0,17715,100,3,0,0,0,0,0,0,0,0,'aggro on player');
-- Statue Fire
UPDATE gameobject SET spawntimesecs = -30 WHERE guid IN (85566,85567,85568,85569,85570,85571);
