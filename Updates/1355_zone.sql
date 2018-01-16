-- Taunka'le Village - Borean Tundra

-- Duplicates Removed
-- creatures around Taunka'le Village
DELETE FROM creature WHERE guid IN (103139,103140,103082,103086,103070,102887,103071,103091,103068,103083,103069,103084,102877,102870,104928,103022,102872,104867,103231,103089,103088,103146,103090,103105,103195,103092,103135,103234,103145,103150,114593);
DELETE FROM creature_addon WHERE guid IN (103139,103140,103082,103086,103070,102887,103071,103091,103068,103083,103069,103084,102877,102870,104928,103022,102872,104867,103231,103089,103088,103146,103090,103105,103195,103092,103135,103234,103145,103150,114593);
DELETE FROM creature_movement WHERE id IN (103139,103140,103082,103086,103070,102887,103071,103091,103068,103083,103069,103084,102877,102870,104928,103022,102872,104867,103231,103089,103088,103146,103090,103105,103195,103092,103135,103234,103145,103150,114593);
DELETE FROM game_event_creature WHERE guid IN (103139,103140,103082,103086,103070,102887,103071,103091,103068,103083,103069,103084,102877,102870,104928,103022,102872,104867,103231,103089,103088,103146,103090,103105,103195,103092,103135,103234,103145,103150,114593);
DELETE FROM game_event_creature_data WHERE guid IN (103139,103140,103082,103086,103070,102887,103071,103091,103068,103083,103069,103084,102877,102870,104928,103022,102872,104867,103231,103089,103088,103146,103090,103105,103195,103092,103135,103234,103145,103150,114593);
DELETE FROM creature_battleground WHERE guid IN (103139,103140,103082,103086,103070,102887,103071,103091,103068,103083,103069,103084,102877,102870,104928,103022,102872,104867,103231,103089,103088,103146,103090,103105,103195,103092,103135,103234,103145,103150,114593);
DELETE FROM creature_linking WHERE guid IN (103139,103140,103082,103086,103070,102887,103071,103091,103068,103083,103069,103084,102877,102870,104928,103022,102872,104867,103231,103089,103088,103146,103090,103105,103195,103092,103135,103234,103145,103150,114593) 
OR master_guid IN (103139,103140,103082,103086,103070,102887,103071,103091,103068,103083,103069,103084,102877,102870,104928,103022,102872,104867,103231,103089,103088,103146,103090,103105,103195,103092,103135,103234,103145,103150,114593);

-- Some missing emotes in quests
-- q.11906 'Cleaning Up the Pools'
UPDATE quest_template SET OfferRewardEmote1 = 1, OfferRewardEmote2 = 2, OfferRewardEmoteDelay2 = 2000 WHERE entry = 11906;
-- q.11907 'The Sub-Chieftains'
UPDATE quest_template SET OfferRewardEmote1 = 1, OfferRewardEmote2 = 2, OfferRewardEmoteDelay2 = 2000 WHERE entry = 11907;
-- q.11909 'Defeat the Gearmaster'
UPDATE quest_template SET IncompleteEmote = 6, CompleteEmote = 6, OfferRewardEmote1 = 1, OfferRewardEmote2 = 2, OfferRewardEmoteDelay2 = 2000 WHERE entry = 11909;

-- Greatmother Taiga - gossip
UPDATE creature_template SET GossipMenuId = 9172 WHERE entry = 25602;
DELETE FROM gossip_menu WHERE entry = 9172;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9172, 12440, 0, 0);

-- Pahu Frosthoof - gossip
UPDATE creature_template SET GossipMenuId = 9614 WHERE entry = 26709;
DELETE FROM gossip_menu WHERE entry = 9614;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9614, 11607, 0, 0);

-- Mother Tauranook - gossip
UPDATE creature_template SET GossipMenuId = 9248 WHERE entry = 26158;
DELETE FROM gossip_menu WHERE entry = 9248;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9248, 12556, 0, 0);

-- Greatfather Mahan 
DELETE FROM creature_questrelation WHERE id = 24702 AND quest IN (11684);
INSERT INTO creature_questrelation (id, quest) VALUES
(24702,11684);
DELETE FROM creature_involvedrelation WHERE id = 24702 AND quest IN (11684);
INSERT INTO creature_involvedrelation (id, quest) VALUES
(24702,11684);

