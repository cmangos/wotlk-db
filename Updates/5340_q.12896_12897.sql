-- q.12896 'If He Cannot Be Turned' - A
-- q.12897 'If He Cannot Be Turned' - H
DELETE FROM dbscripts_on_event WHERE id IN (19423);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19423,1,31,29851,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 29851'),
(19423,100,10,29851,300000,0,0,0,0,0,0,0,0,8578.751,2641.7883,652.3534,5.454587,'summon 29851'),
(19423,6000,31,29851,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29851'),
(19423,7000,10,29860,300000,0,0,0,0,0,0,0,0,8553.593,2652.8206,652.3534,5.745369,'summon 29860'),
(19423,16000,31,29851,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29851'),
(19423,17000,10,29858,300000,0,0,0,0,0,0,0,0,8598.224,2670.0774,652.4367,4.4809,'summon 29858'),
(19423,28000,31,29851,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29851'),
(19423,29000,10,29859,300000,0,0,0,0,0,0,0,0,8556.31,2633.7283,652.4367,0.349,'summon 29859');
-- General Lightsbane 29851
UPDATE creature_template SET MovementType = 2 WHERE entry IN (29851);
DELETE FROM `creature_movement_template` WHERE entry IN (29851);
INSERT INTO `creature_movement_template` (`entry`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(29851,1,8578.751,2641.7883,652.3534,5.454587,100,5),
(29851,2,8586.146,2633.7256,652.3534,100,100,3);
-- Relays
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20911 AND 20913;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- Vile 29860
(20911,1,31,29851,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Vile 29860 EAI: search for 29851'),
(20911,100,26,0,0,0,29851,100,1,0,0,0,0,0,0,0,0,'Part of Vile 29860 EAI: attack buddy'),
-- Lady Nightswood 29858
(20912,1,31,29851,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 29858 EAI: search for 29851'),
(20912,100,26,0,0,0,29851,100,1,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 29858 EAI: attack buddy'),
-- The Leaper 29859
(20913,1,31,29851,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of The Leaper 29859 EAI: search for 29851'),
(20913,100,26,0,0,0,29851,100,1,0,0,0,0,0,0,0,0,'Part of The Leaper 29859 EAI: attack buddy');
