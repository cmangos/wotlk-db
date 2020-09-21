
-- broken cannon spell click
DELETE FROM npc_spellclick_spells WHERE npc_entry=35819;
INSERT INTO npc_spellclick_spells VALUE
(35819,68077, 0, 0, 0, 1, 0);
