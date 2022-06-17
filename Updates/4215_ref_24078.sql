-- removed wrong items from ref.
-- Wotlk ONLY - will be redone in near future
DELETE FROM reference_loot_template WHERE item IN (10400,10401,10402) AND entry IN (24078);
