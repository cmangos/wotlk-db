-- q.12971 'Taking on All Challengers'
-- Victorious Challenger 30012
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id IN (30012);
UPDATE creature_template SET ExtraFlags = 1048576 WHERE entry = 30012;
UPDATE gossip_menu_option SET option_broadcast_text = 30665, action_menu_id = 0, action_script_id  = 986501 WHERE menu_id = 9865;
DELETE FROM dbscripts_on_gossip WHERE id IN (9865,986501);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(986501,0,15,55716,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 55716'),
(986501,52,0,0,0,0,0,0,0,30808,30809,30810,30811,0,0,0,0,'Random Say'),
(986501,75,29,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'remove NpcFlag'),
(986501,76,22,14,0x01|0x02,0,0,0,0x004,0,0,0,0,0,0,0,0,'temp Faction'),
(986501,80,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'attack Player');
DELETE FROM dbscripts_on_relay WHERE id IN (21240);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21240,0,29,1,1,0,0,0,0x004,0,0,0,0,0,0,0,0,'Set NpcFlags = 1');
