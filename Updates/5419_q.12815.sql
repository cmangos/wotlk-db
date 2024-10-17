-- q.12815 'No Fly Zone'
-- Bone Gryphon 29414
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Expansion = 2, SpellList = 2941401 WHERE Entry IN (29414);
DELETE FROM creature_template_spells WHERE entry IN(29414);
DELETE FROM creature_spell_list_entry WHERE Id IN(2941401);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2941401, 'Bone Gryphon 29414 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(2941401);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('2941401','0','48766','0','-1','0','0','100','1','0','0','0','0','Bone Gryphon 29414 - Frost Breath'),
('2941401','1','54469','0','-1','0','0','100','1','0','0','0','0','Bone Gryphon 29414 - Plague Strike'),
('2941401','2','54467','0','-1','0','0','100','1','0','0','0','0','Bone Gryphon 29414 - Bone Armor'),
('2941401','3','55214','0','-1','0','0','100','1','0','0','0','0','Bone Gryphon 29414 - Speed Burst');
DELETE FROM dbscripts_on_relay WHERE id IN (21045);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21045,10,34,20764,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Bone Gryphon 29414 EAI: area check'),
(21045,100,0,0,0,0,0,0,0x04,30115,0,0,0,0,0,0,0,'Part of Bone Gryphon 29414 EAI: warning'),
(21045,10000,34,20764,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Bone Gryphon 29414 EAI: area check'),
(21045,10101,14,21745,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Bone Gryphon 29414 EAI: Player Drop'),
(21045,10100,15,45472,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Bone Gryphon 29414 EAI: Cast 45472');
DELETE FROM conditions WHERE condition_entry BETWEEN 20762 AND 20764;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES
(20762, 4, 4417,0,0,0),
(20763, 4, 4529,0,0,0),
(20764, -2, 20763,20762,0,0);
UPDATE `broadcast_text` SET `ChatTypeID`= 5 WHERE `Id` IN (30115);
