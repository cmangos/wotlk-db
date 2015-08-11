-- Orithos the Sky Darkener and Scourge Sky Darkener
-- shouldnt be attacked by Scarlet Defenders
UPDATE creature_template SET UnitFlags = 32770 WHERE Entry IN (28642,28647);

-- Dark Rider of Acherus
UPDATE creature_template SET MechanicImmuneMask = 8388656 WHERE entry = 28768; 

-- Scarlet Fleet Defender
UPDATE creature_addon SET auras = 48356 WHERE guid IN (SELECT guid FROM creature WHERE id = 28834);
