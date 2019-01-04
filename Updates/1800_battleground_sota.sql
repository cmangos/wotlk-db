-- Strand of the ancients update: make npcs active and add graveyard links

-- Make the battleground npcs active
UPDATE creature_template SET ExtraFlags=ExtraFlags|4096 WHERE entry IN (29,27894,28781);

-- add missing graveyard links
DELETE FROM game_graveyard_zone WHERE id IN (1346,1347,1348,1349,1350,1351);
INSERT INTO game_graveyard_zone (id,ghost_zone,faction) VALUES
(1346,4384,0),
(1347,4384,0),
(1348,4384,0),
(1349,4384,0),
(1350,4384,0),
(1351,4384,0);
