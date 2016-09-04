
-- Ring of Valor Arena
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM gameobject WHERE map=618);
INSERT INTO gameobject_battleground VALUES
-- buffs
(121829,253,0),
(121830,253,0),
-- elevators
(121827,254,0),
(121828,254,0);
DELETE FROM battleground_events WHERE map=618;
INSERT INTO battleground_events VALUES
(618,253,0,'buffs'),
(618,254,0,'doors');

UPDATE gameobject SET state=0 WHERE id IN (192393,192394);
UPDATE gameobject_template SET faction=114, flags=flags|32 WHERE entry IN (192704,192705,192388,192387,192393,192394,192389,192390,194580,194579,194581,194578);
