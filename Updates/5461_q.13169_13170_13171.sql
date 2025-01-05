-- q.13169 'An Undead's Best Friend'
-- q.13170 'Honor is for the Weak'
-- q.13171 'From Whence They Came'

-- Bloody Meat 31119
UPDATE creature_template SET MinLevel = 1, MaxLevel = 1, Faction = 35, UnitFlags = 33555200 WHERE Entry = 31119;
-- Hungering Plaguehound 30952
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21105 AND 21109;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21105,1,32,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Hungering Plaguehound 30952 EAI: pause'),
(21105,2,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Hungering Plaguehound 30952 EAI: run'),
(21105,3,48,768,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Hungering Plaguehound 30952 EAI: unitflag added'),
(21105,100,37,0,0,1,31119,15,1,0,0,0,0,0,0,0,0,'Part of Hungering Plaguehound 30952 EAI: move towards target'),
(21105,3000,1,51,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Hungering Plaguehound 30952 EAI: emote'),
(21105,6000,1,51,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Hungering Plaguehound 30952 EAI: emote'),
(21105,10000,15,50917,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Hungering Plaguehound 30952 EAI: cast 50917'),
(21105,40000,14,50917,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Hungering Plaguehound 30952 EAI: unaura'),
(21106,0,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Eidolon Watcher 31110 EAI: send self event 5'),
(21107,0,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Hungering Plaguehound 30952 EAI: unpause'),
(21107,1,3,0,0,0,0,0,0x04,1,0,0,0,0,0,0,0,'Part of Hungering Plaguehound 30952 EAI: move home'),
(21107,3,48,768,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Hungering Plaguehound 30952 EAI: unitflag removed'),
(21108,1,15,58664,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Eidolon Watcher 31110 EAI: Player cast 58664'),
(21109,1,34,20862,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Eidolon Watcher 31110 EAI: area check'),
(21109,10,14,46598,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Eidolon Watcher 31110 EAI: aura drop');
-- spell fixes
DELETE FROM spell_target_position WHERE Id IN(58664);
INSERT INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(58664,571,8393.92,2677.09,657.793,4.31);
-- area check for vehicle
DELETE FROM conditions WHERE condition_entry BETWEEN 20860 AND 20862;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20860, 4, 4477, 0),
(20861, 4, 4517, 0),
(20862, -2, 20861, 20860);
