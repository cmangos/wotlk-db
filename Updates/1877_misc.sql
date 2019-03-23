-- World Trigger 22515
UPDATE creature_template SET InhabitType = 4 WHERE entry = 22515;

-- Skadi the Ruthless 26693 & Grauf 26893
-- both must be active to work correctly
UPDATE creature_template SET ExtraFlags = 4096 WHERE Entry IN (26693,26893);

-- Harpoon
DELETE FROM dbscripts_on_go_template_use WHERE id = 192539;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(192539,1,17,37372,1,0,0,0,0,0,0,0,0,0,0,0,0,'add item');
DELETE FROM spell_script_target WHERE entry = 56790;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(56790,1,30684,5);
