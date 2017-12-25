-- q.11476 'A Carver and a Croaker'
-- Spellclick corrected
-- 35813 is not req. to get item from creature
DELETE FROM npc_spellclick_spells WHERE npc_entry = 26503;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(26503, 0, 11476, 1, 11476, 0, 0);
-- not req. anymore - PLS REUSE
DELETE FROM conditions WHERE condition_entry IN (948,949,950);
