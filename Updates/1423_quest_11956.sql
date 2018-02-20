-- q.11956 'Finding the Phylactery'
-- Dusk
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, MinLevelHealth = 4050, MaxLevelHealth = 4050, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, MinMeleeDmg = 125, MaxMeleeDmg = 165, MovementType = 2, SpeedRun = 2.3, VehicleTemplateId = 110 WHERE entry = 28182;
DELETE FROM creature_movement_template WHERE entry = 28182;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(28182,1,3107.51,3820.06,23.2081,1000,5,0.350262),
(28182,2,3119.03,3823.74,22.461,0,0,0.495946),
(28182,3,3130.82,3829.05,21.9163,0,0,0.158225),
(28182,4,3143.22,3830.22,22.857,0,0,0.00114553),
(28182,5,3156.16,3829.3,24.2968,0,0,5.95996),
(28182,6,3179.77,3824.77,28.5792,0,0,6.27093),
(28182,7,3206.41,3826.19,25.6813,0,0,6.16299),
(28182,8,3246.14,3820.48,27.3101,0,0,6.25444),
(28182,9,3271.27,3821.85,27.2413,0,0,0.261856),
(28182,10,3296.01,3829.35,27.1717,0,0,0.0340908),
(28182,11,3322.45,3823.08,27.872,0,0,0.164466),
(28182,12,3334.93,3823.59,26.7278,0,0,0.246933),
(28182,13,3350.31,3827.09,26.2954,0,0,6.23559),
(28182,14,3398.23,3816.7,27.2672,0,0,0.101634),
(28182,15,3435.67,3825.33,26.6753,0,0,0.337681),
(28182,16,3458.48,3833.78,29.3692,0,0,0.184529),
(28182,17,3496.06,3840.65,32.9844,0,0,0.0902808),
(28182,18,3509.19,3841.75,32.8346,0,0,5.98862),
(28182,19,3520.69,3836.7,34.1593,0,0,5.53703),
(28182,20,3545.61,3807.17,40.5971,0,0,5.41922),
(28182,21,3570.66,3776.34,36.3301,0,0,5.22365),
(28182,22,3594.43,3730.88,36.5668,0,0,5.01788),
(28182,23,3614.24,3670.25,35.8094,0,1,5.03124);

DELETE FROM npc_spellclick_spells WHERE npc_entry = 26191;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, cast_flags, condition_id) VALUES
(26191, 46978, 0, 1, 1437);
DELETE FROM conditions WHERE condition_entry = 1437;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1437, 9, 11956, 1);

-- Event 17430 - corrected
DELETE FROM dbscripts_on_event WHERE id = 17430;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17430,1,10,26224,900000,0,0,0,0,0,0,0,0,3617.041,3646.625,25.00296,0.9803915,''),
(17430,1,10,26224,900000,0,0,0,0,0,0,0,0,3621.16,3648.702,24.47574,3.316126,''),
(17430,1,10,26224,900000,0,0,0,0,0,0,0,0,3615.691,3650.583,24.50422,4.84587,''),
(17430,2,10,26225,900000,0,0,0,0,0,0,0,0,3616.292,3647.634,24.34017,3.193953,'');
