-- q.11000 'Into the Soulgrinder' - Update

-- Skulloc's Soul should appear only after Skulloc Soulgrinder - death (static spawn removed)
-- Skulloc Soulgrinder - shouldnt give any loot
-- [ACID] Sundered Spirit - handled by sd2 

-- Skulloc's Soul - shouldnt be spawned
DELETE FROM gameobject WHERE guid = '27618';
DELETE FROM game_event_gameobject WHERE guid = '27618';
DELETE FROM gameobject_battleground WHERE guid = '27618';

-- Skulloc Soulgrinder
UPDATE creature_template SET LootId = 0 WHERE entry = 22910;
DELETE FROM creature_loot_template WHERE entry = 22910;
