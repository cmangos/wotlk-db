-- q.12644 'Still At It'
-- "Tipsy" McManus 28566 
-- waypoints starts via sd2 script
UPDATE creature SET MovementType = 0, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id = 28566;
UPDATE creature_template SET MovementType = 2 WHERE entry = 28566;
DELETE FROM creature_movement_template WHERE entry = 28566;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(28566,1,5546.436,5769.873,-77.94647,100,0,0),
(28566,2,5548.857,5771.478,-77.94647,100,0,0),
(28566,3,5546.5,5769.79,-78.0501,100,0,0),
(28566,4,5548.84,5766.77,-78.0235,100,0,0),
(28566,5,5554.43,5765.72,-78.0143,100,0,0),
(28566,6,5556.36,5770.36,-78.0109,100,0,0),
(28566,7,5556.13,5773.06,-78.0788,100,0,0),
(28566,8,5554.97,5773.9,-77.8565,100,0,0),
(28566,9,5552.357,5773.401,-77.82147,100,100,1);
