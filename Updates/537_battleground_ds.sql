
-- Dalaran Sewers Arena
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM gameobject WHERE map=617);
INSERT INTO gameobject_battleground (guid, event1, event2) VALUES
-- buffs
(121825,253,0),
(121826,253,0),
-- doors
(121821,254,0),
(121822,254,0);
DELETE FROM battleground_events WHERE map = 617;
INSERT INTO battleground_events (map, event1, event2, description) VALUES
(617, 253, 0, 'buffs'),
(617, 254, 0, 'doors');

-- Note: the following is guesswork, but probably correct
UPDATE gameobject SET rotation0=0, rotation1=0, rotation2=SIN(orientation*0.5), rotation3=COS(orientation*0.5) WHERE map= 617;
UPDATE gameobject_template SET faction=114, flags=flags|32 WHERE entry IN (192642, 192643, 191877, 194395);
UPDATE creature SET position_x=1291.56, position_y=790.837 WHERE guid=140620;
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14, UnitFlags=UnitFlags|33554432 WHERE entry=28567;
