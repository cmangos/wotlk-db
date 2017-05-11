-- Redridge Murlocs
-- these coords come up most often in multiple sniffs
UPDATE creature SET position_x=-9312.2607421875, position_y=-2811.8017578125, position_z=73.76251220703125, orientation=0.196361437439918518 WHERE guid=6190; -- run event with 6274?
UPDATE creature SET position_x=-9315.64453125, position_y=-2810.966064453125, position_z=73.6688232421875, orientation=1.047197580337524414 WHERE guid=6274;
-- 545 578 spawn entry
-- 422 548 spawn entry
REPLACE INTO creature_spawn_entry (guid, entry) SELECT guid, 545 FROM creature WHERE id=545;
REPLACE INTO creature_spawn_entry (guid, entry) SELECT guid, 578 FROM creature WHERE id=545;
REPLACE INTO creature_spawn_entry (guid, entry) SELECT guid, 545 FROM creature WHERE id=578;
REPLACE INTO creature_spawn_entry (guid, entry) SELECT guid, 578 FROM creature WHERE id=578;

REPLACE INTO creature_spawn_entry (guid, entry) SELECT guid, 422 FROM creature WHERE id=422;
REPLACE INTO creature_spawn_entry (guid, entry) SELECT guid, 548 FROM creature WHERE id=422;
REPLACE INTO creature_spawn_entry (guid, entry) SELECT guid, 422 FROM creature WHERE id=548;
REPLACE INTO creature_spawn_entry (guid, entry) SELECT guid, 548 FROM creature WHERE id=548;
UPDATE creature SET id=0 WHERE id IN (545,578,422,548); -- better handled by creature_groups to even out spawns in these groups
