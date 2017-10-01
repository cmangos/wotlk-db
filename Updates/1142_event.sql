-- make short john mithril be spawned by event instead of default
DELETE FROM game_event_creature WHERE event = 16;
INSERT INTO game_event_creature VALUES
('636', '16');
-- make despawned by default
UPDATE gameobject SET spawntimesecsmin = -spawntimesecsmin, spawntimesecsmax = -spawntimesecsmax WHERE guid = 12029;
