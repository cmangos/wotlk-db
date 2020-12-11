UPDATE gameobject_template SET Faction=35 WHERE entry=179672; -- Wheel of the Black March
UPDATE gameobject_template SET Faction=35 WHERE entry=179673; -- Doomsday Candle
UPDATE gameobject_template SET Faction=35 WHERE entry=179674; -- Bell of Dethmoora
UPDATE creature_template SET UnitFlags=768 WHERE Entry=14500; -- J'eevee

UPDATE creature_template SET Faction=90 WHERE Entry=14482; -- Xorothian Imp
UPDATE creature_template SET Faction=90 WHERE Entry=14483; -- Dread Guard
-- add missing trap object required for spell 23226 Ritual Candle Aura to work properly - must be casted by this GO
DELETE FROM gameobject_template WHERE entry IN (179688);
INSERT INTO gameobject_template (entry, `type`, displayId, `name`, IconName, castBarCaption, faction, flags, ExtraFlags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, ScriptName) VALUES
('179688', '6', '5811', 'Ritual Candle Aura', '', '', '0', '0', '0', '1', '0', '0', '0', '23226', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

-- DELETE FROM conditions WHERE condition_entry IN (3147, 3148); -- comment for now unsure if used somewhere else in wotlk-db
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1450012); -- https://github.com/cmangos/wotlk-db/commit/920a1f37e6053927e4ed9065b7959c9c67f53738

