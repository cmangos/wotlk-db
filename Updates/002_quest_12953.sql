
-- Q12953 Valkyrion Must Burn
-- npc spell click
DELETE FROM npc_spellclick_spells WHERE npc_entry=30066;
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES 
(30066, 62503, 12953, 1, 12953, 1, 0);
-- vehicle spells
DELETE FROM creature_template_spells WHERE entry=30066;
INSERT INTO creature_template_spells (entry,spell1) VALUES 
(30066, 55812);
-- script target
DELETE FROM spell_script_target WHERE entry=55896;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES 
(55896, 1, 30096, 0); 
-- script
DELETE FROM dbscripts_on_spell WHERE id=55896;
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,data_flags,comments) VALUES
(55896,0,8,0,2,'Dry Haystack - Kill Credit'),
(55896,0,18,0,2,'Dry Haystack - Despawn');
