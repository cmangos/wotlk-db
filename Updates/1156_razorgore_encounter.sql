-- Add missing target of spell 23018 (Use Dragon Orb) it should target the trigger NPC
DELETE FROM spell_script_target WHERE entry=23018;
INSERT INTO spell_script_target VALUES (23018, 1, 14449, 0);

-- Made friendly generator/dummy NPCs invisible
UPDATE creature_template SET ExtraFlags=128 WHERE Entry IN (14459, 12434);
