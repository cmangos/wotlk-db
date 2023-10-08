-- q.12546 'Reclamation'
-- The Etymidian 28222
UPDATE creature_template SET SpeedWalk = 1.5, LootId = 0, SpellList=0, EquipmentTemplateId = 2540 WHERE Entry = 28222;
DELETE FROM creature_loot_template WHERE entry IN (28222);
DELETE FROM creature_template_spells WHERE entry = 28222;
DELETE FROM creature_spell_list_entry WHERE Id IN (2822200);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2822200, 'Sholazar Basin - The Etymidian 28222 - Vehicle spells',0,0);
DELETE FROM creature_spell_list WHERE Id IN (2822200);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2822200,0,50978,0,0,0,100,0,0,0,0,0,'The Etymidian 28222 - Colossal Strike'),
(2822200,1,50980,0,0,0,100,0,0,0,0,0,'The Etymidian 28222 - Cataclysm'),
(2822200,2,50985,0,0,0,100,0,0,0,0,0,'The Etymidian 28222 - Reconstruction'),
(2822200,3,50983,0,0,0,100,0,0,0,0,0,'The Etymidian 28222 - Titanic Surge'),
(2822200,4,54166,0,0,0,100,0,0,0,0,0,'The Etymidian 28222 - Maker\'s Sanctuary');
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry = 2540;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2540, 25316, 0, 0);