-- Event
-- Chieftain Wintergale / Durm Icehide / Sage Aeire
DELETE FROM dbscripts_on_relay WHERE id = 20022;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20022,0,31,24706,30,0,0,0,0,0,0,0,0,0,0,0,0,'Durm Icehide - terminate if not found'),
(20022,0,31,24709,100,0,0,0,0,0,0,0,0,0,0,0,0,'Sage Aeire - terminate if not found'),
(20022,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(20022,1,21,1,0,0,24706,50,7,0,0,0,0,0,0,0,0,'Durm Icehide - active'),
(20022,1,21,1,0,0,24709,50,7,0,0,0,0,0,0,0,0,'Sage Aeire - active'),
(20022,1,0,0,0,0,0,0,0,2000001530,0,0,0,0,0,0,0,''),
(20022,7,0,0,0,0,0,0,0,2000001531,0,0,0,0,0,0,0,''),
(20022,11,28,0,0,0,24706,107737,7 | 0x10,0,0,0,0,0,0,0,0,'Durm Icehide - STATE_STAND'),
(20022,13,0,0,0,0,24706,107737,7 | 0x10,2000001532,0,0,0,0,0,0,0,''),
(20022,20,0,0,0,0,24706,107737,7 | 0x10,2000001533,0,0,0,0,0,0,0,''),
(20022,23,0,0,0,0,0,0,0,2000001534,0,0,0,0,0,0,0,''),
(20022,31,0,0,0,0,0,0,0,2000001535,0,0,0,0,0,0,0,''),
(20022,37,0,0,0,0,24709,108020,7 | 0x10,2000001536,0,0,0,0,0,0,0,''),
(20022,45,0,0,0,0,24706,107737,7 | 0x10,2000001537,0,0,0,0,0,0,0,''),
(20022,50,0,0,0,0,0,0,0,2000001538,0,0,0,0,0,0,0,''),
(20022,54,28,8,0,0,24706,107737,7 | 0x10,0,0,0,0,0,0,0,0,'Durm Icehide - STATE_KNEEL'),
(20022,56,0,0,0,0,0,0,0,2000001539,0,0,0,0,0,0,0,''),
(20022,57,21,0,0,0,24706,50,7,0,0,0,0,0,0,0,0,'Durm Icehide - unactive'),
(20022,57,21,0,0,0,24709,50,7,0,0,0,0,0,0,0,0,'Sage Aeire - unactive'),
(20022,58,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001530 AND 2000001539;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001530,'The Scourge has us surrounded. We can hold the village for awhile, but if we can\'t defeat them, they will overrun us.',0,0,0,5,NULL),
(2000001531,'The time has come to act. We must decide how to deal with the Scourge before it consumes us.',0,0,0,1,NULL),
(2000001532,'The choice is clear. We must attack. I know the odds are against us, but Taunka do not go quietly to the slaughter.',0,0,0,25,NULL),
(2000001533,'I\'ll die with my axes in my hands and drenched in the blood of our foes!',0,0,0,53,NULL),
(2000001534,'I won\'t sacrifice my warriors for romantic notions of glorious death on the battlefield. What use is fighting for survival if no one survives?',0,0,0,1,NULL),
(2000001535,'There will be a time for battle, Durm. But first, we must find a way to even the odds. What would you have me do, Aeire?',0,0,0,6,NULL),
(2000001536,'The ancestors knew a way to confound an enemy\'s senses. We could use this knowledge to discover the Scourge\'s weakness or strike at their commanders. Without their leaders, the Scourge would fall before our warriors.',0,0,0,1,NULL),
(2000001537,'A dishonorable scheme.',0,0,0,274,NULL),
(2000001538,'What is your honor worth, Durm? Your life? Mine? The life of blind old Greatfather Mahan, who raised you from childhood?',0,0,0,1,NULL),
(2000001539,'Honor is meaningless to a dead man. A warrior may throw himself into battle for honor\'s sake, but a chieftain is responsible for far more. We will follow Sage Aeire\'s plan and continue to defend our village.',0,0,0,1,NULL);

-- Wind Tamer Oril
UPDATE creature SET position_x = 3496.821045, position_y = 4229.913574, position_z = 12.475541, orientation = 0.969682, spawndist = 0, MovementType = 2 WHERE guid = 104993;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 26725;
DELETE FROM creature_movement WHERE id = 104993;
DELETE FROM creature_movement_template WHERE entry = 26725;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(26725,1,3496.821045,4229.913574,12.475541,13000,2672501,0.969682),
(26725,2,3475.48,4233.25,12.4755,0,0,2.98423),
(26725,3,3446.5,4237.54,12.4755,0,0,2.65829),
(26725,4,3430.88,4246.04,13.1169,0,0,2.61116),
(26725,5,3427.23,4248.13,13.9013,0,0,2.69363),
(26725,6,3422.49,4250.4,16.4569,0,0,2.69363),
(26725,7,3416.16,4253.7,20.3978,0,0,3.02271),
(26725,8,3400.16,4253.52,18.312,0,0,3.12167),
(26725,9,3392.1,4253.43,16.4531,0,0,3.1256),
(26725,10,3385.44,4253.55,17.7862,0,0,3.14916),
(26725,11,3376.55,4253.43,17.1211,0,0,3.20021),
(26725,12,3371.75,4253.09,17.2938,0,0,1.7433),
(26725,13,3371.53,4260.1,14.6228,0,0,1.62156),
(26725,14,3370.98,4266.14,12.8306,0,0,1.70403),
(26725,15,3367.97,4299.76,12.5099,13000,2672502,1.67654),
(26725,16,3382.28,4287.97,12.5102,0,0,5.60352),
(26725,17,3403.52,4273.59,12.9449,0,0,5.88233),
(26725,18,3409.66,4270.41,14.2626,0,0,6.24754),
(26725,19,3415.24,4268.7,16.9694,0,0,0.423811),
(26725,20,3420.44,4271.79,17.6083,0,0,0.831433),
(26725,21,3425.02,4277.33,17.496,0,0,0.188192),
(26725,22,3438.88,4278.87,16.6089,0,0,0.110123),
(26725,23,3449.82,4279.56,14.6025,0,0,0.0787075),
(26725,24,3457.38,4280.06,15.457,0,0,0.0669265),
(26725,25,3467.59,4280.69,15.6357,0,0,0.0276566),
(26725,26,3479.01,4280.02,16.4486,0,0,6.22052),
(26725,27,3488.57,4279.62,19.1806,0,0,6.24016),
(26725,28,3495.81,4279.02,16.2748,0,0,6.18911),
(26725,29,3506.17,4277.28,15.3394,0,0,6.16947),
(26725,30,3512.67,4276.54,16.2472,0,0,6.16947),
(26725,31,3522.5,4274.91,16.0971,0,0,6.07523),
(26725,32,3531.71,4274.09,15.9842,0,0,6.14984),
(26725,33,3537.27,4271.6,15.5906,0,0,5.43513),
(26725,34,3539.78,4266.86,16.2125,0,0,5.14847),
(26725,35,3542.44,4259.36,16.8814,0,0,5.07385),
(26725,36,3544.7,4253.1,14.87,0,0,5.03459),
(26725,37,3546.65,4247.6,16.3654,0,0,5.08956),
(26725,38,3549.22,4240.34,17.1565,0,0,5.38409),
(26725,39,3554.33,4235.32,15.4483,0,0,5.45477),
(26725,40,3560.25,4228.1,14.9756,0,0,5.42336),
(26725,41,3564.11,4223.71,17.0056,0,0,5.46263),
(26725,42,3570.18,4216.76,16.9396,0,0,5.45477),
(26725,43,3574.07,4212.56,15.8895,0,0,5.4587),
(26725,44,3578.18,4208.08,17.9743,0,0,5.40372),
(26725,45,3583.76,4201.17,17.3556,0,0,5.39587),
(26725,46,3589.61,4194.67,13.3536,0,0,5.4155),
(26725,47,3597.18,4185.51,12.9299,0,0,5.75322),
(26725,48,3610.86,4185.56,13.0229,0,0,0.176881),
(26725,49,3623.41,4188.69,13.1989,0,0,0.64812),
(26725,50,3630.42,4195.19,14.9663,0,0,0.832688),
(26725,51,3639.81,4205.96,15.4698,0,0,1.00548),
(26725,52,3644.98,4215.74,17.6134,0,0,1.46493),
(26725,53,3644.3,4221.59,15.8383,0,0,1.70448),
(26725,54,3643.74,4232.8,13.9643,0,0,1.58274),
(26725,55,3643.15,4243.84,13.7022,0,0,1.5906),
(26725,56,3643.25,4252.26,14.0495,0,0,1.53955),
(26725,57,3644.22,4262.13,14.0686,0,0,1.08402),
(26725,58,3650.59,4271.15,13.0906,13000,2672503,0.875885),
(26725,59,3645.16,4262.68,14.1223,0,0,4.48871),
(26725,60,3643.53,4246.79,13.903,0,0,4.70469),
(26725,61,3643.94,4232.19,14.0732,0,0,4.72825),
(26725,62,3644.32,4221.45,15.8883,0,0,4.7636),
(26725,63,3644.97,4214.69,17.7221,0,0,4.5641),
(26725,64,3642.7,4205.36,16.7041,0,0,4.41488),
(26725,65,3636.92,4191.21,15.7937,0,0,3.98135),
(26725,66,3631.87,4187.83,15.1207,0,0,3.70939),
(26725,67,3625.38,4183.35,14.6839,0,0,3.68976),
(26725,68,3617.75,4178.72,17.8886,0,0,3.66227),
(26725,69,3612.63,4175.81,17.079,0,0,3.67012),
(26725,70,3607.59,4172.86,22.01,0,0,2.3695),
(26725,71,3603.45,4175.19,20.6213,0,0,2.56585),
(26725,72,3595.93,4179.93,15.3279,0,0,2.58549),
(26725,73,3588.26,4184.16,15.3175,0,0,2.65617),
(26725,74,3581.8,4187.65,16.164,0,0,2.04827),
(26725,75,3577.09,4195.03,14.6035,0,0,2.13661),
(26725,76,3569.69,4206.61,14.213,0,0,2.12483),
(26725,77,3563.72,4215.83,17.9436,0,0,2.56073),
(26725,78,3556.62,4219.93,17.6179,0,0,2.62615),
(26725,79,3548.01,4224.74,17.5617,0,0,2.64579),
(26725,80,3542.5,4227.8,14.6672,0,0,2.6183),
(26725,81,3531.05,4234.32,12.8433,0,0,3.36836),
(26725,82,3518.27,4231.84,12.4755,0,0,3.34087),
(26725,83,3495.72,4227.63,12.4755,0,0,1.19673);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2672501 AND 2672503;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 1st
(2672501,0,14,45528,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2672501,2,15,32992,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2672501,7,10,26726,6000,0,0,0,8,0,0,0,0,3510.997,4247.915,32.87595,4.328416,'summon - Borean Tundra Air Elemental'),
(2672501,8,0,0,0,0,0,0,0,2000001540,2000001541,2000001542,0,0,0,0,0,''),
(2672501,11,15,45528,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
-- 2nd
(2672502,0,14,45528,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2672502,2,15,32992,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2672502,7,10,26726,6000,0,0,0,8,0,0,0,0,3366.2,4322.5,33.0575,4.52998,'summon - Borean Tundra Air Elemental'),
(2672502,8,0,0,0,0,0,0,0,2000001540,2000001541,2000001542,0,0,0,0,0,''),
(2672502,11,15,45528,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
-- 3rd
(2672503,0,14,45528,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2672503,2,15,32992,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2672503,7,10,26726,6000,0,0,0,8,0,0,0,0,3664.76,4288.51,33.1887,4.02342,'summon - Borean Tundra Air Elemental'),
(2672503,8,0,0,0,0,0,0,0,2000001540,2000001541,2000001542,0,0,0,0,0,''),
(2672503,11,15,45528,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001540 AND 2000001542;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001540,'North wind! You will do as I command!',0,0,0,22,NULL),
(2000001541,'You are bound to me, spirit! Your task is to keep the mill running - do not falter!',0,0,0,22,NULL),
(2000001542,'Bend the wind to the task of keeping the mill turning, spirit!',0,0,0,22,NULL);

-- Borean Tundra Air Elemental
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, FactionAlliance = 1922, FactionHorde = 1922, UnitFlags = 33555200, InhabitType = 4, MinLevelHealth = 8982, MaxLevelHealth = 8982, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, MinMeleeDmg = 291, MaxMeleeDmg = 3196 WHERE entry = 26726;
