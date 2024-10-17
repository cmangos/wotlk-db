-- q.12982 'Ebon Blade Prisoners'
-- Player can obtain more than 1 KEY
UPDATE quest_template SET ReqSourceCount2 = 8 WHERE entry = 12982;
-- Jotunheim Cage 192135
UPDATE gameobject_template SET flags = 32 WHERE entry = 192135;
-- Ebon Blade Knight 30197 / 30198 / 30199 / 30200
UPDATE creature_template SET MinLevel = 77, MaxLevel = 77, UnitClass = 2, Expansion = 2, EquipmentTemplateId = 1029 WHERE Entry IN (30197,30198,30199,30200);
DELETE FROM dbscript_random_templates WHERE id IN (20370);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20370,0,30898,0,'Ebon Blade Knight - Random Say 1'),
(20370,0,30899,0,'Ebon Blade Knight - Random Say 2'),
(20370,0,30900,0,'Ebon Blade Knight - Random Say 3'),
(20370,0,30901,0,'Ebon Blade Knight - Random Say 4'),
(20370,0,30902,0,'Ebon Blade Knight - Random Say 5'),
(20370,0,30903,0,'Ebon Blade Knight - Random Say 6'),
(20370,0,30904,0,'Ebon Blade Knight - Random Say 7');
-- Ebon Blade Prisoner 30186 / 30194 / 30195 / 30196
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21033 AND 21036;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21033,2000,15,56207,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Prisoner EAI: cast 56207'),
(21034,2000,15,56209,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Prisoner EAI: cast 56209'),
(21035,2000,15,56212,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Prisoner EAI: cast 56212'),
(21036,2000,15,56214,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Prisoner EAI: cast 56214');
DELETE FROM dbscript_random_templates WHERE id IN (20371);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20371,0,30882,0,'Ebon Blade Prisoner - Random Say 1'),
(20371,0,30883,0,'Ebon Blade Prisoner - Random Say 2'),
(20371,0,30884,0,'Ebon Blade Prisoner - Random Say 3'),
(20371,0,30885,0,'Ebon Blade Prisoner - Random Say 4'),
(20371,0,30886,0,'Ebon Blade Prisoner - Random Say 5'),
(20371,0,30887,0,'Ebon Blade Prisoner - Random Say 6'),
(20371,0,30888,0,'Ebon Blade Prisoner - Random Say 7'),
(20371,0,30889,0,'Ebon Blade Prisoner - Random Say 8');
