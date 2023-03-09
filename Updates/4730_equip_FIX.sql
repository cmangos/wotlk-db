-- Fix issues with missing equipment after recent core changes
-- dafault value should be -1 - fixed 
UPDATE creature_spawn_data_template SET EquipmentId = -1 WHERE EquipmentId = 0;
-- IN This case must be 0
UPDATE creature_spawn_data_template SET EquipmentId = 0 WHERE Entry = 20042;
