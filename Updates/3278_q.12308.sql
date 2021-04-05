-- q.12308 'Escape from Silverbrook'
DELETE FROM dbscripts_on_quest_start WHERE id = 12308;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12308,1,13,0,0,0,188706,10,1,0,0,0,0,0,0,0,0,'use object'),
(12308,100,35,5,20,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send event AI 5'),
(12308,200,18,0,20,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
UPDATE quest_template SET StartScript = 12308 WHERE entry = 12308;

-- Caged Prisoner 27499
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 27499;

-- Freed Alliance Scout 27411
UPDATE creature_template SET UnitFlags = 512 WHERE entry = 27411;
-- set by script
DELETE FROM creature_movement_template WHERE entry = 27411;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27411,1,4398.481,-2501.865,253.3859,100,0,0),
(27411,2,4389.731,-2501.865,252.3859,100,0,0),
(27411,3,4382.731,-2502.365,247.1359,100,0,0),
(27411,4,4381.731,-2497.865,247.6359,100,0,0),
(27411,5,4384.231,-2493.365,247.8859,100,0,0),
(27411,6,4389.981,-2489.365,248.1359,100,0,0),
(27411,7,4395.981,-2484.365,249.6359,100,0,0),
(27411,8,4405.981,-2482.865,249.3859,100,0,0),
(27411,9,4418.481,-2483.865,247.3859,100,0,0),
(27411,10,4423.112,-2486.405,246.6237,100,100000,0);
-- Part of Freed Alliance Scout 27411 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20531);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20531,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: Active'),
(20531,100,0,0,0,0,0,0,0x04,2000020791,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: text'),
(20531,5000,0,0,0,0,0,0,0x04,2000020792,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: text'),
(20531,13000,0,0,0,0,0,0,0x04,2000020793,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: text'),
(20531,16000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: RUN ON'),
(20531,17000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: waypoints'),
(20531,27000,15,48651,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: Cast 48651'),
(20531,27010,0,0,0,0,0,0,0x04,2000020794,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: text'),
(20531,28500,15,46598,0,0,27409,20,1,0,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: Cast 46598'),
(20531,31000,0,0,0,0,0,0,0x04,2000020795,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: text'),
(20531,31010,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Freed Alliance Scout 27411 EAI: idle');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020791 AND 2000020795;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020791,'Were you bitten?',0,0,7,274,NULL),
(2000020792,'Answer me!  Were you bloody bitten?',0,1,7,5,NULL),
(2000020793,'You don\'t even know, do you?  The trappers?  They\'re not human... we have to get out of here!  Come, quick!',0,0,7,25,NULL),
(2000020794,'Take Ducal\'s horse, he\'s one of them now!',0,0,7,25,NULL),
(2000020795,'There\'s lamp oil in the back - make use of it.  The fiends hate fire!',0,0,7,0,NULL);

-- Ducal's Horse 27409
UPDATE creature_template SET RegenerateStats = 0 WHERE entry = 27409;
DELETE FROM creature_movement_template WHERE entry = 27409;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27409,1,4427.231,-2487.371,246.8763,100,0,0),
(27409,2,4439.731,-2474.871,244.1263,100,0,0),
(27409,3,4450.231,-2462.371,242.1263,100,0,0),
(27409,4,4460.981,-2445.371,238.1263,100,0,0),
(27409,5,4480.481,-2433.121,235.3763,100,0,0),
(27409,6,4482.481,-2424.871,234.8763,100,0,0),
(27409,7,4490.731,-2418.371,232.3763,100,0,0),
(27409,8,4500.8,-2412.266,230.2234,100,0,0),
(27409,9,4513.243,-2393.173,222.9229,100,0,0),
(27409,10,4520.99,-2374.492,214.0873,100,0,0),
(27409,11,4526.62,-2353.265,201.4655,100,0,0),
(27409,12,4519.878,-2331.47,190.61,100,0,0),
(27409,13,4501.87,-2310.048,181.36,100,0,0),
(27409,14,4484.828,-2303.546,184.2819,100,0,0),
(27409,15,4457.375,-2298.078,184.2495,100,0,0),
(27409,16,4443.514,-2294.442,187.6245,100,0,0),
(27409,17,4415.563,-2290.887,190.543,100,0,0),
(27409,18,4399.667,-2282.816,191.5332,100,0,0),
(27409,19,4370.157,-2274.146,187.6582,100,0,0),
(27409,20,4335.205,-2275.038,191.9844,100,0,0),
(27409,21,4312.232,-2275.153,201.7034,100,0,0),
(27409,22,4284.226,-2269.068,210.916,100,0,0),
(27409,23,4253.256,-2270.764,213.4014,100,0,0),
(27409,24,4221.248,-2277.436,215.2603,100,0,0),
(27409,25,4192.213,-2285.628,220.3296,100,0,0),
(27409,26,4160.2,-2271.898,222.928,100,0,0),
(27409,27,4124.312,-2270.597,220.7406,100,0,0),
(27409,28,4094.865,-2275.65,218.8955,100,0,0),
(27409,29,4081.022,-2267.798,216.8792,100,0,0),
(27409,30,4065.489,-2259.489,215.865,100,0,0),
(27409,31,4052.476,-2255.44,217.74,100,0,0),
(27409,32,4034.528,-2256.881,218.365,100,0,0),
(27409,33,4021.582,-2250.545,217.322,100,0,0),
(27409,34,3981.944,-2264.207,215.8422,100,0,0),
(27409,35,3966.277,-2269.288,215.3362,100,0,0),
(27409,36,3952.277,-2269.18,212.3362,100,0,0),
(27409,37,3931.951,-2275.707,209.6468,100,0,0),
(27409,38,3922.466,-2283.316,212.2762,100,0,0),
(27409,39,3919.914,-2303.723,209.9463,100,0,0),
(27409,40,3915.415,-2330.356,207.5713,100,0,0),
(27409,41,3908.574,-2356.284,206.1923,100,0,0),
(27409,42,3900.811,-2363.353,206.1923,100,0,0),
(27409,43,3888.022,-2367.574,203.0645,100,0,0),
(27409,44,3867.874,-2372.798,196.4395,100,0,0),
(27409,45,3834.913,-2387.753,188.0473,100,0,0),
(27409,46,3822.484,-2403.545,184.3428,100,0,0),
(27409,47,3816.375,-2418.095,184.8428,100,0,0),
(27409,48,3809.167,-2438.242,185.5716,100,0,0),
(27409,49,3807.758,-2460.549,189.0716,100,0,0),
(27409,50,3808.832,-2480.51,191.8877,100,0,0),
(27409,51,3808.766,-2499.933,195.8877,100,0,0),
(27409,52,3812.021,-2517.952,195.5489,100,0,0),
(27409,53,3817.274,-2532.323,196.7989,100,0,0),
(27409,54,3827.198,-2550.149,196.7685,100,0,0),
(27409,55,3839.727,-2589.692,197.6144,100,0,0),
(27409,56,3847.184,-2605.915,200.2676,100,0,0),
(27409,57,3867.583,-2639.472,202.9787,100,0,0),
(27409,58,3880.854,-2651.817,203.4787,100,0,0),
(27409,59,3886.737,-2662.271,207.4787,100,0,0),
(27409,60,3901.978,-2675.315,213.5333,100,0,0),
(27409,61,3915.575,-2697.126,221.1583,100,0,0),
-- jump
(27409,62,3900.599,-2742.796,218.7976,100,0,0),
(27409,63,3882.249,-2751.73,222.1409,100,0,0),
(27409,64,3867.24,-2762.568,224.3909,100,0,0),
(27409,65,3852.218,-2771.269,227.9414,100,0,0),
(27409,66,3831.533,-2772.025,226.0874,100,0,0),
(27409,67,3806.802,-2768.314,218.9624,100,0,0),
(27409,68,3785.613,-2774.697,215.3641,100,0,0),
(27409,69,3770.177,-2774.803,211.9891,100,0,0),
(27409,70,3759.599,-2784.104,209.3598,100,0,0),
(27409,71,3746.166,-2796.062,209.7348,100,0,0),
(27409,72,3729.369,-2802.187,209.745,100,0,0),
(27409,73,3712.04,-2814.039,212.87,100,0,0),
(27409,74,3700.114,-2824.23,216.87,100,0,0),
(27409,75,3689.32,-2830.224,217.3856,100,0,0),
(27409,76,3676.646,-2840.348,217.8673,100,0,0),
(27409,77,3666.938,-2851.039,216.7423,100,0,0),
(27409,78,3655.657,-2858.144,215.9471,100,0,0),
(27409,79,3634.925,-2860.837,214.8221,100,0,0),
(27409,80,3599.046,-2859.078,207.3933,100,0,0),
(27409,81,3578.333,-2849.693,200.6433,100,10,2740901), -- remove aggro from source
(27409,82,3543.305,-2829.962,196.7771,100,0,0),
(27409,83,3519.925,-2829.613,200.75,100,0,0),
(27409,84,3493.143,-2828.536,201.3407,100,0,0),
(27409,85,3460.065,-2817.23,201.8686,100,0,0),
(27409,86,3445.913,-2811.972,202.2436,100,100000,2740902); -- credit
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2740901 AND 2740902;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2740901,0,35,5,100,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send Event A'),
(2740902,100,15,50471,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Credit'), -- forces player to cast 50473 (core script)
(2740902,1000,15,50491,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Dismount Passengers 1 & 2'),
(2740902,2000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
-- Part of  Ducal's Horse 27409 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20532,20533,20534);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20532,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: Active'),
(20532,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: RUN ON'),
(20532,2000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: waypoints'),
(20533,100,15,48681,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: Cast 48681'),
(20533,500,15,48681,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: Cast 48681'),
(20534,100,15,48681,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: Cast 48681'),
(20534,500,15,48681,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: Cast 48681'),
(20534,900,15,48681,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of  Ducal\'s Horse 27409 EAI: Cast 48681');

DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27409);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(27409,48678,12308,1,12308,1,0);
DELETE FROM creature_template_spells WHERE entry IN (27409);
INSERT INTO creature_template_spells (entry,setId,spell1,spell2,spell3) VALUES
(27409,0,48677,48768,48783);
DELETE FROM spell_script_target WHERE entry IN(48682,48683);
-- s:48677 Burning Oil
DELETE FROM creature_cooldowns WHERE Entry IN(27409);
INSERT INTO creature_cooldowns(Entry, SpellId, CooldownMin, CooldownMax) VALUES
(27409,48677,5000,5000);

-- Silverbrook Worgen 27417
UPDATE creature_template SET Detection = 40, visibilityDistanceType = 3 WHERE entry = 27417;
