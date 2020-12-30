-- The Eye of Eternity Fixes

-- Hover Disk 30234
UPDATE creature_template SET UnitFlags = 33554432, MovementType = 2 WHERE entry = 30234;
-- control spell
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (30234,30248);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(30234,61421,0,0,0,1,0),
(30248,61421,0,0,0,1,0);

-- Hover Disk 30248 & 30248
UPDATE creature_template SET UnitFlags = 33554432, MovementType = 3 WHERE entry IN (30234,30248);

-- Heart of Magic 194159
-- must be accesable in heroic mode
UPDATE gameobject_template SET flags = 4 WHERE entry = 194159;

-- Alexstrasza's Gift 193967
-- must be accesable in heroic mode
UPDATE gameobject_template SET flags = 0 WHERE entry = 193967;

-- Alexstrasza's Gift 193905
-- Alexstrasza's Gift 193967
-- 10man mode
DELETE FROM gameobject_loot_template WHERE entry = 26094;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(26094,47241,100,0,2,2,0,'Emblem of Triumph'),
(26094,100000,100,0,-100000,2,0,''),
(26094,43953,2,0,1,1,0,''),
(26094,43952,2,0,1,1,0,'');
-- 25man mode
DELETE FROM gameobject_loot_template WHERE entry = 26097;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(26097,47241,100,0,2,2,0,'Emblem of Triumph'),
(26097,100001,100,0,-100001,4,0,''),
(26097,43953,2,0,1,1,0,''),
(26097,43952,2,0,1,1,0,'');
DELETE FROM reference_loot_template_names WHERE entry IN (100000,100001);
INSERT INTO reference_loot_template_names (entry, name) VALUES
(100000,'Eye of Eternity (Boss Loot) - Malygos - 10man Normal'),
(100001,'Eye of Eternity (Boss Loot) - Malygos - 25man Normal');
DELETE FROM reference_loot_template WHERE entry IN (100000,100001);
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(100000,40475,0,1,1,1,0,''),
(100000,40526,0,1,1,1,0,''),
(100000,40491,0,1,1,1,0,''),
(100000,40474,0,1,1,1,0,''),
(100000,40489,0,1,1,1,0,''),
(100000,40486,0,1,1,1,0,''),
(100000,40488,0,1,1,1,0,''),
(100000,40497,0,1,1,1,0,''),
(100000,40519,0,1,1,1,0,''),
(100000,40511,0,1,1,1,0,''),
(100001,40541,0,1,1,1,0,''),
(100001,40539,0,1,1,1,0,''),
(100001,40555,0,1,1,1,0,''),
(100001,40588,0,1,1,1,0,''),
(100001,40566,0,1,1,1,0,''),
(100001,40558,0,1,1,1,0,''),
(100001,40194,0,1,1,1,0,''),
(100001,40590,0,1,1,1,0,''),
(100001,40589,0,1,1,1,0,''),
(100001,40543,0,1,1,1,0,''),
(100001,40592,0,1,1,1,0,''),
(100001,40560,0,1,1,1,0,''),
(100001,40531,0,1,1,1,0,''),
(100001,40591,0,1,1,1,0,''),
(100001,40564,0,1,1,1,0,''),
(100001,40549,0,1,1,1,0,''),
(100001,40561,0,1,1,1,0,''),
(100001,40532,0,1,1,1,0,''),
(100001,40594,0,1,1,1,0,''),
(100001,40562,0,1,1,1,0,'');
