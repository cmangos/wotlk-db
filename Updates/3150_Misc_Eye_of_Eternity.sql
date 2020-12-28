-- The Eye of Eternity Fixes

-- Hover Disk 30234
UPDATE creature_template SET UnitFlags = 33554432, MovementType = 2 WHERE entry = 30234;
-- control spell
DELETE FROM npc_spellclick_spells WHERE npc_entry = 30234;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(30234,61421,0,0,0,1,0);

-- Hover Disk 30248
UPDATE creature_template SET MovementType = 3 WHERE entry = 30248;

-- Heart of Magic 194159
-- must be accesable in heroic mode
UPDATE gameobject_template SET flags = 4 WHERE entry = 194159;

-- Alexstrasza's Gift 193967
-- must be accesable in heroic mode
UPDATE gameobject_template SET flags = 0 WHERE entry = 193967;
