-- Argent Dawn quest updates
-- Alliance only
-- q.5517 'Chromatic Mantle of the Dawn'
-- q.5513 'Mantles of the Dawn'
-- q.5503 'Argent Dawn Commission'
-- q.5508 'Corruptor's Scourgestones'
-- q.5403 'Invader's Scourgestones'
-- q.5402 'Minion's Scourgestones'
UPDATE quest_template SET RequiredRaces = 1101 WHERE entry IN (5517,5513,5503,5508,5403,5402);
-- Horde only
-- q.5524 'Chromatic Mantle of the Dawn'
-- q.5504 'Mantles of the Dawn'
-- q.5405 'Argent Dawn Commission'
-- q.5406 'Corruptor's Scourgestones'
-- q.5407 'Invader's Scourgestones'
-- q.5408 'Minion's Scourgestones'
UPDATE quest_template SET RequiredRaces = 690 WHERE entry IN (5524,5504,5405,5406,5407,5408);
