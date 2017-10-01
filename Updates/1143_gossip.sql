-- Implement lost spectrecles gossip 
DELETE FROM npc_gossip WHERE npc_guid IN(SELECT guid FROM creature WHERE id IN(21772,21774));
DELETE FROM gossip_menu WHERE entry IN(8392,8410);
INSERT INTO gossip_menu VALUES('8392', '10491', '0', '0');
INSERT INTO gossip_menu VALUES('8410', '10460', '0', '0');

UPDATE npc_text SET text0_0='I''m extremely busy, $r.$B$BWe have a terrible problem on our hands that must be dealt with at once!' WHERE id=10460;

UPDATE creature_template SET GossipMenuId=8410 WHERE entry=21772;
UPDATE creature_template SET GossipMenuId=8392 WHERE entry=21774;

DELETE FROM conditions WHERE condition_entry IN(1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1285,9,10625,0), -- horde
(1286,9,10643,0), -- ally
(1287,16,30719,1), -- first tier spectrecles
(1288,-1,1285,1287), -- on first quest if lost spectrecles horde
(1289,-1,1286,1287), -- on first quest if lost spectrecles alliance
(1290,9,10633,0), -- horde
(1291,9,10644,0), -- ally
(1292,8,10633,0),
(1293,8,10644,0),
(1294,-2,1290,1292),
(1295,-2,1291,1293),
(1296,16,30721,1), -- second tier spectrecles
(1297,-1,1294,1296), -- horde
(1298,-1,1295,1296); -- ally

DELETE FROM gossip_menu_option WHERE menu_id IN(8392,8410);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(8392,0,0,'Have you lost your Spectrecles?',1,1,-1,8392,1289),
(8392,1,0,'Have you lost your Spectrecles?',1,1,-1,8410,1298),
(8410,0,0,'Have you lost your Spectrecles?',1,1,-1,8392,1288),
(8410,1,0,'Have you lost your Spectrecles?',1,1,-1,8410,1297);

DELETE FROM dbscripts_on_gossip WHERE id IN(8392,8410);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8392,0,15,37602,0,0,0,0,0,0,0,0,0,0,0,0,0,'Replace lost spectrecles'),
(8410,0,15,37700,0,0,0,0,0,0,0,0,0,0,0,0,0,'Replace lost spectrecles');
