
-- Putricide encounter

-- Update creature stats
UPDATE creature_template SET UnitFlags=33554432 WHERE entry=37672;
UPDATE creature_template SET InhabitType=7 WHERE entry=37824;
-- spell script targets
DELETE FROM spell_script_target WHERE entry IN (72401,71621,70360,71415,71412,71617,71615,71618,72745,71693,71704,72850,72851,72852);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(72401,1,37672,0),
(71621,1,38308,5),
(71621,1,38309,6),
(70360,1,37690,0),
(71415,1,37824,0),
(71412,1,37824,0),
(71617,1,36678,0),
(71615,1,37672,0),
(71615,1,37690,0),
(71615,1,37562,0),
(71615,1,37697,0),
(71618,1,37672,0),
(71618,1,37562,0),
(71618,1,37697,0),
(72745,1,36678,0),
(71693,1,37672,0),
(71704,1,38308,5),
(71704,1,38309,6),
(72850,1,38308,5),
(72850,1,38309,6),
(72851,1,38308,5),
(72851,1,38309,6),
(72852,1,38308,5),
(72852,1,38309,6);
-- Make "Drink Me!" GO untargetable
DELETE FROM dbscripts_on_event WHERE id IN (22911);
INSERT INTO dbscripts_on_event (id,delay,command,datalong,buddy_entry,search_radius,data_flags,comments) VALUES
(22911,0,27,4,201584,100,0,'Set Drink Me as untargetable');
-- delete vehicle accessories
DELETE FROM creature WHERE id IN (38309,38308);
-- missing spawns
DELETE FROM creature WHERE guid IN (61289,61295,61296);
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(61289, 37824, 631, 15, 1, 0, 0, 4388.101, 3213.286, 408.7395, 3.839724, 120, 0, 0, 25200, 0, 0, 0),
(61295, 37824, 631, 15, 1, 0, 0, 4388.101, 3213.286, 408.7395, 3.839724, 120, 0, 0, 25200, 0, 0, 0),
(61296, 37824, 631, 15, 1, 0, 0, 4324.278, 3215.039, 408.7053, 5.585053, 120, 0, 0, 25200, 0, 0, 0);
-- creature linking
DELETE FROM creature_linking_template WHERE entry IN (38234,37690,37562,37697,38159);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(38234, 631, 36678, 4112, 0),
(37690, 631, 36678, 4112, 0),
(37562, 631, 36678, 4112, 0),
(37697, 631, 36678, 4112, 0),
(38159, 631, 36678, 4112, 0);
