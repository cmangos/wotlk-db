-- q.10900 'The Mark of Vashj'
-- Player must finish 3 quests first:
-- q.10886 'Trial of the Naaru: Tenacity' (HEROIC MODE) - Arcatraz of Tempest Keep. - Note: Here your saving the mage who will be friendly but you kill this boss: Harbinger Skyriss
-- q.10885 'Trial of the Naaru: Strength' (HEROIC MODE) - Warlord Kalithresh (Steamvault) & Murmur (Shadow Labyrinth) in any order but both in Heroic Modes.
-- q.10884 'Trial of the Naaru: Mercy' (HEROIC MODE) - Shattered Hand Executioner (Shattered Halls of Hellfire Citadel)
DELETE FROM conditions WHERE condition_entry BETWEEN 1208 AND 1212;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1208, 8, 10884, 0),
(1209, 8, 10885, 0),
(1210, 8, 10886, 0),
(1211, -2, 1209, 1208),
(1212, -2, 1211, 1210);
UPDATE quest_template SET RequiredCondition = 1212 WHERE entry = 10900;

-- q.13431 'The Cudgel of Kar'desh'
-- becomes available after q.10900 'The Mark of Vashj' completed
-- *NOTE* This is the NEW version of Cudgel of Kar'desh. It does NOT reward "Champion of the Naaru". The one pre-3.0.2 did give the title.
-- TBCDB should use q.10901 istead
UPDATE quest_template SET PrevQuestId = 10900 WHERE entry = 13431;
-- Let's remove older version (WotlkDB only)
DELETE FROM creature_questrelation WHERE id = 22421 AND quest = 10901;
DELETE FROM creature_involvedrelation WHERE id = 22421 AND quest = 10901;
 
-- q.13430 'Trial of the Naaru: Magtheridon'
-- Player must finish 3 quests first:
-- q.10886 'Trial of the Naaru: Tenacity' (HEROIC MODE) - Arcatraz of Tempest Keep. - Note: Here your saving the mage who will be friendly but you kill this boss: Harbinger Skyriss
-- q.10885 'Trial of the Naaru: Strength' (HEROIC MODE) - Warlord Kalithresh (Steamvault) & Murmur (Shadow Labyrinth) in any order but both in Heroic Modes.
-- q.10884 'Trial of the Naaru: Mercy' (HEROIC MODE) - Shattered Hand Executioner (Shattered Halls of Hellfire Citadel)
-- *NOTE* This is the NEW version of 'Trial of the Naaru: Magtheridon'.
-- TBCDB should use q.10888 istead
UPDATE quest_template SET RequiredCondition = 1212 WHERE entry = 13430;
-- Let's remove older version (WotlkDB only)
DELETE FROM creature_questrelation WHERE id = 18481 AND quest = 10888;
DELETE FROM creature_involvedrelation WHERE id = 18481 AND quest = 10888;
