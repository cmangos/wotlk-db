-- q.11530 'The Shield of the Aesirites' (final pare of 'Captain Ellis' chain)
UPDATE quest_template SET PrevQuestId = 11529 WHERE entry = 11530;

-- Rabid Brown Bear
UPDATE creature SET position_x = -19.108330, position_y = -3556.613770, position_z = 34.354630, spawndist = 7, MovementType = 1 WHERE guid = 101032;

-- Juniper
UPDATE creature SET position_x = 113.279587, position_y = -3700.349121, position_z = 1.042105, spawndist = 7, MovementType = 1 WHERE guid = 116130;
