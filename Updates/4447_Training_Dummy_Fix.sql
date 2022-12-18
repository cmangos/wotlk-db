-- Training Dummy - FIX

-- Grandmaster's Training Dummy 31144
UPDATE creature_addon SET auras = '7056 61574' WHERE guid BETWEEN 550481 AND 550488;
-- Heroic Training Dummy 31146
UPDATE creature_addon SET auras = '7056 61574' WHERE guid BETWEEN 550489 AND 550493;
-- Expert's Training Dummy 32666
UPDATE creature_addon SET auras = '7056 61574' WHERE guid BETWEEN 550494 AND 550500;
-- Master's Training Dummy 32667
UPDATE creature_addon SET auras = '7056 61574' WHERE guid BETWEEN 550501 AND 550507;

-- wrong aura corrected in Undercity
UPDATE creature_addon SET auras = '7056 61573' WHERE guid IN (550487,550492,550498,550505);
