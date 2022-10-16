-- Zim'Torga - Zul'Drak

-- Yamuna 28831
UPDATE creature_template SET MovementType = 2 WHERE entry IN (28831);
UPDATE creature SET position_x = 5774.632, position_y = -3559.887, position_z = 386.7439, spawndist = 0, MovementType = 2 WHERE id = 28831;
DELETE FROM `creature_movement_template` WHERE entry IN (28831);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(28831,0,1,5774.632,-3559.887,386.7439,100,0,0),
(28831,0,2,5768.704,-3556.946,386.7439,100,0,0),
(28831,0,3,5760.043,-3559.421,386.8905,100,0,0),
(28831,0,4,5752.965,-3564.472,386.6405,100,0,0),
(28831,0,5,5750.362,-3572.27,386.6188,100,0,0),
(28831,0,6,5754.377,-3580.56,386.6188,100,0,0),
(28831,0,7,5763.624,-3585.347,386.6188,100,0,0),
(28831,0,8,5769.47,-3583.793,386.6188,100,0,0),
(28831,0,9,5774.806,-3577.9,386.7438,100,0,0),
(28831,0,10,5776.741,-3569.496,386.7438,100,0,0),
(28831,0,11,5774.632,-3559.887,386.7439,100,0,0);
-- Saree 28829
UPDATE creature_template SET MovementType = 2 WHERE entry IN (28829);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 28829;
DELETE FROM `creature_movement_template` WHERE entry IN (28829);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(28829,0,1,5759.659,-3581.314,386.695,3.682645,120000,0),
(28829,0,2,5755.886,-3573.972,386.8688,3.700098,180000,0);
-- Chin'ika 28832
UPDATE creature_template SET MovementType = 4 WHERE entry IN (28832);
UPDATE creature SET spawndist = 0, MovementType = 4 WHERE id = 28832;
DELETE FROM `creature_movement_template` WHERE entry IN (28832);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(28832,0,1,5771.052,-3568.831,387.2438,0.541052,300000,0),
(28832,0,2,5772.02,-3568.333,387.2438,100,0,0),
(28832,0,3,5773.54,-3564.822,386.9939,100,0,0),
(28832,0,4,5770.52,-3562.18,387.1189,1.32645,300000,0);
-- Ansari 28828
UPDATE creature_template SET MovementType = 2 WHERE entry IN (28828);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 28828;
DELETE FROM `creature_movement_template` WHERE entry IN (28828);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(28828,0,1,5782.703,-3536.884,388.4939,4.153883,240000,0),
(28828,0,2,5766.771,-3541.03,386.8689,2.892337,240000,0);
DELETE FROM creature_addon WHERE guid IN (SELECT `guid` FROM `creature` WHERE `id` IN (28527,28479,28480,28484,28827,29583,28832,28828,28830,28831,28829,28855,28624));
UPDATE `creature_template_addon` SET `auras`= 51749 WHERE entry IN (28527,28479,28480,28484,28827);
DELETE FROM `creature_template_addon` WHERE `entry` IN (29583,28832,28828,28830,28831,28829,28855,28624);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(29583,0,0,1,1,0,0,51749),
(28832,0,0,1,1,0,0,51749),
(28828,0,0,1,1,0,0,51749),
(28830,0,0,1,1,0,0,51749),
(28831,0,0,1,1,0,0,51749),
(28829,0,0,1,1,0,0,51749),
(28855,0,0,1,1,0,0,51749),
(28624,0,0,1,1,0,0,51749);
-- Ra'wiri 28830
UPDATE creature_template SET MovementType = 2 WHERE entry IN (28830);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 28830;
DELETE FROM `creature_movement_template` WHERE entry IN (28830);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(28830,0,1,5785.643,-3590.281,387.3688,2.617994,400000,0),
(28830,0,2,5779.545,-3570.587,386.6189,100,0,0),
(28830,0,3,5774.797,-3550.833,386.6189,100,0,0),
(28830,0,4,5761.477,-3549.435,386.6405,100,0,0),
(28830,0,5,5750.535,-3564.666,386.6405,100,0,0),
(28830,0,6,5749.817,-3580.157,386.6188,100,0,0),
(28830,0,7,5759.719,-3590.341,386.6188,100,0,0),
(28830,0,8,5771.472,-3588.823,386.6188,100,0,0),
(28830,0,9,5785.643,-3590.281,387.3688,100,0,0);
-- Zim'Torga Defender 28387
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 522519;
DELETE FROM `creature_movement` WHERE id IN (522519);
INSERT INTO `creature_movement` (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(522519,1,5795.185,-3565.883,386.7977,3.124139,60000,0),
(522519,2,5795.185,-3565.883,386.7977,3.124139,25000,2838701),
(522519,3,5777.36,-3553.416,386.6189,100,0,0),
(522519,4,5760.104,-3542.975,387.0155,100,0,0),
(522519,5,5752.698,-3506.358,384.6919,100,0,0),
(522519,6,5742.749,-3463.787,376.7929,2.932153,60000,0),
(522519,7,5742.749,-3463.787,376.7929,2.932153,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2838701);
INSERT INTO dbscripts_on_creature_movement (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2838701,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(2838701,10,35,5,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event AI');
-- Element-Tamer Dagoda 28480
DELETE FROM dbscripts_on_relay WHERE id IN (20664);
INSERT INTO dbscripts_on_relay (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(20664,20000,14,51754,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Element-Tamer Dagoda 28480 EAI: unaura'),
(20664,21000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.141,'Part of Element-Tamer Dagoda 28480 EAI: reset orientation');
