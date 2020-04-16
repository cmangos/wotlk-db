-- Spell 20243 listed in `spell_threat` has effects with different targets, threat may be assigned incorrectly
DELETE FROM spell_threat WHERE entry = 20243;
