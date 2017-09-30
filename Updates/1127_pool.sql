-- Pooled together to Crystal GOs in Un'Goro Crater
DELETE FROM pool_gameobject WHERE guid IN (17548, 17713);
INSERT INTO pool_gameobject VALUES
(17548, 25881, 0, 'Un\'Goro - Green/Red Crystal'),
(17713, 25881, 0, 'Un\'Goro - Green/Red Crystal');

DELETE FROM pool_template WHERE entry = 25881;
INSERT INTO pool_template VALUES
(25881, 1, 'Un\'Goro - Green/Red Crystal');
