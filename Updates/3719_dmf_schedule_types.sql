UPDATE game_event SET schedule_type=8 WHERE entry IN(63);
UPDATE game_event SET schedule_type=5 WHERE entry IN(62);
UPDATE game_event SET schedule_type=6 WHERE entry IN(64);
UPDATE game_event SET schedule_type=9 WHERE entry IN(65);
UPDATE game_event SET schedule_type=7 WHERE entry IN(66);
UPDATE game_event SET schedule_type=10 WHERE entry IN(23);
UPDATE game_event SET schedule_type=2 WHERE entry IN(3);
UPDATE game_event SET schedule_type=3 WHERE entry IN(5);
UPDATE game_event SET schedule_type=4 WHERE entry IN(4);
DELETE FROM game_event_time WHERE entry IN(23,62,63,64,65,66);
UPDATE game_event SET holiday=374 WHERE entry IN(23,66);
UPDATE game_event SET holiday=375 WHERE entry IN(64,65);
UPDATE game_event SET holiday=376 WHERE entry IN(62,63);


