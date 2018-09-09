-- Improvements for The Demoniac Scryer q.10838  
UPDATE `creature_template` SET `RegenerateStats` = 0, `MovementType` = 0 WHERE `entry` = 22258; -- Demoniac Scryer 22258
UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 22267; -- Magic Sucker Device Buttress 22267
