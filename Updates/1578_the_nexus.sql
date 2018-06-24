-- Fix some wrong flags, wrong movement and missing creature linking
UPDATE creature SET MovementType=0, spawndist=0 WHERE guid IN (126611,126612,126613);
DELETE FROM creature_linking_template WHERE entry=26918;
INSERT INTO creature_linking_template(entry,map,master_entry,flag,search_range) VALUES
(26918,576,26763,4096,40);
UPDATE creature_template SET UnitFlags=UnitFlags&~768 WHERE entry=26737;