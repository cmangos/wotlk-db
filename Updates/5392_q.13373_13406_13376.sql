-- q.13373 'Fringe Science Benefits' - H
-- q.13406 'Riding the Wavelength: The Bombardment' - H -- daily
-- q.13376 'Total Ohmage: The Valley of Lost Hope!' - H -- daily

-- Core issue: air missles do not damage anyone
-- 59622 - alliance
-- 60287 - horde

DELETE FROM dbscripts_on_gossip WHERE id IN (1013201);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1013201,0,15,59779,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 59779 on Player'),
(1013201,1,15,59781,0,0,31690,530741,2|0x10,0,0,0,0,0,0,0,0,'Cast 59781');
-- universal for all 6 quests
DELETE FROM dbscripts_on_spell WHERE id IN (61373);
INSERT INTO dbscripts_on_spell (id, priority, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(61373,0,1,15,59780,0,0,0,0,6,0,0,0,0,0,0,0,0,20737,'Player cast 59780 (Horde short ver)'),
(61373,0,2,15,59552,0,0,0,0,6,0,0,0,0,0,0,0,0,20751,'Player cast 59552 (Allinace short ver)'),
(61373,1,1,15,61152,0,0,0,0,6,0,0,0,0,0,0,0,0,20738,'Player cast 61152 (Horde long ver)'),
(61373,1,2,15,61151,0,0,0,0,6,0,0,0,0,0,0,0,0,20752,'Player cast 61151 (Allinace long ver)'),
(61373,0,1900,14,59779,0,0,0,0,6,0,0,0,0,0,0,0,0,0,'Remove aura from Player'),
(61373,0,1900,14,59563,0,0,0,0,6,0,0,0,0,0,0,0,0,0,'Remove aura from Player');
DELETE FROM dbscripts_on_spell WHERE id IN (59781,59554);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 59781
(59781,0,15,59558,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 59558'),
(59781,1,15,61373,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cast 61373 on Player'),
(59781,2003,0,0,0,0,32317,100,3,33048,0,0,0,0,0,0,0,'buddy Say to Player'),
(59781,2200,15,59050,0,0,32152,100,1,0,0,0,0,0,0,0,0,'Player cast 59050 on buddy'),
-- 60938
(60938,0,15,60935,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast 60938'),
-- 59196
(59196,0,15,59186,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 59186'),
-- 59061 -- shield control
(59061,1 ,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,2 ,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,3 ,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,4 ,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,5 ,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,6 ,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,7 ,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,8 ,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,9 ,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,10,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,11,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,12,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,13,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,14,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,15,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,16,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,17,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,18,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,19,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,20,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,21,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,22,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,23,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,24,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,25,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,26,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,27,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,28,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,29,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
(59061,30,35,10,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 10'),
-- 60674 - shield control - must receive 100 on spawn
(60674,1  ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,2  ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,3  ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,4  ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,5  ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,6  ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,7  ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,8  ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,9  ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,10 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,11 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,12 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,13 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,14 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,15 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,16 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,17 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,18 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,19 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,20 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,21 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,22 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,23 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,24 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,25 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,26 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,27 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,28 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,29 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,30 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,31 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,32 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,33 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,34 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,35 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,36 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,37 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,38 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,39 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,40 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,41 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,42 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,43 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,44 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,45 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,46 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,47 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,48 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,49 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,50 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,51 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,52 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,53 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,54 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,55 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,56 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,57 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,58 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,59 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,60 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,61 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,62 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,63 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,64 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,65 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,66 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,67 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,68 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,69 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,70 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,71 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,72 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,73 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,74 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,75 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,76 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,77 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,78 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,79 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,80 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,81 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,82 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,83 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,84 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,85 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,86 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,87 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,88 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,89 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,90 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,91 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,92 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,93 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,94 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,95 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,96 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,97 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,98 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,99 ,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11'),
(60674,100,35,11,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send Event 11');
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `id` IN (33048);
UPDATE `broadcast_text` SET `ChatTypeID` = 5 WHERE `id` IN (33000);
-- switching sits
DELETE FROM dbscripts_on_spell WHERE id IN (59194,59196,59193);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(59194,0,35,5,10,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5'), -- Bomber Seat
(59196,0,35,6,10,0,0,0,0,0,0,0,0,0,0,0,0,'send event 6'), -- Turret Seat
(59193,0,35,8,10,0,0,0,0,0,0,0,0,0,0,0,0,'send event 8'); -- Engineering Seat
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20967 AND 20973;
INSERT INTO dbscripts_on_relay (id, priority, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- switching control scripts
(20967,1,0,14,59186,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: remove 59186'),
(20967,2,0,14,59050,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: remove 59050'),
(20967,3,0,15,59186,0,0,31856,20,1,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: Cast 59186 - switch to Bomber Seat'),
(20968,1,0,14,59186,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: remove 59186'),
(20968,2,0,14,59050,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: remove 59050'),
(20968,3,0,15,59186,0,0,31840,20,1,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: Cast 59186 - switch to Turret Seat'),
(20969,1,0,14,59186,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: remove 59186'),
(20969,2,0,14,59050,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: remove 59050'),
(20969,3,0,15,59186,0,0,32152,20,1,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: Cast 59186 - switch to Engineering Seat'),
-- 20970 - despawn check & screen effect despawn control
(20970,0,1,34,20740,0,0,0,0,2|0x08,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: allow if: Player is Dead OR NOT Within 10y of Source'),
(20970,0,99,15,61253,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: Player Self Cast 61253'),
(20970,0,110,15,60843,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: Player cast 60843'),
(20970,0,300,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: despawn'),
-- 20971 - phase & screen effect control
(20971,0,0,15,61253,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: Player Self Cast 61253'),
(20971,1,0,15,61352,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: Player Self Cast 61352'),
-- 20972 - rescue vehicle summon
(20972,0,0,15,61253,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: Player Self Cast 61253'),
(20972,0,10,15,60843,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: Player Self Cast 60843'),
-- 20973 - rescue vehicle summon control
(20973,0,0,15,60785,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: Player Cast 60785'),
(20973,1,0,25,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: SET RUN'),
(20973,0,1500,20,2,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Horde Infra-green Bomber 31838 EAI: SET waypoints');
DELETE FROM conditions WHERE condition_entry IN (20739,20740);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20739,1,60785,0,0,0,0,''),
(20740,36,0,10,0,0,0,'');
DELETE FROM spell_script_target WHERE entry IN(59780,59781,61152,61151);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
(59780,1,31690,0),
(59781,1,31690,0),
(61152,1,31690,0),
(61151,1,31690,0);
-- Horde Infra-green Bomber 31838
UPDATE creature_template SET InhabitType = 4, SpeedWalk=(3/2.5), SpeedRun=(9/7), RegenerateStats = 12, MovementType = 0 WHERE Entry = 31838;
DELETE FROM creature_movement_template WHERE entry = 31838;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(31838,1 ,7872.1294,2048.6143,615.19183,100,0,0),
(31838,2 ,7858.776,2032.2037,605.605   ,100,0,0),
(31838,3 ,7811.6997,1959.3219,564.63275,100,0,0),
(31838,4 ,7852.0547,1888.7974,506.18857,100,0,0),
(31838,5 ,7941.26,1817.8715,475.49423  ,100,0,0),
(31838,6 ,7881.5366,1757.9908,475.49426,100,0,0),
(31838,7 ,7818.5557,1674.3922,475.49426,100,0,0),
(31838,8 ,7618.7563,1691.8248,475.49426,100,0,0),
(31838,9 ,7577.5615,1786.8302,475.49426,100,0,0),
(31838,10,7625.683,1871.8463,475.49426 ,100,0,0),
(31838,11,7754.2153,1939.0469,475.49426,100,0,0),
(31838,12,7880.884,1812.4327,475.49426 ,100,0,0),
(31838,13,7733.94,1718.4203,475.49426  ,100,0,0),
(31838,14,7635.7563,1782.2776,475.49426,100,0,0),
(31838,15,7700.4478,1864.9171,484.96655,100,0,0),
(31838,16,7781.2847,1923.611,597.6606  ,100,0,0),
(31838,17,7836.3994,1982.7006,611.93823,100,0,0),
(31838,18,7839.882,2058.0815,625.66046 ,100,0,0),
(31838,19,7888.033,2063.2964,625.66046 ,100,100,1);
DELETE FROM vehicle_accessory WHERE vehicle_entry = 31838;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(31838,0,31856,''),
(31838,1,31840,''),
(31838,2,32152,''),
(31838,3,32214,''),
(31838,4,32215,''),
(31838,5,32215,''),
(31838,6,32256,''),
(31838,7,32317,'');
-- Horde Infra-green Bomber 32513
UPDATE creature_template SET InhabitType = 4, SpeedWalk=(3/2.5), SpeedRun=(9/7), RegenerateStats = 12, MovementType = 0 WHERE Entry = 32513;
DELETE FROM creature_movement_template WHERE entry = 32513;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(32513,1 ,7871.244,2048.149,615.1918,100,0,0),
(32513,2 ,7872.129,2048.614,615.1918,100,0,0),
(32513,3 ,7815.77,1974.439,600.2592 ,100,0,0),
(32513,4 ,7758.385,1953.485,556.176 ,100,0,0),
(32513,5 ,7718.626,1924.989,533.3427,100,0,0),
(32513,6 ,7710.321,1866.84,463.3983 ,100,0,0),
(32513,7 ,7601.251,1721.775,437.315 ,100,0,0),
(32513,8 ,7634.047,1573.212,438.3428,100,0,0),
(32513,9 ,7702.827,1421.51,438.3428 ,100,0,0),
(32513,10,7641.56,1363.377,438.3428 ,100,0,0),
(32513,11,7545.359,1429.353,438.3428,100,0,0),
(32513,12,7458.861,1465.568,438.3428,100,0,0),
(32513,13,7347.684,1436.012,438.3428,100,0,0),
(32513,14,7415.799,1345.656,438.3428,100,0,0),
(32513,15,7428.231,1258.39,438.3428 ,100,0,0),
(32513,16,7336.155,1232.056,430.7596,100,0,0),
(32513,17,7252.749,1388.232,438.3428,100,0,0),
(32513,18,7108.902,1366.375,418.704 ,100,0,0),
(32513,19,7076.674,1215.92,410.8152 ,100,0,0),
(32513,20,7127.042,1200.542,422.3429,100,0,0),
(32513,21,7161.133,1313.431,419.1209,100,0,0),
(32513,22,7382.813,1310.21,371.8429 ,100,0,0),
(32513,23,7549.667,1348.3,354.2595  ,100,0,0),
(32513,24,7639.869,1447.413,359.3983,100,0,0),
(32513,25,7699.018,1550.318,362.6484,100,0,0),
(32513,26,7723.795,1697.986,370.0372,100,0,0),
(32513,27,7605.182,1899.86,414.7226 ,100,0,0),
(32513,28,7852.731,1754.513,439.9178,100,0,0),
(32513,29,7920.346,1781.746,452.4734,100,0,0),
(32513,30,7841.425,1935.477,485.8625,100,0,0),
(32513,31,7916.054,1946.418,532.0013,100,0,0),
(32513,32,7948.884,2046.022,600.3901,100,0,0),
(32513,33,7894.499,2059.292,633.2789,100,0,0),
(32513,34,7894.499,2059.292,633.2789,100,100,1);
DELETE FROM vehicle_accessory WHERE vehicle_entry = 32513;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(32513,0,31856,''),
(32513,1,31840,''),
(32513,2,32152,''),
(32513,3,32214,''),
(32513,4,32215,''),
(32513,5,32215,''),
(32513,6,32256,''),
(32513,7,32317,'');
-- Horde Engineering Seat 32152
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Expansion = 0, UnitClass = 8, NpcFlags = 0, Faction = 35, RegenerateStats = 12, InhabitType = 4, VehicleTemplateId = 297, SpellList = 3215201 WHERE Entry = 32152;
DELETE FROM creature_spell_list_entry WHERE Id IN(3215201);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3215201, 'Horde Engineering Seat 32152 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3215201);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3215201', '0', '59061', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Engineering Seat 32152 - Charge Shield'),
('3215201', '1', '61093', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Engineering Seat 32152 - Fight Fire'),
('3215201', '3', '59196', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Engineering Seat 32152 - Anti-Air Turret'),
('3215201', '4', '59194', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Engineering Seat 32152 - Bomber Bay'),
('3215201', '5', '59193', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Engineering Seat 32152 - Engineering');
-- Horde Turret Seat 31840
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Expansion = 0, UnitClass = 8, NpcFlags = 0, Faction = 35, RegenerateStats = 12, InhabitType = 4, VehicleTemplateId = 292, SpellList = 3184001 WHERE Entry = 31840;
DELETE FROM creature_spell_list_entry WHERE Id IN(3184001);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3184001, 'Horde Turret Seat 31840 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3184001);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3184001', '0', '60287', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Turret Seat 31840 - Anti-Air Rocket'),
('3184001', '1', '61313', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Turret Seat 31840 - Emergency Rocket Loader'),
('3184001', '3', '59196', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Turret Seat 31840 - Anti-Air Turret'),
('3184001', '4', '59194', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Turret Seat 31840 - Bomber Bay'),
('3184001', '5', '59193', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Turret Seat 31840 - Engineering');
-- Horde Bomber Seat 31856
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Expansion = 0, UnitClass = 8, NpcFlags = 0, Faction = 35, RegenerateStats = 12, InhabitType = 4, VehicleTemplateId = 288, SpellList = 3185601 WHERE Entry = 31856;
DELETE FROM creature_spell_list_entry WHERE Id IN(3185601);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3185601, 'Horde Bomber Seat 31856 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3185601);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3185601', '0', '59059', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Bomber Seat 31856 - Launch Bomb'),
('3185601', '3', '59196', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Bomber Seat 31856 - Anti-Air Turret'),
('3185601', '4', '59194', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Bomber Seat 31856 - Bomber Bay'),
('3185601', '5', '59193', '0', '-1', '0', '0', '100', '1','0','0','0','0','Horde Bomber Seat 31856 - Engineering');
-- Shield Visual Loc Bunny 32256
-- Banner Bunny, Hanging, Horde 32214
-- Banner Bunny, Side, Horde 32215
-- Horde Rescue Craft 32348
UPDATE creature_template SET Faction = 714, InhabitType = 4, SpeedWalk=(3/2.5), SpeedRun=(30/7),UnitFlags = 768 WHERE Entry = 32348;
DELETE FROM vehicle_accessory WHERE vehicle_entry = 32348;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(32348,0,32317,'Horde Bomber Pilot on Horde Rescue Craft');
DELETE FROM creature_movement_template WHERE entry = 32348;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(32348,1,7890.016,2060.201,632.5093,100,0,0),
(32348,2,7890.016,2060.201,632.5093,100,5000,3234801);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3234801);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3234801,10,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Self Send EventAI 5'),
(3234801,1000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
