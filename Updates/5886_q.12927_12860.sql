-- q.12927 'Data Mining' - H
-- q.12860 'Data Mining' - A
DELETE FROM dbscripts_on_relay WHERE id IN (21272);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21272,1,41,0,0,0,29746,5,1|0x40,0,0,0,0,0,0,0,0,'resp buddy');
DELETE FROM spell_script_target WHERE entry IN (55161);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(55161, 1, 29752, 0);
