-- `game_event` game event id (85) have length 0 and can't be used.
-- source: TDB
UPDATE game_event SET schedule_type = 4, occurence = 52560, length = 20160 WHERE entry = 85;
