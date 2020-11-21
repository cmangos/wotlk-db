-- Fixed console error with wrongly added NULL on auras
-- Creature (Entry: xxx) has wrong spell 0 defined in `auras` field in `creature_template_addon`.
UPDATE creature_template_addon SET auras = NULL WHERE entry IN (28860,30449,30451,30452,30453,30680,30681,30682,31103,31138);
