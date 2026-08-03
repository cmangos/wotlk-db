-- q.12985 'Forging a Head'
-- c.30163 Dead Iron Giant
UPDATE creature_template SET UnitFlags = 768, StaticFlags3 = 8192 WHERE entry IN (30163);
DELETE FROM dbscripts_on_spell WHERE id IN (56227);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(56227,0,15,56230,0,0,0,0,2,0,0,0,0,0,0,0,0,'cast 56230'),
(56227,1,18,2000,0,0,0,0,6,0,0,0,0,0,0,0,0,'despawn self'),
(56227,2,45,0,20390,0,0,0,4,0,0,0,0,0,0,0,0,'start random script');
DELETE FROM dbscript_random_templates WHERE `id` = 20390;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20390,1,29999,70,'Part of q.12985 Forging a Head: - script 1'), -- do nothing
(20390,1,21256,30,'Part of q.12985 Forging a Head: - script 2'); -- summon
DELETE FROM dbscripts_on_relay WHERE id = 21256;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21256,0,15,56243,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 56243'),
(21256,1,15,56243,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 56243'),
(21256,2,15,56243,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 56243');
DELETE FROM spell_script_target WHERE entry IN (56227);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(56227,5,33002,0);
DELETE FROM `string_id` WHERE id = 33002;
INSERT INTO `string_id` (`Id`, `Name`) VALUES
(33002,'Storm Peaks - Storm Peaks - q.12985');
UPDATE creature_template SET StringId1 = 33002 WHERE Entry IN (29914,30208,30163);
