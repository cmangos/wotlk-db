-- Nightbane Event - Karazhan
-- Spell allows players use Blackened Urn to summon Boss: Nightbane
DELETE FROM spell_area WHERE spell = 61899;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(61899,3457,0,0,0,1515,0,0,2,1);
DELETE FROM conditions WHERE condition_entry IN (1513,1514,1515);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1513, 9, 9644, 0),
(1514, 8, 9644, 0),
(1515, -2, 1514, 1513);

-- spell focus - duplicate removed
DELETE FROM game_event_gameobject WHERE guid = 99912;
DELETE FROM gameobject_battleground WHERE guid = 99912;
DELETE FROM gameobject WHERE guid = 99912;
