-- q.10540 'The Cipher of Damnation - Ar'tor's Charge'
-- Script corrected
DELETE FROM dbscripts_on_creature_death WHERE id = 20427;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(20427, 0, 0, 0, 21332, 100, 0x20, 2000000330, 'say veneratus epilogue 1'),
(20427, 3, 0, 0, 21332, 100, 0x20, 2000000331, 'say veneratus epilogue 2'),
(20427, 5, 15, 36781, 21332, 100, 0x20, 0, 'cast Despawn Spirit Hunter'),
(20427, 6, 14, 36620, 0, 0, 0x06, 0, 'remove Spirit Hunter aura'),
(20427, 6, 18, 0, 21332, 100, 0x04 | 0x20, 0, 'despawn spirit hunter');
-- Spirit Hunter
UPDATE creature_template SET Expansion = 1, UnitClass = 2, MinLevelHealth = 27945, MaxLevelHealth = 27945, MinLevelMana = 3155, MaxLevelMana = 3155, RangedBaseAttackTime = 2000, MeleeAttackPower = 286, RangedAttackPower = 33, MinMeleeDmg = 249, MaxMeleeDmg = 346, MinRangedDmg = 122, MaxRangedDmg = 155, Armor = 6708 WHERE entry = 21332;

-- Veneratus Spawn Node
-- only one should be able to spawn
DELETE FROM creature WHERE guid IN (140594,74703,74704,74707,74705);
DELETE FROM creature_addon WHERE guid IN (140594,74703,74704,74707,74705);
DELETE FROM creature_movement WHERE id IN (140594,74703,74704,74707,74705);
DELETE FROM game_event_creature WHERE guid IN (140594,74703,74704,74707,74705);
DELETE FROM game_event_creature_data WHERE guid IN (140594,74703,74704,74707,74705);
DELETE FROM creature_battleground WHERE guid IN (140594,74703,74704,74707,74705);
DELETE FROM creature_linking WHERE guid IN (140594,74703,74704,74707,74705) OR master_guid IN (140594,74703,74704,74707,74705);
-- should be spawned in random place in that area
UPDATE creature SET Spawntimesecs = 120, Spawndist = 0, MovementType = 2 WHERE guid = 74706;
DELETE FROM creature_movement WHERE id = 74706;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(74706,1,-4052.75,2586.53,127.789, 0, 0,4.76409, 0, 0),
(74706,2,-4050.5,2548.83,132.288, 0, 0,3.73522, 0, 0),
(74706,3,-4083.53,2537.06,137.527, 0, 0,3.34252, 0, 0),
(74706,4,-4114.67,2531.67,140.796, 0, 0,3.3386, 0, 0),
(74706,5,-4079.74,2540.31,137.45, 0, 0,0.303032, 0, 0),
(74706,6,-4058.69,2537.41,133.835, 0, 0,5.88721, 0, 0),
(74706,7,-4050.3,2523.88,134.341, 0, 0,4.98793, 0, 0),
(74706,8,-4049.14,2484.39,137.671, 0, 0,4.79551, 0, 0),
(74706,9,-4050.65,2528.64,134.363, 0, 0,1.63428, 0, 0),
(74706,10,-4051.78,2559.35,132.431, 0, 0,1.63821, 0, 0),
(74706,11,-4052.37,2582.25,127.946, 0, 0,1.59894, 0, 0),
(74706,12,-4052.56,2604.12,129.027, 0, 0,1.55182, 0, 0),
(74706,13,-4049.43,2631.94,124.874, 0, 0,1.68691, 0, 0),
(74706,14,-4042.84,2656.45,128.467, 0, 0,1.89111, 0, 0),
(74706,15,-4048.03,2673.24,133.098, 0, 0,2.00107, 0, 0),
(74706,16,-4053.59,2686.23,139.401, 0, 0,1.9775, 0, 0),
(74706,17,-4043.24,2659.54,129.091, 0, 0,4.80494, 0, 0),
(74706,18,-4044.65,2638.3,124.111, 0, 0,4.59681, 0, 0),
(74706,19,-4051.03,2616.96,127.649, 0, 0,4.45937, 0, 0);

-- Spirit Hunter
Delete from `creature_ai_scripts` where `creature_id`= 21332;
Insert into `creature_ai_scripts` values 
('2133201','21332','11','0','100','0','0','0','0','0','50','1','0','0','0','0','0','0','0','0','0','0','Spirit Hunter - Set Defensive State on Spawn');
UPDATE creature_template SET AIName='EventAI' WHERE `entry` = '21332';
