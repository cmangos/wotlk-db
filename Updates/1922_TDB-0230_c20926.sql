-- Fix Stats for Invisible Stalker Coilfang Doors 20926 & Add basic implementation for - Emote on 184125/184126 go template use
UPDATE `creature_template` SET `ModelId2` = 11686, `UnitFlags` = 33554432, `ExtraFlags` = 0 WHERE `entry` = 20926;

