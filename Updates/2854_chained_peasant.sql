--- Chained Peasant 54612 54613 fixes https://github.com/cmangos/issues/issues/2116
UPDATE spell_template SET AttributesEx2 = AttributesEx2|4 WHERE id IN (54612, 54613);
