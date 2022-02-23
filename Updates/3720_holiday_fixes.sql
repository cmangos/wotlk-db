UPDATE game_event SET holiday=423 WHERE entry=8; -- correct holiday for wotlk love is in the air
UPDATE game_event SET schedule_type=13 WHERE entry=28; -- Noblegarden - easter
UPDATE game_event SET schedule_type=12 WHERE entry=7; -- Lunar - lunar
UPDATE game_event SET schedule_type=11 WHERE entry=8; -- Love is in the Air - Yearly
UPDATE game_event SET schedule_type=11 WHERE entry=9; -- Feast of Winter Veil - Yearly
UPDATE game_event SET schedule_type=11 WHERE entry=10; -- Childrens Week - Yearly
DELETE FROM game_event_time WHERE entry=28;
