-- Script target
DELETE FROM spell_script_target WHERE entry IN (68788,69347,70464,71281);
INSERT INTO spell_script_target VALUES
(68788,0,196485,0),
(69347,1,37584,0),
(69347,1,37588,0),
(69347,1,37587,0),
(69347,1,37496,0),
(69347,1,37497,0),
(69347,1,37498,0),
(69347,1,36477,0),
(70464,1,36796,0),
(71281,1,36764,0),
(71281,1,36765,0),
(71281,1,36766,0),
(71281,1,36767,0),
(71281,1,36770,0),
(71281,1,36771,0),
(71281,1,36772,0),
(71281,1,36773,0);

-- Fix equipment
DELETE FROM creature_equip_template WHERE entry=52515;
INSERT INTO creature_equip_template (entry, equipentry1) VALUES
(52515,49346);
UPDATE creature_template SET EquipmentTemplateId=52515 WHERE entry IN (36494,37613);

DELETE FROM vehicle_accessory WHERE vehicle_entry IN (36476,36661);
INSERT INTO vehicle_accessory VALUES
(36476,0,36477,'Ick and Krick'),
(36661,0,36658,'Rimefang and Tyrannus');

-- Fix creature
UPDATE creature_template SET MinLevel=80, MaxLevel=80, faction=14 WHERE entry IN (36610,37610,37670);
UPDATE creature_template SET MinLevel=80, MaxLevel=80, faction=14 WHERE entry IN (36731);
UPDATE creature_template SET faction=1771, MinLevel=80, MaxLevel=80, UnitFlags=UnitFlags|256 WHERE entry IN (36796,37657);
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (36830,37638);
UPDATE creature_template SET UnitFlags=33554496 WHERE entry IN (36938,36658);

UPDATE creature_template SET MovementType=2 WHERE entry=37755;
UPDATE creature_template SET MinLevel=80, MaxLevel=80 WHERE entry IN (38189,38188);
UPDATE creature_template SET UnitFlags=33088 WHERE entry=36990;

UPDATE creature_template SET UnitFlags=320, faction=534 WHERE entry IN (37572,37616,37575,37617,37576,37615);
UPDATE creature_template SET UnitFlags=320, faction=714 WHERE entry IN (37577,37620,37578,37621,37579,37619);
