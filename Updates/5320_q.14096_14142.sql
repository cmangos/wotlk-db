-- q.14096 'You've Really Done It This Time, Kul' - A
-- q.14142 'You've Really Done It This Time, Kul' - H
DELETE FROM spell_script_target WHERE entry = 66531;
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(66531,1,34716,0),
(66531,1,34956,0);
-- Captive Aspirant 34716
DELETE FROM dbscript_random_templates WHERE id = 20353;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20353,0,35180,0,'Captive Aspirant 34716 - Random Say on SpellHit 1'),
(20353,0,35181,0,'Captive Aspirant 34716 - Random Say on SpellHit 2'),
(20353,0,35182,0,'Captive Aspirant 34716 - Random Say on SpellHit 3'),
(20353,0,35183,0,'Captive Aspirant 34716 - Random Say on SpellHit 4'),
(20353,0,35184,0,'Captive Aspirant 34716 - Random Say on SpellHit 5');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20876 AND 20892;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20876
(20876,1,12,0,0,0,195310,10,7,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: close cage'),
-- 20877
(20877,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20877,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20877,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20877,3000,3,0,0,0,0,0,2,0,0,0,0,8557.06,1703.99,642.095,4.53527,'Part of Captive Aspirant 34716 EAI: move'),
-- 20878
(20878,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20878,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20878,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20878,3000,3,0,0,0,0,0,2,0,0,0,0,8523.35,1630.3,643.031,0.502246,'Part of Captive Aspirant 34716 EAI: move'),
-- 20879
(20879,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20879,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20879,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20879,3000,3,0,0,0,0,0,2,0,0,0,0,8558.47,1497.54,642.103,2.32201,'Part of Captive Aspirant 34716 EAI: move'),
-- 20880
(20880,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20880,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20880,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20880,3000,3,0,0,0,0,0,2,0,0,0,0,8550.13,1534.86,642.094,4.71982,'Part of Captive Aspirant 34716 EAI: move'),
-- 20881
(20881,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20881,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20881,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20881,3000,3,0,0,0,0,0,2,0,0,0,0,8566.14,1512.48,642.234,2.69742,'Part of Captive Aspirant 34716 EAI: move'),
-- 20882
(20882,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20882,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20882,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20882,3000,3,0,0,0,0,0,2,0,0,0,0,8562.39,1672.22,642.096,2.43431,'Part of Captive Aspirant 34716 EAI: move'),
-- 20883
(20883,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20883,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20883,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20883,3000,3,0,0,0,0,0,2,0,0,0,0,8535.88,1568.85,643.894,6.17673,'Part of Captive Aspirant 34716 EAI: move'),
-- 20884
(20884,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20884,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20884,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20884,3000,3,0,0,0,0,0,2,0,0,0,0,8572.54,1618.45,642.096,4.96722,'Part of Captive Aspirant 34716 EAI: move'),
-- 20885
(20885,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20885,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20885,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20885,3000,3,0,0,0,0,0,2,0,0,0,0,8504.43,1418.86,642.118,6.20815,'Part of Captive Aspirant 34716 EAI: move'),
-- 20886
(20886,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20886,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20886,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20886,3000,3,0,0,0,0,0,2,0,0,0,0,8529.52,1513.33,642.118,6.18459,'Part of Captive Aspirant 34716 EAI: move'),
-- 20887
(20887,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20887,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20887,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20887,3000,3,0,0,0,0,0,2,0,0,0,0,8557.46,1611.1,642.095,6.1139,'Part of Captive Aspirant 34716 EAI: move'),
-- 20888
(20888,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20888,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20888,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20888,3000,3,0,0,0,0,0,2,0,0,0,0,8541.4,1391.14,642.096,2.13193,'Part of Captive Aspirant 34716 EAI: move'),
-- 20889
(20889,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20889,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20889,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20889,3000,3,0,0,0,0,0,2,0,0,0,0,8556.33,1594.59,642.094,0.317658,'Part of Captive Aspirant 34716 EAI: move'),
-- 20890
(20890,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20890,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20890,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20890,3000,3,0,0,0,0,0,2,0,0,0,0,8536.99,1501.41,642.084,1.12662,'Part of Captive Aspirant 34716 EAI: move'),
-- 20891
(20891,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20891,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20891,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20891,3000,3,0,0,0,0,0,2,0,0,0,0,8563.61,1528.37,642.127,3.99332,'Part of Captive Aspirant 34716 EAI: move'),
-- 20892
(20892,1,0,20353,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Random Say'),
(20892,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: emote'),
(20892,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Captive Aspirant 34716 EAI: Run ON'),
(20892,3000,3,0,0,0,0,0,2,0,0,0,0,8594.25,1602.05,642.098,3.31395,'Part of Captive Aspirant 34716 EAI: move');

-- Kul the Reckless 34956
DELETE FROM dbscript_random_templates WHERE id = 20354;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20354,0,35789,0,'Kul the Reckless 34956 - Random Say on SpellHit 1'),
(20354,0,35790,0,'Kul the Reckless 34956 - Random Say on SpellHit 2'),
(20354,0,35791,0,'Kul the Reckless 34956 - Random Say on SpellHit 3'),
(20354,0,35792,0,'Kul the Reckless 34956 - Random Say on SpellHit 4'),
(20354,0,35793,0,'Kul the Reckless 34956 - Random Say on SpellHit 5');
DELETE FROM dbscripts_on_relay WHERE id = 20893;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20893,1,0,20354,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Kul the Reckless 34956 EAI: Random Say'),
(20893,2,1,5,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Kul the Reckless 34956 EAI: emote'),
(20893,3,25,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Kul the Reckless 34956 EAI: Run ON'),
(20893,3000,3,0,0,0,0,0,2,0,0,0,0,8463.4,1625.79,670.677,5.21619,'Part of Kul the Reckless 34956 EAI: move');
