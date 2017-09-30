-- Fixed target of spell 23018 (Use Dragon Orb) it should target the trigger NPC not the Orb GO itself
UPDATE spell_script_target SET type=1, targetEntry=14449 WHERE entry=23018;

-- Made friendly generator/dummy NPCs invisible
UPDATE creature_template SET ExtraFlags=128 WHERE Entry IN (14459, 12434);
