-- q.13133 'Find the Ancient Hero'
-- Slumbering Mjordin 30718
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 30718;
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 1000801 WHERE menu_id = 10008;
DELETE FROM dbscripts_on_gossip WHERE id IN (1000801);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1000801,0,45,0,20372,0,0,0,0,0,0,0,0,0,0,0,0,'start random Script');
DELETE FROM dbscript_random_templates WHERE id IN (20372);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20372,1,21041,75,'Slumbering Mjordin 30718 - Random Sscript 1 (q.13133)'),
(20372,1,21042,25,'Slumbering Mjordin 30718 - Random Sscript 2 (q.13133)');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21041 AND 21042;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21041,0,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(21041,1,22,1885,0x01|0x10,0,0,0,0x04,0,0,0,0,0,0,0,0,'faction change'),
(21041,10,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'attack target'),
(21042,0,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(21042,1,22,1885,0x01|0x10,0,0,0,0x04,0,0,0,0,0,0,0,0,'faction change'),
(21042,2,31,30886,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 30886'),
(21042,100,0,0,0,0,0,0,0,31523,0,0,0,0,0,0,0,'say'),
(21042,101,44,30884,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'update template'),
(21042,110,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'attack target');
UPDATE `broadcast_text` SET `ChatTypeID`= 5 WHERE `Id` IN (31523);
-- Iskalder 30884
UPDATE creature_template SET Faction = 1885, MinLevel = 80, MaxLevel = 80, UnitClass = 1, Expansion = 2, DamageMultiplier = 1 WHERE Entry IN (30884);
DELETE FROM spell_script_target WHERE entry IN (3921);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(3921, 1, 30884, 0);
-- Subjugated Iskalder 30886
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, UnitClass = 1, Expansion = 2, UnitFlags = 33544 WHERE Entry IN (30886);
DELETE FROM dbscripts_on_spell WHERE id = 3921;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3921,4000,15,25730,0,0,0,0,4,0,0,0,0,0,0,0,0,''),
(3921,4100,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_relay WHERE id = 21043;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21043,1,31,30232,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 30232'),
(21043,100,15,25729,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kill credit'),
(21043,110,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn Self');
