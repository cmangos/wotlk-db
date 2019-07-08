-- Update areatrigger_teleports and add condition requirements to Horde and Night Elf bases in case player manages to get behind barrier
UPDATE areatrigger_teleport SET target_position_x=5066.79, target_position_y=-1791.9, target_position_z=1321.65, target_orientation=2.356194 WHERE id=4311; -- Alliance Base
UPDATE areatrigger_teleport SET target_position_x=5499.96, target_position_y=-2756.8, target_position_z=1488.96, target_orientation=1.396263, condition_id=10072 WHERE id=4312; -- Horde Base (Requires Anetheron Done)
UPDATE areatrigger_teleport SET target_position_x=5163.02, target_position_y=-3428.31, target_position_z=1627.61, target_orientation=0.7853982, condition_id=10075 WHERE id=4313; -- Night Elf (Requires Azgalor Done)
UPDATE areatrigger_teleport SET target_position_x=4252.72, target_position_y=-4226.16, target_position_z=868.222, target_orientation=2.356194 WHERE id=4319; -- Entrance
UPDATE areatrigger_teleport SET target_position_x=-8176.99, target_position_y=-4176.92, target_position_z=-166.463, target_orientation=3.926991 WHERE id=4323; -- Exit

-- Set proper flags for Horde Encampment Portal and Night Elf Village Portal (They will now be locked as intended)
UPDATE `gameobject_template` SET `flags`=34 WHERE `entry` IN(182060,182061);

DELETE FROM conditions WHERE condition_entry IN (10072,10075);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(10072, 18, 17772, 0),
(10075, 18, 17852, 0);
