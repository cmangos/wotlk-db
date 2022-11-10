-- q.11711 'Coward Delivery... Under 30 Minutes or it's Free' - UPDATE
DELETE FROM dbscripts_on_quest_start WHERE id = 11711;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11711,1,14,45975,0,0,0,0,0,0,0,0,0,0,0,0,0,'remove from player in case if he has one already'),
(11711,100,15,45975,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast on player');
UPDATE quest_template SET StartScript = 11711 WHERE entry = 11711;
DELETE FROM dbscripts_on_gossip WHERE id = 918401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(918401,1,14,45975,0,0,0,0,0,0,0,0,0,0,0,0,0,'remove from player in case if he has one already'),
(918401,100,15,45975,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast on player');
DELETE FROM dbscripts_on_spell WHERE id IN (45958,45981);
INSERT INTO dbscripts_on_spell (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(45981,10,18,0,0,0,25761,100,39,0,0,0,0,0,0,0,0,''),
(45981,101,14,45963,0,0,0,0,0,0,0,0,0,0,0,0,0,'remove aura from player'),
(45981,200,14,45957,0,0,0,0,0,0,0,0,0,0,0,0,0,'remove aura from player');
DELETE FROM dbscripts_on_relay WHERE id IN (20668);
INSERT INTO dbscripts_on_relay (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(20668,1,34,20513,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Valiance Keep Officer 25759 EAI: terminate on condition'),
(20668,100,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Valiance Keep Officer 25759 EAI: despawn source');
DELETE FROM conditions WHERE condition_entry = 20513;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20513,1,45957,0);
-- Alliance Deserte 25761
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25761);
DELETE FROM creature_template_addon WHERE entry = 25761;
