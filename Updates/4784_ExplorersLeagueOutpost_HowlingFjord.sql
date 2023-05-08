-- GENERIC RELAY for jumps added
DELETE FROM dbscripts_on_relay WHERE id = 30599;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30599,0,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - set Idle');

-- Explorers League Outpost - Howling Fjord
-- q.11485 'Iron Rune Constructs and You: Rocket Jumping' - update
DELETE FROM dbscripts_on_relay WHERE id = 20091;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(20091,1,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'fly'),
(20091,2,0,0,0,0,0,0,0,0,23860,0,0,0,0,0,0,0,0,0,0,''),
(20091,500,0,20,15,30599,0,0,0,0x04,0,0,0,0,40,514.5781,-5936.898,314.1357,4.658857,10,0,'jump'),
(20091,6000,0,15,44499,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20091,6000,0,14,46598,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- q.11495 'The Delicate Sound of Thunder' - update
UPDATE spell_area SET condition_id = 0 WHERE spell = 44643;
DELETE FROM conditions WHERE condition_entry = 1570;
UPDATE dbscripts_on_relay SET delay = 1 WHERE id = 20102 AND delay = 0;

-- q.11501 'News From the East'
-- Relay Updates
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20096 AND 20101;
DELETE FROM dbscripts_on_relay WHERE id = 20103;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
-- 20096
(20096,1,0,15,44626,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot A1->A2: self cast - Rocket Jump'),
(20096,2,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot A1->A2: fly'),
(20096,3,0,0,0,0,0,0,0,4,23860,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot A1->A2'),
(20096,500,0,20,15,30599,0,0,0,0x04,0,0,0,0,40,156.974,-5712.34,189.415,100,10,0,'Part of Transport Bot A1->A2 - jump'),
(20096,10000,0,39,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot A1->A2: fly off'),
(20096,10001,0,14,44626,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot A1->A2'),
-- 20097
(20097,1,0,15,44626,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot B1->B2: self cast - Rocket Jump'),
(20097,2,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot B1->B2: fly'),
(20097,3,0,0,0,0,0,0,0,4,23860,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot B1->B2'),
(20097,500,0,20,15,30599,0,0,0,0x04,0,0,0,0,40,255.696,-5890.89,83.068,100,15,0,'Part of Transport Bot B1->B2 - jump'),
(20097,15000,0,39,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot B1->B2: fly off'),
(20097,15001,0,14,44626,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot B1->B2'),
-- 20098
(20098,1,0,15,44626,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot C1->C2: self cast - Rocket Jump'),
(20098,2,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot C1->C2: fly'),
(20098,3,0,0,0,0,0,0,0,4,23860,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot C1->C2'),
(20098,500,0,20,15,30599,0,0,0,0x04,0,0,0,0,40,154.164,-5830.07,8.53965,100,14,0,'Part of Transport Bot C1->C2 - jump'),
(20098,19000,0,39,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot C1->C2: fly off'),
(20098,19001,0,14,44626,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot C1->C2'),
-- 20099
(20099,1,0,15,44626,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D1->D2: self cast - Rocket Jump'),
(20099,2,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D1->D2: fly'),
(20099,3,0,0,0,0,0,0,0,4,23860,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D1->D2'),
(20099,500,0,20,15,30599,0,0,0,0x04,0,0,0,0,40,283.977,-5754.11,268.456,0.638801,18,0,'Part of Transport Bot D1->D2 - jump'),
(20099,18000,0,39,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D1->D2: fly off'),
(20099,18001,0,14,44626,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D1->D2'),
-- 20100
(20100,1,0,15,44626,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D2: self cast - Rocket Jump'),
(20100,2,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D2: fly'),
(20100,3,0,0,0,0,0,0,0,4,23860,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D2'),
(20100,500,0,20,15,30599,0,0,0,0x04,0,0,0,0,40,285.899,-5752.5,268.456,0.638801,10,0,'Part of Transport Bot D2 - jump'),
(20100,10000,0,39,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D2: fly off'),
(20100,10001,0,14,44626,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D2'),
-- 20101
(20101,1,0,15,44626,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D3: self cast - Rocket Jump'),
(20101,2,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D3: fly'),
(20101,3,0,0,0,0,0,0,0,4,23860,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D3'),
(20101,500,0,20,15,30599,0,0,0,0x04,0,0,0,0,40,286.142,-5752.52,268.456,0.638801,14,0,'Part of Transport Bot D3 - jump'),
(20101,14000,0,39,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D3: fly off'),
(20101,14001,0,14,44626,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Part of Transport Bot D3'),
-- 20103
(20103,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852: active'),
(20103,1000,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852: fly'),
(20103,1000,0,0,0,0,0,0,0,4,23860,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852'),
(20103,2000,0,15,44687,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852: self cast - Rocket Jump'),
(20103,2001,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852: self cast - Rocket Jump'),
(20103,2002,0,20,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852: - SET Path 1'),
(20103,80000,0,0,0,0,0,0,0,4,23930,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852'),
(20103,81000,0,39,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct: fly off'),
(20103,82000,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852: unactive'),
(20103,83000,0,15,44741,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Iron Rune Construct 24852');
-- Iron Rune Construct 24852
UPDATE creature_template SET SpeedRun = 5.5 WHERE entry = 24852;
DELETE FROM creature_movement_template WHERE entry = 24852;
INSERT INTO creature_movement_template (entry,pathid,point,positionx,positiony,positionz,orientation,waittime,scriptid) VALUES
(24852,1,1,479.253,-5941.49,365.988,100,0,0),
(24852,1,2,517.013,-5825.36,365.988,100,0,0),
(24852,1,3,527.903,-5659.93,365.988,100,0,0),
(24852,1,4,715.063,-5351.07,365.988,100,0,0),
(24852,1,5,768.455,-5018.86,365.988,100,0,0),
(24852,1,6,840.628,-4827.73,365.988,100,0,0),
(24852,1,7,864.831,-4741.8,365.988,100,0,0),
(24852,1,8,966.031,-4488.41,365.988,100,0,0),
(24852,1,9,1030.84,-4374.21,346.46,100,0,0),
(24852,1,10,1063.38,-4205.25,346.46,100,0,0),
(24852,1,11,1066.28,-4072.6,289.821,100,0,0),
(24852,1,12,1066.46,-3833.81,282.96,100,0,0),
(24852,1,13,1236.65,-3685.51,282.96,100,0,0),
(24852,1,14,1357.56,-3430.12,217.877,100,10,0),
(24852,1,15,1382.81,-3290.73,217.877,100,0,0),
(24852,1,16,1388.93,-3261.84,203.738,100,0,0),
(24852,1,17,1390.47,-3262.22,161.96,100,0,0);
