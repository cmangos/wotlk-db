-- q.12670 'The Scarlet Harvest' - update
-- missing spells added
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (29488,29501) AND spell_id IN (54567,54574);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(29488, 54567, 12670, 1, 0, 3, 0),
(29501, 54574, 12670, 1, 0, 3, 0);
