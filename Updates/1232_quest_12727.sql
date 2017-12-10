-- q.12727 'Bloody Breakout'

-- Koltira Deathweaver - 28912
UPDATE creature_template SET equipmentTemplateid = 0 WHERE Entry = 28912;

-- Koltira Deathweaver - 28447
UPDATE creature_template SET equipmentTemplateid = 448 WHERE Entry = 28447;

-- Crimson Acolyte
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2900701,2900702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2900701,4,22,2103,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,0,0,0,0,'temp faction'),
(2900702,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause');

-- Inquisitor Valroth - update
DELETE FROM dbscripts_on_creature_movement WHERE id = 2900101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2900101,5,22,2103,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,0,0,0,0,'temp faction');

-- make summons active and run
UPDATE dbscripts_on_quest_start SET data_flags = 0x08, dataint = 1 WHERE id = 12727 AND comments IN ('summon Crimson Acolyte','summon High Inquisitor Valroth');
