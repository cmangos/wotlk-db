-- q.11232 'Guide Our Sights'
-- Westguard Cannon Credit Trigger Focus
-- spell targets shouldnt move
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (109924,111310);
DELETE FROM spell_script_target WHERE entry IN (43078,43080);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(43078,1,23957,0),
(43078,1,23972,0),
(43080,0,186391,0);

-- Part of Westguard Cannon Credit Trigger EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20151);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20151,2,31,23805,201,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20151,3,15,43078,0,0,23805,200,3,0,0,0,0,0,0,0,0,'');

-- Westguard Cannon
UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 186391;
UPDATE gameobject_template SET data5 = 1 WHERE entry = 186391; -- must desp after explosion
DELETE FROM dbscripts_on_go_template_use WHERE id = 186391;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(186391,0,40,0,0,0,0,0,0x04,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_spell WHERE id IN (43080);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(43080,1,15,43081,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(43080,1,15,43082,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
