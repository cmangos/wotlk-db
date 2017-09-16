-- Quest 11895
DELETE FROM npc_spellclick_spells WHERE npc_entry=26048;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, cast_flags, condition_id) VALUES
(26048, 0, 0, 0, 1228);

DELETE FROM conditions WHERE condition_entry=1228;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1228, 9, 11895, 0);
