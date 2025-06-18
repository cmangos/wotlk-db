-- Introduction Quests: The Argent Tournament

-- q.13829 'Mastery Of Melee' - H
-- q.13828 'Mastery Of Melee' - A
-- Melee Target 33229 
UPDATE creature_template SET StaticFlags1 = 34603278, StaticFlags2 = 1073741856, StaticFlags3 = 8421376 WHERE Entry = 33229;
-- spell targets
DELETE FROM spell_script_target WHERE entry IN (62709);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(62709, 1, 33844, 0),
(62709, 1, 33845, 0),
(62709, 1, 33217, 0),
(62709, 1, 33316, 0),
(62709, 1, 33317, 0),
(62709, 1, 33318, 0),
(62709, 1, 33319, 0),
(62709, 1, 33320, 0),
(62709, 1, 33321, 0),
(62709, 1, 33322, 0),
(62709, 1, 33323, 0),
(62709, 1, 33324, 0);

-- q.13838 'Mastery Of The Shield-Breaker' - H
-- q.13835 'Mastery Of The Shield-Breaker' - A
-- Ranged Target 33243
UPDATE creature_template SET StaticFlags1 = 34603278, StaticFlags2 = 1073741824, StaticFlags3 = 8421376 WHERE Entry = 33243;
UPDATE creature_template_addon SET auras = 64101 WHERE entry = 33243;
DELETE FROM dbscripts_on_spell WHERE id = 62575;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(62575,0,15,62626,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(62575,1000,14,62719,2,0,0,0,6,0,0,0,0,0,0,0,0,''),
(62575,1001,14,64100,2,0,0,0,6,0,0,0,0,0,0,0,0,''),
(62575,1100,15,64192,0,0,0,0,6,0,0,0,0,0,0,0,0,'');

-- q.13839 'Mastery Of The Charge' - H
-- q.13837 'Mastery Of The Charge' - A
-- Charge Target 33272
UPDATE creature_template SET StaticFlags1 = 34603278, StaticFlags2 = 1077936160, StaticFlags3 = 8421376 WHERE Entry = 33272;
UPDATE creature_template_addon SET auras = NULL WHERE entry = 33272;
DELETE FROM dbscripts_on_spell WHERE id = 62960;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(62960,0,15,63662,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(62960,1,15,63661,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(62960,2,15,62874,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(62960,1000,14,62719,2,0,0,0,6,0,0,0,0,0,0,0,0,''),
(62960,1001,14,64100,2,0,0,0,6,0,0,0,0,0,0,0,0,''),
(62960,1100,15,64192,0,0,0,0,6,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_relay WHERE id IN (21142);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21142,1,34,20940,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Charge Target 33272 EAI: aura check - stop if exist'),
(21142,10,15,62658,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Charge Target 33272 EAI: cast 62658');
DELETE FROM conditions WHERE condition_entry = 20940;
INSERT INTO conditions (condition_entry, type, value1, value2,flags) VALUES
(20940, 1, 64100, 0, 2);
