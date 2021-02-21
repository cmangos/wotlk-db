-- Arcturis 38453
-- correct spawn point
UPDATE creature SET position_x = 3582.4, position_y = -2766.76, position_z = 161.475, MovementType = 1, spawndist = 10 WHERE guid = 534454;
DELETE FROM `creature_template_addon` WHERE `entry`=38453;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES 
(38453,0,0,1,0,0,0,'61185');
