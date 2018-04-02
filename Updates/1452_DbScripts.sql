-- Heldgarr Steelbeard & Ferlyyn Windsong
-- Cast flags for scripts corrected
UPDATE dbscripts_on_creature_movement SET datalong2 = 4 WHERE id IN (2528201,2528101) AND delay = 1;
-- Cosmetic Trigger - LAB
-- extraflag not needed
UPDATE creature_template SET ExtraFlags = 0 WHERE entry = 24921;
