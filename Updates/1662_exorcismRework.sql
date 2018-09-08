-- Partial rework of 'The Exorcism of Colonel Jules' quest

-- Update waypoints for bara guy
DELETE FROM `creature_movement_template` WHERE entry = 22431;
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES 
(22431, 0, 0, -708.548, 2748.71, 101.591, 0, 0, 0),
(22431, 0, 1, -710.803, 2748.05, 101.591, 1000, 0, 0),
(22431, 0, 2, -706.955, 2752.71, 101.591, 0, 0, 0),
(22431, 0, 3, -707.211, 2754.10, 101.591, 1000, 0, 0);

UPDATE creature_template SET ModelId1 = 14533 WHERE entry = 22432;
UPDATE creature SET spawntimesecs = 30 WHERE id = 22432; -- Prevent Colonel Jules from turning into female
DELETE FROM creature_movement_template WHERE entry = 22432;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(22432, 0, 0, -713.746, 2744.86, 103.286, 0, 0, 0),
(22432, 0, 1, -713.390, 2748.81, 103.480, 0, 0, 0),
(22432, 0, 2, -708.577, 2748.76, 103.786, 0, 0, 0),
(22432, 0, 3, -708.239, 2745.67, 103.730, 0, 0, 0),
(22432, 0, 4, -710.870, 2743.91, 103.425, 0, 0, 0),
(22432, 0, 5, -710.502, 2750.73, 103.940, 0, 0, 0),
(22432, 0, 6, -710.211, 2754.36, 102.367, 1000, 0, 0);
    
-- should be casting 39380, not 39381 every 35 seconds
-- should be casting 39381 every 35 seconds, 6 seconds after 39380
-- (updated in acid file)

UPDATE creature_template SET ModelId1 = 24721, MovementType=1, AIName = 'NullAI' WHERE entry = 22507; -- Darkness Released should not react
DELETE FROM creature_template_addon WHERE entry = 22507;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(22507, 0, 0, 0, 0, 0, 0, '39303 39304'); -- Flying Skull (DND) and Flying Skull PATH (DND)

UPDATE creature_template SET UnitFlags = 33554432 WHERE entry = 22505; -- The Exorcism Slimer Bunny (DND) is not selectable
DELETE FROM creature_template_addon WHERE entry = 22505;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES 
(22505, 0, 0, 0, 0, 0, 0, '39300');

UPDATE creature_template SET MovementType = 1 WHERE entry = 22506; -- Foul Purge

-- The Exorcism Lightning Cloud Bunny
UPDATE creature_template SET UnitFlags=33554432, InhabitType=7 WHERE entry=22508;
DELETE FROM creature_template_addon WHERE entry=22508;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(22508, 0, 0, 0, 0, 0, 0, '39380'); -- The Exorcism Lightning Cloud Bunny Visual
