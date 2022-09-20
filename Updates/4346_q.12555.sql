-- q.12555 'A Tangled Skein'
-- Part of Plague Sprayer 28274 EAI:
DELETE FROM dbscripts_on_relay WHERE `id` = 20659;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20659,3500,15,53236,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Plague Sprayer 28274 EAI: cast: Plague Sprayer: Huge Explosion'),
(20659,3510,15,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Plague Sprayer 28274 EAI: cast: Plague Sprayer: die'),
(20659,3600,15,51314,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Plague Sprayer 28274 EAI: cast: A Tangled Skein: Summon Broken Plague Sprayer'),
(20659,3700,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Plague Sprayer 28274 EAI: cast: Plague Sprayer: despawn');
-- Plague Sprayer 28274
DELETE FROM `creature_spawn_data` WHERE guid BETWEEN 522128 AND 522143;
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(522128,2),(522129,2),(522130,2),(522131,2),(522132,2),
(522133,2),(522134,2),(522135,2),(522136,2),(522137,2),
(522138,2),(522139,2),(522140,2),(522141,2),(522142,2),
(522143,2);
-- Malas the Corrupter 28255
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` = 27674; -- Yell
