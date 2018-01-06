-- Unstable Fel imps should not give XP
UPDATE creature_template SET ExtraFlags = 64 WHERE entry IN (22474, 22475);
