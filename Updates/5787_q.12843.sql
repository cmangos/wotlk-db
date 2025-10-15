-- q.12843 'They Took Our Men!'
-- player should be able to get more keys (40641) than 1
UPDATE quest_template SET ReqSourceCount2 = 5 WHERE entry = 12843;
DELETE FROM `spell_script_target` WHERE `entry` = 54530;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(54530, 1, 29466, 5);
-- Goblin Prisoner 29466
UPDATE creature SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE id = 29466;
DELETE FROM dbscripts_on_relay WHERE id IN (20452,20453,20481,20482,20483,20484,20485,20486,20487,20488);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20452
(20452,1,1,4,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: emote'),
(20452,100,0,0,0,0,0,0,0,30139,30140,30141,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: random say'),
(20452,1000,25,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: RUN ON'),
(20452,5000,3,0,0,0,0,0,0x004,0,0,0,0,6734.01,-998.246,769.064,5.2,'Part of Goblin Prisoner 29466 EAI: move'),
(20452,7500,18,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: despawn'),
-- 20453
(20453,1,1,4,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: emote'),
(20453,100,0,0,0,0,0,0,0,30139,30140,30141,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: random say'),
(20453,1000,25,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: RUN ON'),
(20453,5000,3,0,0,0,0,0,0x004,0,0,0,0,6766.42,-1121.39,775.882,4.2,'Part of Goblin Prisoner 29466 EAI: move'),
(20453,7500,18,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: despawn'),
-- 20481
(20481,1,1,4,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: emote'),
(20481,100,0,0,0,0,0,0,0,30139,30140,30141,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: random say'),
(20481,1000,25,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: RUN ON'),
(20481,5000,3,0,0,0,0,0,0x004,0,0,0,0,6803.1465,-1058.3334,769.5679,3.8,'Part of Goblin Prisoner 29466 EAI: move'),
(20481,7500,18,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: despawn'),
-- 20482
(20482,1,1,4,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: emote'),
(20482,100,0,0,0,0,0,0,0,30139,30140,30141,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: random say'),
(20482,1000,25,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: RUN ON'),
(20482,5000,3,0,0,0,0,0,0x004,0,0,0,0,6799,-1074.08,769.964,2.94,'Part of Goblin Prisoner 29466 EAI: move'),
(20482,7500,18,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: despawn'),
-- 20483
(20483,1,1,4,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: emote'),
(20483,100,0,0,0,0,0,0,0,30139,30140,30141,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: random say'),
(20483,1000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: RUN ON'),
(20483,5000,3,0,0,0,0,0,0x04,0,0,0,0,6721.6455,-1111.9796,769.09406,1.18,'Part of Goblin Prisoner 29466 EAI: move'),
(20483,7500,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: despawn'),
-- 20484
(20484,1,1,4,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: emote'),
(20484,100,0,0,0,0,0,0,0,30139,30140,30141,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: random say'),
(20484,1000,25,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: RUN ON'),
(20484,5000,3,0,0,0,0,0,0x004,0,0,0,0,6856.75,-1094.65,803.458,0.68,'Part of Goblin Prisoner 29466 EAI: move'),
(20484,7500,18,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: despawn'),
-- 20485
(20485,1,1,4,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: emote'),
(20485,100,0,0,0,0,0,0,0,30139,30140,30141,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: random say'),
(20485,1000,25,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: RUN ON'),
(20485,5000,3,0,0,0,0,0,0x004,0,0,0,0,6902.11,-1055.88,807.584,3.11,'Part of Goblin Prisoner 29466 EAI: move'),
(20485,7500,18,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: despawn'),
-- 20486
(20486,1,1,4,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: emote'),
(20486,100,0,0,0,0,0,0,0,30139,30140,30141,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: random say'),
(20486,1000,25,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: RUN ON'),
(20486,5000,3,0,0,0,0,0,0x004,0,0,0,0,6756.91,-954.716,771.285,5.83,'Part of Goblin Prisoner 29466 EAI: move'),
(20486,7500,18,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: despawn'),
-- 20487
(20487,1,1,4,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: emote'),
(20487,100,0,0,0,0,0,0,0,30139,30140,30141,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: random say'),
(20487,1000,25,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: RUN ON'),
(20487,5000,3,0,0,0,0,0,0x004,0,0,0,0,6871.43,-1109.53,804.322,1.14,'Part of Goblin Prisoner 29466 EAI: move'),
(20487,7500,18,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: despawn'),
-- 20488
(20488,1,1,4,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: emote'),
(20488,100,0,0,0,0,0,0,0,30139,30140,30141,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: random say'),
(20488,1000,25,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: RUN ON'),
(20488,5000,3,0,0,0,0,0,0x004,0,0,0,0,6685.2373,-1129.1075,763.03046,6.16,'Part of Goblin Prisoner 29466 EAI: move'),
(20488,7500,18,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Goblin Prisoner 29466 EAI: despawn');
