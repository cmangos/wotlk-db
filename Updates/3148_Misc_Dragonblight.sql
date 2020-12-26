-- Dragonblight Fixes

-- Fordragon Battle Steed - accesory seat corrected
UPDATE vehicle_accessory SET seat = 0 WHERE vehicle_entry = 27761;

-- Xink's Shredder 27061
DELETE FROM creature_template_spells WHERE entry = 27061;
INSERT INTO creature_template_spells(entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(27061,47938,47921,49857,47966,0,47939,0,0);

-- Alystros the Verdant Keeper 27249
UPDATE creature_template SET inhabittype = 4 WHERE entry = 27249;
