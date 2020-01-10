-- Add missing Greater Invisibility 16380 for Lordaeron Citizen 3617
DELETE FROM `creature_template_addon` WHERE `entry` = 3617;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(3617, 0, 0, 0, 0, 0, 0, '16380'); -- tbc-db b2_1_flags -> b2_1_pvp_state

