-- Bloodcursed Naga
-- template_addon is enough
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 17713);
