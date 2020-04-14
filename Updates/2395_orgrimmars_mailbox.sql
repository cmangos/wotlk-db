-- Orgrimmar mailbox outside Auction House should be removed during Hallow's End event - 12
DELETE FROM game_event_gameobject WHERE guid = 81906;
INSERT INTO game_event_gameobject (guid, event) VALUES
(81906, -12);
