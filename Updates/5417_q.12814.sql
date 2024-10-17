-- q.12814 'You'll Need a Gryphon'
-- Onslaught Gryphon 29403
UPDATE creature_template SET MinLevel = 79, MaxLevel = 79, UnitClass = 1, Expansion = 2, SpellList = 2940301 WHERE Entry IN (29403);
DELETE FROM creature_spell_list_entry WHERE Id IN(2940301);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2940301, 'Onslaught Gryphon 29403 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2940301);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2940301','0','54420','0','-1','0','0','100','1','0','0','0','0','Onslaught Gryphon 29403 - Deliver Gryphon');
DELETE FROM dbscripts_on_spell WHERE id = 54420;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(54420,0,14,49641,0,0,0,0,4,0,0,0,0,0,0,0,0,''),
(54420,100,3,0,0,0,0,0,4,0,0,0,0,7435.4966,4213.9907,316.0614,3.80481,''),
(54420,4000,10,29415,30000,0,0,0,0x08,0,0,0,0,7435.4966,4213.9907,316.0614,3.80481,'summon 29415'),
(54420,4001,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_script_target WHERE entry IN (10727);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(10727, 1, 29415, 0);
-- Captured Onslaught Gryphon 29415
UPDATE creature_template SET MinLevel = 79, MaxLevel = 79, UnitClass = 1, Expansion = 2 WHERE Entry IN (29415);
DELETE FROM dbscripts_on_relay WHERE id IN (21044);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21044,1,31,29405,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Captured Onslaught Gryphon 29415 EAI: search for 29405'),
(21044,101,21,1,0,0,29405,30,7,0,0,0,0,0,0,0,0,'Part of Captured Onslaught Gryphon 29415 EAI: buddy active'),
(21044,101,15,10727,0,0,29405,30,3,0,0,0,0,0,0,0,0,'Part of Captured Onslaught Gryphon 29415 EAI: buddy cast spell on source'),
(21044,8000,1,1,0,0,29405,30,7,0,0,0,0,0,0,0,0,'Part of Captured Onslaught Gryphon 29415 EAI: buddy emote'),
(21044,8200,0,0,0,0,29405,30,7,30116,0,0,0,0,0,0,0,'Part of Captured Onslaught Gryphon 29415 EAI: buddy Say'),
(21044,9000,3,0,0,0,29405,30,7,0,0,0,0,0,0,0,4.049160003662109,'Part of Captured Onslaught Gryphon 29415 EAI: buddy Say'),
(21044,9001,21,0,0,0,29405,30,7,0,0,0,0,0,0,0,0,'Part of Captured Onslaught Gryphon 29415 EAI: buddy active');
