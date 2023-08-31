-- q.12592 'The Great Hunter's Challenge'
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, UnitFlags = 520, EquipmentTemplateId = 2537 WHERE  entry = 28857;
DELETE FROM creature_equip_template WHERE entry = 2537;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2537, 0, 0, 33427);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28857);
DELETE FROM creature_template_addon WHERE entry IN (28857);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(28857,0,0,2,0,0,0,NULL);
DELETE FROM dbscripts_on_quest_start WHERE id IN (12592);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12592,0,0,0,0,0,0,0,0,29924,0,0,0,0,0,0,0,'say'),
(12592,0,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote');
UPDATE quest_template SET StartScript = 12592 WHERE entry IN (12592);
-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (52585);
DELETE FROM dbscripts_on_spell WHERE id BETWEEN 52725 AND 52731;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 52585
(52585,1,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'face Source'),
(52585,10,0,0,0,0,0,0,6,28983,28984,28985,28986,0,0,0,0,'Cue Drostan Response Set 1'),
(52585,11,1,5,0,0,0,0,6,0,0,0,0,0,0,0,0,'emote'),
(52585,12,25,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'RUN ON'),
(52585,4000,3,0,0,0,0,0,6,0,0,0,0,5547.88,5749.37,-77.6656,0,'move'),
(52585,6000,18,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'despawn Self'),
-- 52725
(52725,1,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'face Source'),
(52725,0,0,0,0,0,0,0,2,29080,29081,29082,29083,0,0,0,0,'Cue Drostan Response Set 2'),
(52725,11,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'emote'),
(52725,12,25,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'RUN ON'),
(52725,4000,3,0,0,0,0,0,6,0,0,0,0,5547.88,5749.37,-77.6656,0,'move'),
(52725,6000,18,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'despawn Self'),
-- 52726
(52726,1,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'face Source'),
(52726,0,0,0,0,0,0,0,6,29084,29091,29092,29093,0,0,0,0,'Cue Drostan Response Set 3'),
(52726,11,1,5,0,0,0,0,6,0,0,0,0,0,0,0,0,'emote'),
(52726,12,25,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'RUN ON'),
(52726,4000,3,0,0,0,0,0,6,0,0,0,0,5547.88,5749.37,-77.6656,0,'move'),
(52726,6000,18,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'despawn Self'),
-- 52727
(52727,1,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'face Source'),
(52727,0,0,0,0,0,0,0,6,29096,0,0,0,0,0,0,0,'Cue Drostan Response Set 4'),
(52727,11,1,5,0,0,0,0,6,0,0,0,0,0,0,0,0,'emote'),
(52727,4000,3,0,0,0,0,0,6,0,0,0,0,5547.88,5749.37,-77.6656,0,'move'),
(52727,7000,15,46769,0,0,0,0,6,0,0,0,0,0,0,0,0,'cast 46769'),
-- 52728
(52728,1,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'face Source'),
(52728,0,0,0,0,0,0,0,6,29097,0,0,0,0,0,0,0,'Cue Drostan Response Set 5'),
(52728,5000,0,0,0,0,0,0,6,29101,0,0,0,0,0,0,0,'Cue Drostan Response Set 5'),
(52728,5001,1,5,0,0,0,0,6,0,0,0,0,0,0,0,0,'emote'),
(52728,5002,25,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'RUN ON'),
(52728,9000,3,0,0,0,0,0,6,0,0,0,0,5547.88,5749.37,-77.6656,0,'move'),
(52728,11000,18,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'despawn Self'),
-- 52729
(52729,1,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'face Source'),
(52729,0,0,0,0,0,0,0,6,29116,29117,29118,29118,0,0,0,0,'Cue Drostan Response Set 6'),
(52729,11,1,5,0,0,0,0,6,0,0,0,0,0,0,0,0,'emote'),
(52729,12,25,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'RUN ON'),
(52729,4000,3,0,0,0,0,0,6,0,0,0,0,5547.88,5749.37,-77.6656,0,'move'),
(52729,6000,18,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'despawn Self'),
-- 52730
(52730,1,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'face Source'),
(52730,0,0,0,0,0,0,0,6,29119,29120,29121,28986,0,0,0,0,'Cue Drostan Response Set 7'),
(52730,11,1,5,0,0,0,0,6,0,0,0,0,0,0,0,0,'emote'),
(52730,12,25,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'RUN ON'),
(52730,4000,3,0,0,0,0,0,6,0,0,0,0,5547.88,5749.37,-77.6656,0,'move'),
(52730,6000,18,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'despawn Self'),
-- 52731
(52731,1,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'face Source'),
(52731,0,0,0,0,0,0,0,6,29123,29124,29125,29126,0,0,0,0,'Cue Drostan Response Set 8'),
(52731,11,1,5,0,0,0,0,6,0,0,0,0,0,0,0,0,'emote'),
(52731,12,25,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'RUN ON'),
(52731,4000,3,0,0,0,0,0,6,0,0,0,0,5547.88,5749.37,-77.6656,0,'move'),
(52731,6000,18,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'despawn Self');
