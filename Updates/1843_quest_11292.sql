-- q.11292 'Preying Upon the Weak'

DELETE FROM dbscripts_on_quest_end WHERE id = 11292;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11292,0,31,24139,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24139'),
(11292,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(11292,1,21,1,0,0,24139,50,7,0,0,0,0,0,0,0,0,'buddy: active'),
(11292,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.605703,''),
(11292,2,0,0,0,0,0,0,0,2000001834,0,0,0,0,0,0,0,''),
(11292,7,0,0,0,0,24139,50,7,2000001835,0,0,0,0,0,0,0,'buddy: say'),
(11292,12,0,0,0,0,24139,50,7,2000001836,0,0,0,0,0,0,0,'buddy: say'),
(11292,18,0,0,0,0,0,0,0,2000001837,0,0,0,0,0,0,0,''),
(11292,23,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0.7679449,''),
(11292,23,21,0,0,0,24139,50,7,0,0,0,0,0,0,0,0,'buddy: unactive'),
(11292,24,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 11292 WHERE entry = 11292;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001834 AND 2000001837;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001834,'Hey, Gil, you give my offer any more thought? I\'ll have plenty of skins and preserved meat to trade for those heavy yeti furs or down your men are working with.',0,0,0,1,NULL),
(2000001835,'Much as I\'d like to do business with you, Jethan, all this stuff is the property of the Alliance expeditionary forces.',0,0,0,274,NULL),
(2000001836,'Maybe after everything dies down, you and I can make a deal with some of the surplus. I\'m sure the troops will give your people plenty of business as they head into the Grizzly Hills.',0,0,0,1,NULL),
(2000001837,'I\'ll be lookin\' forward to it. Guess I\'ll get to preserving this meat, then. A good quartermaster won\'t turn down a reliable supply of rations.',0,0,0,1,NULL);

-- Sprung Trap
DELETE FROM game_event_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE id IN (186616,186617,186619,186620));
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM gameobject WHERE id IN (186616,186617,186619,186620));
DELETE FROM gameobject WHERE id IN (186616,186617,186619,186620);
-- Redone for all
DELETE FROM game_event_gameobject WHERE guid BETWEEN 5710510 AND 5710673;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 5710510 AND 5710673;
DELETE FROM gameobject WHERE guid BETWEEN 5710510 AND 5710673;
INSERT INTO gameobject VALUES
-- Sprung Trap 186616
(5710510,186616,571,1,1,2460.38,-4600.82,233.664,2.26892,0,0,0.906306,0.422622,300,300,100,1),
(5710511,186616,571,1,1,2438.18,-4459.61,225.383,-1.97222,0,0,-0.833885,0.551938,300,300,100,1),
(5710512,186616,571,1,1,1934,-4609.42,198.994,1.32645,0,0,0.615661,0.788011,300,300,100,1),
(5710513,186616,571,1,1,2603.17,-4472.66,241.461,-1.64061,0,0,-0.731354,0.681998,300,300,100,1),
(5710514,186616,571,1,1,2389.61,-4574.09,222.496,1.62316,0,0,0.725376,0.688353,300,300,100,1),
(5710515,186616,571,1,1,2322.13,-4826.65,238.652,2.54818,0,0,0.956305,0.292372,300,300,100,1),
(5710516,186616,571,1,1,2134.73,-4463.94,217.625,-1.69297,0,0,-0.748956,0.66262,300,300,100,1),
(5710517,186616,571,1,1,2307.73,-4635.34,219.867,-0.087266,0,0,-0.0436192,0.999048,300,300,100,1),
(5710518,186616,571,1,1,2284.63,-4756.29,235.005,1.44862,0,0,0.662619,0.748957,300,300,100,1),
(5710519,186616,571,1,1,2199.65,-4633.7,214.218,-2.09439,0,0,-0.866024,0.500002,300,300,100,1),
(5710520,186616,571,1,1,2307.29,-4496.5,217.177,-1.91986,0,0,-0.819151,0.573577,300,300,100,1),
(5710521,186616,571,1,1,2295.91,-4527.08,220.047,3.07177,0,0,0.999391,0.0349043,300,300,100,1),
(5710522,186616,571,1,1,2155.9,-4289.85,222.679,-3.12412,0,0,-0.999962,0.00873622,300,300,100,1),
(5710523,186616,571,1,1,2243.3,-4560.33,214.783,2.9845,0,0,0.996917,0.0784656,300,300,100,1),
(5710524,186616,571,1,1,2265.97,-4279.81,229.291,0.209439,0,0,0.104528,0.994522,300,300,100,1),
(5710525,186616,571,1,1,2368.09,-4860.51,249.602,0.017452,0,0,0.00872589,0.999962,300,300,100,1),
(5710526,186616,571,1,1,2262.45,-4761.14,233.061,0.226892,0,0,0.113203,0.993572,300,300,100,1),
(5710527,186616,571,1,1,2233.76,-4481.99,217.464,-3.07177,0,0,-0.999391,0.0349043,300,300,100,1),
(5710528,186616,571,1,1,2020.19,-4628.09,211.647,-2.25147,0,0,-0.902584,0.430513,300,300,100,1),
(5710529,186616,571,1,1,2117.04,-4780.54,214.089,1.76278,0,0,0.771624,0.636079,300,300,100,1),
(5710530,186616,571,1,1,2239.83,-4839,233.964,-0.261798,0,0,-0.130525,0.991445,300,300,100,1),
(5710531,186616,571,1,1,2543.01,-5268.63,317.497,1.53589,0,0,0.694658,0.71934,300,300,100,1),
(5710532,186616,571,1,1,2401.26,-4832.77,248.091,3.01941,0,0,0.998134,0.0610534,300,300,100,1),
(5710533,186616,571,1,1,2430,-4082.45,232.584,-0.855211,0,0,-0.414693,0.909961,300,300,100,1),
(5710534,186616,571,1,1,1955.77,-5185.17,191.41,-2.96704,0,0,-0.996194,0.0871655,300,300,100,1),
(5710535,186616,571,1,1,2816.09,-4509.98,276.763,3.4383,0,0,-0.989016,0.147811,300,300,100,1),
(5710536,186616,571,1,1,3001.45,-4719.63,325.848,2.42601,0,0,0.936672,0.350207,300,300,100,1),
(5710537,186616,571,1,1,3117.85,-4729.58,336.046,5.49779,0,0,-0.382683,0.92388,300,300,100,1),
(5710538,186616,571,1,1,2415.05,-4423.18,226.107,3.33359,0,0,-0.995396,0.0958512,300,300,100,1),
(5710539,186616,571,1,1,2282.5,-4925.68,242.053,5.81195,0,0,-0.233445,0.97237,300,300,100,1),
(5710540,186616,571,1,1,2178.33,-5140.73,238.076,0.733038,0,0,0.358368,0.933581,300,300,100,1),
(5710541,186616,571,1,1,3080.75,-4408.37,332.096,-1.29154,0,0,-0.601814,0.798637,300,300,100,1),
(5710542,186616,571,1,1,2357.07,-4626.74,226.289,-1.09956,0,0,-0.5225,0.852639,300,300,100,1),
(5710543,186616,571,1,1,2082.25,-4579.19,216.29,-1.37881,0,0,-0.636078,0.771625,300,300,100,1),
(5710544,186616,571,1,1,2572.15,-4554.23,250.842,1.23918,0,0,0.580701,0.814117,300,300,100,1),
(5710545,186616,571,1,1,2581.31,-4495.6,248.18,2.02458,0,0,0.848047,0.529921,300,300,100,1),
(5710546,186616,571,1,1,2581.73,-4611.41,247.09,2.86233,0,0,0.990267,0.139178,300,300,100,1),
(5710547,186616,571,1,1,1978.89,-4700.31,203.189,1.39626,0,0,0.642786,0.766046,300,300,100,1),
(5710548,186616,571,1,1,2230.88,-4410.7,221.444,1.06465,0,0,0.507538,0.861629,300,300,100,1),
(5710549,186616,571,1,1,2395,-4501.86,216.421,-1.20428,0,0,-0.566407,0.824125,300,300,100,1),
(5710550,186616,571,1,1,2349.12,-4476.07,221.785,3.10665,0,0,0.999847,0.0174704,300,300,100,1),
(5710551,186616,571,1,1,1939.69,-4537.56,207.011,-1.20428,0,0,-0.566407,0.824125,300,300,100,1),
(5710552,186616,571,1,1,1915.08,-4545.85,197.759,-1.23918,0,0,-0.580701,0.814117,300,300,100,1),
(5710553,186616,571,1,1,2551.93,-4968.26,307.103,-1.0821,0,0,-0.515036,0.857168,300,300,100,1),
(5710554,186616,571,1,1,2652.68,-4553.54,253.091,0.244346,0,0,0.121869,0.992546,300,300,100,1),
(5710555,186616,571,1,1,2092.92,-5059.29,234.231,-0.261798,0,0,-0.130525,0.991445,300,300,100,1),
(5710556,186616,571,1,1,2532.65,-4666.31,251.252,0.453785,0,0,0.224951,0.97437,300,300,100,1),
(5710557,186616,571,1,1,2203.63,-5021.78,245.697,2.11185,0,0,0.870356,0.492423,300,300,100,1),
(5710558,186616,571,1,1,2579.15,-4715,260.338,-2.9845,0,0,-0.996917,0.0784656,300,300,100,1),
(5710559,186616,571,1,1,2407.65,-4213.82,238.645,-0.401425,0,0,-0.199368,0.979925,300,300,100,1),
(5710560,186616,571,1,1,2195.98,-4161.05,224.044,-0.680679,0,0,-0.333807,0.942641,300,300,100,1),
(5710561,186616,571,1,1,2513.7,-3934.22,269.538,2.1293,0,0,0.874619,0.48481,300,300,100,1),
(5710562,186616,571,1,1,2367.75,-4725.65,227.724,0.122173,0,0,0.0610485,0.998135,300,300,100,1),
(5710563,186616,571,1,1,2378.51,-4242.56,233.622,-2.47837,0,0,-0.945519,0.325567,300,300,100,1),
(5710564,186616,571,1,1,2432.45,-4252.84,241.846,0.820303,0,0,0.398748,0.91706,300,300,100,1),
(5710565,186616,571,1,1,2172.76,-4207.09,229.358,1.0472,0,0,0.500001,0.866025,300,300,100,1),
(5710566,186616,571,1,1,2462.62,-4821.07,254.343,-1.90241,0,0,-0.814116,0.580702,300,300,100,1),
(5710567,186616,571,1,1,2109.54,-4394.78,215.315,-0.349065,0,0,-0.173648,0.984808,300,300,100,1),
(5710568,186616,571,1,1,2014.87,-4786.53,203.106,-2.75761,0,0,-0.981626,0.190814,300,300,100,1),
(5710569,186616,571,1,1,2220.25,-4766.67,222.554,2.84488,0,0,0.989015,0.147813,300,300,100,1),
(5710570,186616,571,1,1,2224.41,-4988.43,243.704,-2.93214,0,0,-0.994521,0.104535,300,300,100,1),
(5710571,186616,571,1,1,2241.99,-5093.23,241.703,-1.25664,0,0,-0.587786,0.809016,300,300,100,1),
(5710572,186616,571,1,1,2122.64,-5181.95,240.478,-1.81514,0,0,-0.78801,0.615662,300,300,100,1),
(5710573,186616,571,1,1,2278.74,-4355.19,229.188,1.67551,0,0,0.743143,0.669133,300,300,100,1),
(5710574,186616,571,1,1,2116.55,-4941.42,235.503,2.54818,0,0,0.956305,0.292372,300,300,100,1),
(5710575,186616,571,1,1,2385.96,-4777.31,241.94,-0.767944,0,0,-0.374606,0.927184,300,300,100,1),
(5710576,186616,571,1,1,2487.69,-4361.06,252.545,-2.32129,0,0,-0.91706,0.398748,300,300,100,1),
(5710577,186616,571,1,1,3124.33,-4581.45,327.008,-1.309,0,0,-0.608763,0.793352,300,300,100,1),
(5710578,186616,571,1,1,2025.19,-4450.76,210.117,-0.942477,0,0,-0.45399,0.891007,300,300,100,1),
(5710579,186616,571,1,1,2470.26,-4532.03,236.652,-2.04204,0,0,-0.852641,0.522496,300,300,100,1),
(5710580,186616,571,1,1,2199.75,-5189.89,249.01,-0.890117,0,0,-0.430511,0.902586,300,300,100,1),
(5710581,186616,571,1,1,2191.92,-5258.43,251.347,-0.750491,0,0,-0.366501,0.930418,300,300,100,1),
(5710582,186616,571,1,1,2224.76,-5235.27,251.569,2.56563,0,0,0.958819,0.284016,300,300,100,1),
(5710583,186616,571,1,1,2538.34,-4428.93,232.199,-2.26892,0,0,-0.906307,0.422619,300,300,100,1),
(5710584,186616,571,1,1,2244.03,-4252.14,229.089,1.23918,0,0,0.580701,0.814117,300,300,100,1),
(5710585,186616,571,1,1,2278.25,-4663.01,220.678,-2.82743,0,0,-0.987688,0.156436,300,300,100,1),
(5710586,186616,571,1,1,2336,-4269.02,233.718,0.95993,0,0,0.461748,0.887011,300,300,100,1),
(5710587,186616,571,1,1,2243.38,-4202.68,225.091,1.81514,0,0,0.78801,0.615662,300,300,100,1),
(5710588,186616,571,1,1,2642.73,-4918.33,304.517,1.67551,0,0,0.743143,0.669133,300,300,100,1),
(5710589,186616,571,1,1,1988.31,-5019.75,213.006,0.977383,0,0,0.469471,0.882948,300,300,100,1),
(5710590,186616,571,1,1,2275.67,-4904.09,243.626,-2.46091,0,0,-0.942641,0.333809,300,300,100,1),
(5710591,186616,571,1,1,2048.05,-5067.82,225.171,0.157079,0,0,0.0784588,0.996917,300,300,100,1),
-- Sprung Trap 186619
(5710592,186619,571,1,1,2460.38,-4600.82,233.664,2.26892,0,0,0.906306,0.422622,300,300,100,1),
(5710593,186619,571,1,1,2438.18,-4459.61,225.383,-1.97222,0,0,-0.833885,0.551938,300,300,100,1),
(5710594,186619,571,1,1,1934,-4609.42,198.994,1.32645,0,0,0.615661,0.788011,300,300,100,1),
(5710595,186619,571,1,1,2603.17,-4472.66,241.461,-1.64061,0,0,-0.731354,0.681998,300,300,100,1),
(5710596,186619,571,1,1,2389.61,-4574.09,222.496,1.62316,0,0,0.725376,0.688353,300,300,100,1),
(5710597,186619,571,1,1,2322.13,-4826.65,238.652,2.54818,0,0,0.956305,0.292372,300,300,100,1),
(5710598,186619,571,1,1,2134.73,-4463.94,217.625,-1.69297,0,0,-0.748956,0.66262,300,300,100,1),
(5710599,186619,571,1,1,2307.73,-4635.34,219.867,-0.087266,0,0,-0.0436192,0.999048,300,300,100,1),
(5710600,186619,571,1,1,2284.63,-4756.29,235.005,1.44862,0,0,0.662619,0.748957,300,300,100,1),
(5710601,186619,571,1,1,2199.65,-4633.7,214.218,-2.09439,0,0,-0.866024,0.500002,300,300,100,1),
(5710602,186619,571,1,1,2307.29,-4496.5,217.177,-1.91986,0,0,-0.819151,0.573577,300,300,100,1),
(5710603,186619,571,1,1,2295.91,-4527.08,220.047,3.07177,0,0,0.999391,0.0349043,300,300,100,1),
(5710604,186619,571,1,1,2155.9,-4289.85,222.679,-3.12412,0,0,-0.999962,0.00873622,300,300,100,1),
(5710605,186619,571,1,1,2243.3,-4560.33,214.783,2.9845,0,0,0.996917,0.0784656,300,300,100,1),
(5710606,186619,571,1,1,2265.97,-4279.81,229.291,0.209439,0,0,0.104528,0.994522,300,300,100,1),
(5710607,186619,571,1,1,2368.09,-4860.51,249.602,0.017452,0,0,0.00872589,0.999962,300,300,100,1),
(5710608,186619,571,1,1,2262.45,-4761.14,233.061,0.226892,0,0,0.113203,0.993572,300,300,100,1),
(5710609,186619,571,1,1,2233.76,-4481.99,217.464,-3.07177,0,0,-0.999391,0.0349043,300,300,100,1),
(5710610,186619,571,1,1,2020.19,-4628.09,211.647,-2.25147,0,0,-0.902584,0.430513,300,300,100,1),
(5710611,186619,571,1,1,2117.04,-4780.54,214.089,1.76278,0,0,0.771624,0.636079,300,300,100,1),
(5710612,186619,571,1,1,2239.83,-4839,233.964,-0.261798,0,0,-0.130525,0.991445,300,300,100,1),
(5710613,186619,571,1,1,2543.01,-5268.63,317.497,1.53589,0,0,0.694658,0.71934,300,300,100,1),
(5710614,186619,571,1,1,2401.26,-4832.77,248.091,3.01941,0,0,0.998134,0.0610534,300,300,100,1),
(5710615,186619,571,1,1,2430,-4082.45,232.584,-0.855211,0,0,-0.414693,0.909961,300,300,100,1),
(5710616,186619,571,1,1,1955.77,-5185.17,191.41,-2.96704,0,0,-0.996194,0.0871655,300,300,100,1),
(5710617,186619,571,1,1,2816.09,-4509.98,276.763,3.4383,0,0,-0.989016,0.147811,300,300,100,1),
(5710618,186619,571,1,1,3001.45,-4719.63,325.848,2.42601,0,0,0.936672,0.350207,300,300,100,1),
(5710619,186619,571,1,1,3117.85,-4729.58,336.046,5.49779,0,0,-0.382683,0.92388,300,300,100,1),
(5710620,186619,571,1,1,2415.05,-4423.18,226.107,3.33359,0,0,-0.995396,0.0958512,300,300,100,1),
(5710621,186619,571,1,1,2282.5,-4925.68,242.053,5.81195,0,0,-0.233445,0.97237,300,300,100,1),
(5710622,186619,571,1,1,2178.33,-5140.73,238.076,0.733038,0,0,0.358368,0.933581,300,300,100,1),
(5710623,186619,571,1,1,3080.75,-4408.37,332.096,-1.29154,0,0,-0.601814,0.798637,300,300,100,1),
(5710624,186619,571,1,1,2357.07,-4626.74,226.289,-1.09956,0,0,-0.5225,0.852639,300,300,100,1),
(5710625,186619,571,1,1,2082.25,-4579.19,216.29,-1.37881,0,0,-0.636078,0.771625,300,300,100,1),
(5710626,186619,571,1,1,2572.15,-4554.23,250.842,1.23918,0,0,0.580701,0.814117,300,300,100,1),
(5710627,186619,571,1,1,2581.31,-4495.6,248.18,2.02458,0,0,0.848047,0.529921,300,300,100,1),
(5710628,186619,571,1,1,2581.73,-4611.41,247.09,2.86233,0,0,0.990267,0.139178,300,300,100,1),
(5710629,186619,571,1,1,1978.89,-4700.31,203.189,1.39626,0,0,0.642786,0.766046,300,300,100,1),
(5710630,186619,571,1,1,2230.88,-4410.7,221.444,1.06465,0,0,0.507538,0.861629,300,300,100,1),
(5710631,186619,571,1,1,2395,-4501.86,216.421,-1.20428,0,0,-0.566407,0.824125,300,300,100,1),
(5710632,186619,571,1,1,2349.12,-4476.07,221.785,3.10665,0,0,0.999847,0.0174704,300,300,100,1),
(5710633,186619,571,1,1,1939.69,-4537.56,207.011,-1.20428,0,0,-0.566407,0.824125,300,300,100,1),
(5710634,186619,571,1,1,1915.08,-4545.85,197.759,-1.23918,0,0,-0.580701,0.814117,300,300,100,1),
(5710635,186619,571,1,1,2551.93,-4968.26,307.103,-1.0821,0,0,-0.515036,0.857168,300,300,100,1),
(5710636,186619,571,1,1,2652.68,-4553.54,253.091,0.244346,0,0,0.121869,0.992546,300,300,100,1),
(5710637,186619,571,1,1,2092.92,-5059.29,234.231,-0.261798,0,0,-0.130525,0.991445,300,300,100,1),
(5710638,186619,571,1,1,2532.65,-4666.31,251.252,0.453785,0,0,0.224951,0.97437,300,300,100,1),
(5710639,186619,571,1,1,2203.63,-5021.78,245.697,2.11185,0,0,0.870356,0.492423,300,300,100,1),
(5710640,186619,571,1,1,2579.15,-4715,260.338,-2.9845,0,0,-0.996917,0.0784656,300,300,100,1),
(5710641,186619,571,1,1,2407.65,-4213.82,238.645,-0.401425,0,0,-0.199368,0.979925,300,300,100,1),
(5710642,186619,571,1,1,2195.98,-4161.05,224.044,-0.680679,0,0,-0.333807,0.942641,300,300,100,1),
(5710643,186619,571,1,1,2513.7,-3934.22,269.538,2.1293,0,0,0.874619,0.48481,300,300,100,1),
(5710644,186619,571,1,1,2367.75,-4725.65,227.724,0.122173,0,0,0.0610485,0.998135,300,300,100,1),
(5710645,186619,571,1,1,2378.51,-4242.56,233.622,-2.47837,0,0,-0.945519,0.325567,300,300,100,1),
(5710646,186619,571,1,1,2432.45,-4252.84,241.846,0.820303,0,0,0.398748,0.91706,300,300,100,1),
(5710647,186619,571,1,1,2172.76,-4207.09,229.358,1.0472,0,0,0.500001,0.866025,300,300,100,1),
(5710648,186619,571,1,1,2462.62,-4821.07,254.343,-1.90241,0,0,-0.814116,0.580702,300,300,100,1),
(5710649,186619,571,1,1,2109.54,-4394.78,215.315,-0.349065,0,0,-0.173648,0.984808,300,300,100,1),
(5710650,186619,571,1,1,2014.87,-4786.53,203.106,-2.75761,0,0,-0.981626,0.190814,300,300,100,1),
(5710651,186619,571,1,1,2220.25,-4766.67,222.554,2.84488,0,0,0.989015,0.147813,300,300,100,1),
(5710652,186619,571,1,1,2224.41,-4988.43,243.704,-2.93214,0,0,-0.994521,0.104535,300,300,100,1),
(5710653,186619,571,1,1,2241.99,-5093.23,241.703,-1.25664,0,0,-0.587786,0.809016,300,300,100,1),
(5710654,186619,571,1,1,2122.64,-5181.95,240.478,-1.81514,0,0,-0.78801,0.615662,300,300,100,1),
(5710655,186619,571,1,1,2278.74,-4355.19,229.188,1.67551,0,0,0.743143,0.669133,300,300,100,1),
(5710656,186619,571,1,1,2116.55,-4941.42,235.503,2.54818,0,0,0.956305,0.292372,300,300,100,1),
(5710657,186619,571,1,1,2385.96,-4777.31,241.94,-0.767944,0,0,-0.374606,0.927184,300,300,100,1),
(5710658,186619,571,1,1,2487.69,-4361.06,252.545,-2.32129,0,0,-0.91706,0.398748,300,300,100,1),
(5710659,186619,571,1,1,3124.33,-4581.45,327.008,-1.309,0,0,-0.608763,0.793352,300,300,100,1),
(5710660,186619,571,1,1,2025.19,-4450.76,210.117,-0.942477,0,0,-0.45399,0.891007,300,300,100,1),
(5710661,186619,571,1,1,2470.26,-4532.03,236.652,-2.04204,0,0,-0.852641,0.522496,300,300,100,1),
(5710662,186619,571,1,1,2199.75,-5189.89,249.01,-0.890117,0,0,-0.430511,0.902586,300,300,100,1),
(5710663,186619,571,1,1,2191.92,-5258.43,251.347,-0.750491,0,0,-0.366501,0.930418,300,300,100,1),
(5710664,186619,571,1,1,2224.76,-5235.27,251.569,2.56563,0,0,0.958819,0.284016,300,300,100,1),
(5710665,186619,571,1,1,2538.34,-4428.93,232.199,-2.26892,0,0,-0.906307,0.422619,300,300,100,1),
(5710666,186619,571,1,1,2244.03,-4252.14,229.089,1.23918,0,0,0.580701,0.814117,300,300,100,1),
(5710667,186619,571,1,1,2278.25,-4663.01,220.678,-2.82743,0,0,-0.987688,0.156436,300,300,100,1),
(5710668,186619,571,1,1,2336,-4269.02,233.718,0.95993,0,0,0.461748,0.887011,300,300,100,1),
(5710669,186619,571,1,1,2243.38,-4202.68,225.091,1.81514,0,0,0.78801,0.615662,300,300,100,1),
(5710670,186619,571,1,1,2642.73,-4918.33,304.517,1.67551,0,0,0.743143,0.669133,300,300,100,1),
(5710671,186619,571,1,1,1988.31,-5019.75,213.006,0.977383,0,0,0.469471,0.882948,300,300,100,1),
(5710672,186619,571,1,1,2275.67,-4904.09,243.626,-2.46091,0,0,-0.942641,0.333809,300,300,100,1),
(5710673,186619,571,1,1,2048.05,-5067.82,225.171,0.157079,0,0,0.0784588,0.996917,300,300,100,1);

-- POOLS
DELETE FROM pool_template WHERE entry = 30071;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30071, 1, 'Howling Fjord - Water plant - Pool 1');
DELETE FROM pool_gameobject WHERE pool_entry = 30071;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710510, 30071, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710592, 30071, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30072;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30072, 1, 'Howling Fjord - Water plant - Pool 2');
DELETE FROM pool_gameobject WHERE pool_entry = 30072;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710511, 30072, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710593, 30072, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30073;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30073, 1, 'Howling Fjord - Water plant - Pool 3');
DELETE FROM pool_gameobject WHERE pool_entry = 30073;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710512, 30073, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710594, 30073, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30074;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30074, 1, 'Howling Fjord - Water plant - Pool 4');
DELETE FROM pool_gameobject WHERE pool_entry = 30074;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710513, 30074, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710595, 30074, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30075;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30075, 1, 'Howling Fjord - Water plant - Pool 5');
DELETE FROM pool_gameobject WHERE pool_entry = 30075;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710514, 30075, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710596, 30075, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30076;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30076, 1, 'Howling Fjord - Water plant - Pool 6');
DELETE FROM pool_gameobject WHERE pool_entry = 30076;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710515, 30076, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710597, 30076, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30077;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30077, 1, 'Howling Fjord - Water plant - Pool 7');
DELETE FROM pool_gameobject WHERE pool_entry = 30077;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710516, 30077, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710598, 30077, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30078;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30078, 1, 'Howling Fjord - Water plant - Pool 8');
DELETE FROM pool_gameobject WHERE pool_entry = 30078;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710517, 30078, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710599, 30078, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30079;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30079, 1, 'Howling Fjord - Water plant - Pool 9');
DELETE FROM pool_gameobject WHERE pool_entry = 30079;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710518, 30079, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710600, 30079, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30080;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30080, 1, 'Howling Fjord - Water plant - Pool 10');
DELETE FROM pool_gameobject WHERE pool_entry = 30080;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710519, 30080, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710601, 30080, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30081;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30081, 1, 'Howling Fjord - Water plant - Pool 11');
DELETE FROM pool_gameobject WHERE pool_entry = 30081;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710520, 30081, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710602, 30081, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30082;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30082, 1, 'Howling Fjord - Water plant - Pool 12');
DELETE FROM pool_gameobject WHERE pool_entry = 30082;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710521, 30082, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710603, 30082, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30083;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30083, 1, 'Howling Fjord - Water plant - Pool 13');
DELETE FROM pool_gameobject WHERE pool_entry = 30083;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710522, 30083, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710604, 30083, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30084;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30084, 1, 'Howling Fjord - Water plant - Pool 14');
DELETE FROM pool_gameobject WHERE pool_entry = 30084;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710523, 30084, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710605, 30084, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30085;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30085, 1, 'Howling Fjord - Water plant - Pool 15');
DELETE FROM pool_gameobject WHERE pool_entry = 30085;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710524, 30085, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710606, 30085, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30086;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30086, 1, 'Howling Fjord - Water plant - Pool 16');
DELETE FROM pool_gameobject WHERE pool_entry = 30086;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710525, 30086, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710607, 30086, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30087;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30087, 1, 'Howling Fjord - Water plant - Pool 17');
DELETE FROM pool_gameobject WHERE pool_entry = 30087;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710526, 30087, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710608, 30087, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30088;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30088, 1, 'Howling Fjord - Water plant - Pool 18');
DELETE FROM pool_gameobject WHERE pool_entry = 30088;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710527, 30088, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710609, 30088, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30089;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30089, 1, 'Howling Fjord - Water plant - Pool 19');
DELETE FROM pool_gameobject WHERE pool_entry = 30089;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710528, 30089, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710610, 30089, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30090;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30090, 1, 'Howling Fjord - Water plant - Pool 20');
DELETE FROM pool_gameobject WHERE pool_entry = 30090;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710529, 30090, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710611, 30090, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30091;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30091, 1, 'Howling Fjord - Water plant - Pool 21');
DELETE FROM pool_gameobject WHERE pool_entry = 30091;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710530, 30091, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710612, 30091, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30092;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30092, 1, 'Howling Fjord - Water plant - Pool 22');
DELETE FROM pool_gameobject WHERE pool_entry = 30092;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710531, 30092, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710613, 30092, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30093;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30093, 1, 'Howling Fjord - Water plant - Pool 23');
DELETE FROM pool_gameobject WHERE pool_entry = 30093;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710532, 30093, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710614, 30093, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30094;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30094, 1, 'Howling Fjord - Water plant - Pool 24');
DELETE FROM pool_gameobject WHERE pool_entry = 30094;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710533, 30094, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710615, 30094, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30095;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30095, 1, 'Howling Fjord - Water plant - Pool 25');
DELETE FROM pool_gameobject WHERE pool_entry = 30095;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710534, 30095, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710616, 30095, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30096;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30096, 1, 'Howling Fjord - Water plant - Pool 26');
DELETE FROM pool_gameobject WHERE pool_entry = 30096;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710535, 30096, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710617, 30096, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30097;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30097, 1, 'Howling Fjord - Water plant - Pool 27');
DELETE FROM pool_gameobject WHERE pool_entry = 30097;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710536, 30097, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710618, 30097, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30098;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30098, 1, 'Howling Fjord - Water plant - Pool 28');
DELETE FROM pool_gameobject WHERE pool_entry = 30098;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710537, 30098, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710619, 30098, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30099;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30099, 1, 'Howling Fjord - Water plant - Pool 29');
DELETE FROM pool_gameobject WHERE pool_entry = 30099;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710538, 30099, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710620, 30099, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30100;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30100, 1, 'Howling Fjord - Water plant - Pool 30');
DELETE FROM pool_gameobject WHERE pool_entry = 30100;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710539, 30100, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710621, 30100, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30101;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30101, 1, 'Howling Fjord - Water plant - Pool 31');
DELETE FROM pool_gameobject WHERE pool_entry = 30101;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710540, 30101, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710622, 30101, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30102;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30102, 1, 'Howling Fjord - Water plant - Pool 32');
DELETE FROM pool_gameobject WHERE pool_entry = 30102;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710541, 30102, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710623, 30102, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30103;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30103, 1, 'Howling Fjord - Water plant - Pool 33');
DELETE FROM pool_gameobject WHERE pool_entry = 30103;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710542, 30103, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710624, 30103, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30104;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30104, 1, 'Howling Fjord - Water plant - Pool 34');
DELETE FROM pool_gameobject WHERE pool_entry = 30104;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710543, 30104, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710625, 30104, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30105;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30105, 1, 'Howling Fjord - Water plant - Pool 35');
DELETE FROM pool_gameobject WHERE pool_entry = 30105;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710544, 30105, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710626, 30105, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30106;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30106, 1, 'Howling Fjord - Water plant - Pool 36');
DELETE FROM pool_gameobject WHERE pool_entry = 30106;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710545, 30106, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710627, 30106, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30107;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30107, 1, 'Howling Fjord - Water plant - Pool 37');
DELETE FROM pool_gameobject WHERE pool_entry = 30107;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710546, 30107, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710628, 30107, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30108;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30108, 1, 'Howling Fjord - Water plant - Pool 38');
DELETE FROM pool_gameobject WHERE pool_entry = 30108;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710547, 30108, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710629, 30108, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30109;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30109, 1, 'Howling Fjord - Water plant - Pool 39');
DELETE FROM pool_gameobject WHERE pool_entry = 30109;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710548, 30109, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710630, 30109, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30110;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30110, 1, 'Howling Fjord - Water plant - Pool 40');
DELETE FROM pool_gameobject WHERE pool_entry = 30110;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710549, 30110, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710631, 30110, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30111;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30111, 1, 'Howling Fjord - Water plant - Pool 41');
DELETE FROM pool_gameobject WHERE pool_entry = 30111;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710550, 30111, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710632, 30111, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30112;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30112, 1, 'Howling Fjord - Water plant - Pool 42');
DELETE FROM pool_gameobject WHERE pool_entry = 30112;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710551, 30112, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710633, 30112, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30113;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30113, 1, 'Howling Fjord - Water plant - Pool 43');
DELETE FROM pool_gameobject WHERE pool_entry = 30113;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710552, 30113, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710634, 30113, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30114;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30114, 1, 'Howling Fjord - Water plant - Pool 44');
DELETE FROM pool_gameobject WHERE pool_entry = 30114;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710553, 30114, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710635, 30114, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30115;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30115, 1, 'Howling Fjord - Water plant - Pool 45');
DELETE FROM pool_gameobject WHERE pool_entry = 30115;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710554, 30115, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710636, 30115, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30116;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30116, 1, 'Howling Fjord - Water plant - Pool 46');
DELETE FROM pool_gameobject WHERE pool_entry = 30116;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710555, 30116, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710637, 30116, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30117;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30117, 1, 'Howling Fjord - Water plant - Pool 47');
DELETE FROM pool_gameobject WHERE pool_entry = 30117;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710556, 30117, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710638, 30117, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30118;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30118, 1, 'Howling Fjord - Water plant - Pool 48');
DELETE FROM pool_gameobject WHERE pool_entry = 30118;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710557, 30118, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710639, 30118, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30119;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30119, 1, 'Howling Fjord - Water plant - Pool 49');
DELETE FROM pool_gameobject WHERE pool_entry = 30119;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710558, 30119, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710640, 30119, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30120;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30120, 1, 'Howling Fjord - Water plant - Pool 50');
DELETE FROM pool_gameobject WHERE pool_entry = 30120;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710559, 30120, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710641, 30120, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30121;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30121, 1, 'Howling Fjord - Water plant - Pool 51');
DELETE FROM pool_gameobject WHERE pool_entry = 30121;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710560, 30121, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710642, 30121, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30122;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30122, 1, 'Howling Fjord - Water plant - Pool 52');
DELETE FROM pool_gameobject WHERE pool_entry = 30122;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710561, 30122, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710643, 30122, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30123;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30123, 1, 'Howling Fjord - Water plant - Pool 53');
DELETE FROM pool_gameobject WHERE pool_entry = 30123;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710562, 30123, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710644, 30123, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30124;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30124, 1, 'Howling Fjord - Water plant - Pool 54');
DELETE FROM pool_gameobject WHERE pool_entry = 30124;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710563, 30124, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710645, 30124, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30125;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30125, 1, 'Howling Fjord - Water plant - Pool 55');
DELETE FROM pool_gameobject WHERE pool_entry = 30125;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710564, 30125, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710646, 30125, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30126;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30126, 1, 'Howling Fjord - Water plant - Pool 56');
DELETE FROM pool_gameobject WHERE pool_entry = 30126;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710565, 30126, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710647, 30126, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30127;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30127, 1, 'Howling Fjord - Water plant - Pool 57');
DELETE FROM pool_gameobject WHERE pool_entry = 30127;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710566, 30127, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710648, 30127, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30128;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30128, 1, 'Howling Fjord - Water plant - Pool 58');
DELETE FROM pool_gameobject WHERE pool_entry = 30128;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710567, 30128, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710649, 30128, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30129;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30129, 1, 'Howling Fjord - Water plant - Pool 59');
DELETE FROM pool_gameobject WHERE pool_entry = 30129;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710568, 30129, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710650, 30129, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30130;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30130, 1, 'Howling Fjord - Water plant - Pool 60');
DELETE FROM pool_gameobject WHERE pool_entry = 30130;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710569, 30130, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710651, 30130, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30131;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30131, 1, 'Howling Fjord - Water plant - Pool 61');
DELETE FROM pool_gameobject WHERE pool_entry = 30131;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710570, 30131, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710652, 30131, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30132;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30132, 1, 'Howling Fjord - Water plant - Pool 62');
DELETE FROM pool_gameobject WHERE pool_entry = 30132;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710571, 30132, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710653, 30132, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30133;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30133, 1, 'Howling Fjord - Water plant - Pool 63');
DELETE FROM pool_gameobject WHERE pool_entry = 30133;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710572, 30133, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710654, 30133, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30134;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30134, 1, 'Howling Fjord - Water plant - Pool 64');
DELETE FROM pool_gameobject WHERE pool_entry = 30134;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710573, 30134, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710655, 30134, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30135;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30135, 1, 'Howling Fjord - Water plant - Pool 65');
DELETE FROM pool_gameobject WHERE pool_entry = 30135;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710574, 30135, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710656, 30135, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30136;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30136, 1, 'Howling Fjord - Water plant - Pool 66');
DELETE FROM pool_gameobject WHERE pool_entry = 30136;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710575, 30136, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710657, 30136, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30137;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30137, 1, 'Howling Fjord - Water plant - Pool 67');
DELETE FROM pool_gameobject WHERE pool_entry = 30137;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710576, 30137, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710658, 30137, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30138;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30138, 1, 'Howling Fjord - Water plant - Pool 68');
DELETE FROM pool_gameobject WHERE pool_entry = 30138;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710577, 30138, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710659, 30138, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30139;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30139, 1, 'Howling Fjord - Water plant - Pool 69');
DELETE FROM pool_gameobject WHERE pool_entry = 30139;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710578, 30139, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710660, 30139, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30140;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30140, 1, 'Howling Fjord - Water plant - Pool 70');
DELETE FROM pool_gameobject WHERE pool_entry = 30140;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710579, 30140, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710661, 30140, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30141;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30141, 1, 'Howling Fjord - Water plant - Pool 71');
DELETE FROM pool_gameobject WHERE pool_entry = 30141;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710580, 30141, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710662, 30141, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30142;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30142, 1, 'Howling Fjord - Water plant - Pool 72');
DELETE FROM pool_gameobject WHERE pool_entry = 30142;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710581, 30142, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710663, 30142, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30143;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30143, 1, 'Howling Fjord - Water plant - Pool 73');
DELETE FROM pool_gameobject WHERE pool_entry = 30143;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710582, 30143, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710664, 30143, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30144;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30144, 1, 'Howling Fjord - Water plant - Pool 74');
DELETE FROM pool_gameobject WHERE pool_entry = 30144;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710583, 30144, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710665, 30144, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30145;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30145, 1, 'Howling Fjord - Water plant - Pool 75');
DELETE FROM pool_gameobject WHERE pool_entry = 30145;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710584, 30145, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710666, 30145, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30146;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30146, 1, 'Howling Fjord - Water plant - Pool 76');
DELETE FROM pool_gameobject WHERE pool_entry = 30146;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710585, 30146, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710667, 30146, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30147;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30147, 1, 'Howling Fjord - Water plant - Pool 77');
DELETE FROM pool_gameobject WHERE pool_entry = 30147;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710586, 30147, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710668, 30147, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30148;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30148, 1, 'Howling Fjord - Water plant - Pool 78');
DELETE FROM pool_gameobject WHERE pool_entry = 30148;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710587, 30148, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710669, 30148, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30149;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30149, 1, 'Howling Fjord - Water plant - Pool 79');
DELETE FROM pool_gameobject WHERE pool_entry = 30149;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710588, 30149, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710670, 30149, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30150;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30150, 1, 'Howling Fjord - Water plant - Pool 80');
DELETE FROM pool_gameobject WHERE pool_entry = 30150;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710589, 30150, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710671, 30150, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30151;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30151, 1, 'Howling Fjord - Water plant - Pool 81');
DELETE FROM pool_gameobject WHERE pool_entry = 30151;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710590, 30151, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710672, 30151, 0, 'Howling Fjord - Sprung Trap - 186619');

DELETE FROM pool_template WHERE entry = 30152;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30152, 1, 'Howling Fjord - Water plant - Pool 82');
DELETE FROM pool_gameobject WHERE pool_entry = 30152;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710591, 30152, 0, 'Howling Fjord - Sprung Trap - 186616'),
(5710673, 30152, 0, 'Howling Fjord - Sprung Trap - 186619');

-- Trapped Animal 24196
UPDATE creature_template SET DynamicFlags = 0, LootId = 0 WHERE entry = 24196;
DELETE FROM creature_loot_template WHERE entry = 24196; 
-- Redo all
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24196);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 24196);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 24196);
DELETE FROM creature_linking WHERE master_guid IN (SELECT guid FROM creature WHERE id = 24196);
DELETE FROM creature WHERE id = 24196;
-- all spawns added -- WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid BETWEEN 5711746 AND 5711827;
DELETE FROM creature_movement WHERE id BETWEEN 5711746 AND 5711827;
DELETE FROM creature_linking WHERE guid BETWEEN 5711746 AND 5711827;
DELETE FROM creature_linking WHERE master_guid BETWEEN 5711746 AND 5711827;
DELETE FROM creature WHERE guid BETWEEN 5711746 AND 5711827;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5711746,24196,571,1,1,0,0,2460.38,-4600.82,233.664,2.26892,300,300,0,0,102,0,0,0),
(5711747,24196,571,1,1,0,0,2438.18,-4459.61,225.383,-1.97222,300,300,0,0,102,0,0,0),
(5711748,24196,571,1,1,0,0,1934,-4609.42,198.994,1.32645,300,300,0,0,102,0,0,0),
(5711749,24196,571,1,1,0,0,2603.17,-4472.66,241.461,-1.64061,300,300,0,0,102,0,0,0),
(5711750,24196,571,1,1,0,0,2389.61,-4574.09,222.496,1.62316,300,300,0,0,102,0,0,0),
(5711751,24196,571,1,1,0,0,2322.13,-4826.65,238.652,2.54818,300,300,0,0,102,0,0,0),
(5711752,24196,571,1,1,0,0,2134.73,-4463.94,217.625,-1.69297,300,300,0,0,102,0,0,0),
(5711753,24196,571,1,1,0,0,2307.73,-4635.34,219.867,-0.087266,300,300,0,0,102,0,0,0),
(5711754,24196,571,1,1,0,0,2284.63,-4756.29,235.005,1.44862,300,300,0,0,102,0,0,0),
(5711755,24196,571,1,1,0,0,2199.65,-4633.7,214.218,-2.09439,300,300,0,0,102,0,0,0),
(5711756,24196,571,1,1,0,0,2307.29,-4496.5,217.177,-1.91986,300,300,0,0,102,0,0,0),
(5711757,24196,571,1,1,0,0,2295.91,-4527.08,220.047,3.07177,300,300,0,0,102,0,0,0),
(5711758,24196,571,1,1,0,0,2155.9,-4289.85,222.679,-3.12412,300,300,0,0,102,0,0,0),
(5711759,24196,571,1,1,0,0,2243.3,-4560.33,214.783,2.9845,300,300,0,0,102,0,0,0),
(5711760,24196,571,1,1,0,0,2265.97,-4279.81,229.291,0.209439,300,300,0,0,102,0,0,0),
(5711761,24196,571,1,1,0,0,2368.09,-4860.51,249.602,0.017452,300,300,0,0,102,0,0,0),
(5711762,24196,571,1,1,0,0,2262.45,-4761.14,233.061,0.226892,300,300,0,0,102,0,0,0),
(5711763,24196,571,1,1,0,0,2233.76,-4481.99,217.464,-3.07177,300,300,0,0,102,0,0,0),
(5711764,24196,571,1,1,0,0,2020.19,-4628.09,211.647,-2.25147,300,300,0,0,102,0,0,0),
(5711765,24196,571,1,1,0,0,2117.04,-4780.54,214.089,1.76278,300,300,0,0,102,0,0,0),
(5711766,24196,571,1,1,0,0,2239.83,-4839,233.964,-0.261798,300,300,0,0,102,0,0,0),
(5711767,24196,571,1,1,0,0,2543.01,-5268.63,317.497,1.53589,300,300,0,0,102,0,0,0),
(5711768,24196,571,1,1,0,0,2401.26,-4832.77,248.091,3.01941,300,300,0,0,102,0,0,0),
(5711769,24196,571,1,1,0,0,2430,-4082.45,232.584,-0.855211,300,300,0,0,102,0,0,0),
(5711770,24196,571,1,1,0,0,1955.77,-5185.17,191.41,-2.96704,300,300,0,0,102,0,0,0),
(5711771,24196,571,1,1,0,0,2816.09,-4509.98,276.763,3.4383,300,300,0,0,102,0,0,0),
(5711772,24196,571,1,1,0,0,3001.45,-4719.63,325.848,2.42601,300,300,0,0,102,0,0,0),
(5711773,24196,571,1,1,0,0,3117.85,-4729.58,336.046,5.49779,300,300,0,0,102,0,0,0),
(5711774,24196,571,1,1,0,0,2415.05,-4423.18,226.107,3.33359,300,300,0,0,102,0,0,0),
(5711775,24196,571,1,1,0,0,2282.5,-4925.68,242.053,5.81195,300,300,0,0,102,0,0,0),
(5711776,24196,571,1,1,0,0,2178.33,-5140.73,238.076,0.733038,300,300,0,0,102,0,0,0),
(5711777,24196,571,1,1,0,0,3080.75,-4408.37,332.096,-1.29154,300,300,0,0,102,0,0,0),
(5711778,24196,571,1,1,0,0,2357.07,-4626.74,226.289,-1.09956,300,300,0,0,102,0,0,0),
(5711779,24196,571,1,1,0,0,2082.25,-4579.19,216.29,-1.37881,300,300,0,0,102,0,0,0),
(5711780,24196,571,1,1,0,0,2572.15,-4554.23,250.842,1.23918,300,300,0,0,102,0,0,0),
(5711781,24196,571,1,1,0,0,2581.31,-4495.6,248.18,2.02458,300,300,0,0,102,0,0,0),
(5711782,24196,571,1,1,0,0,2581.73,-4611.41,247.09,2.86233,300,300,0,0,102,0,0,0),
(5711783,24196,571,1,1,0,0,1978.89,-4700.31,203.189,1.39626,300,300,0,0,102,0,0,0),
(5711784,24196,571,1,1,0,0,2230.88,-4410.7,221.444,1.06465,300,300,0,0,102,0,0,0),
(5711785,24196,571,1,1,0,0,2395,-4501.86,216.421,-1.20428,300,300,0,0,102,0,0,0),
(5711786,24196,571,1,1,0,0,2349.12,-4476.07,221.785,3.10665,300,300,0,0,102,0,0,0),
(5711787,24196,571,1,1,0,0,1939.69,-4537.56,207.011,-1.20428,300,300,0,0,102,0,0,0),
(5711788,24196,571,1,1,0,0,1915.08,-4545.85,197.759,-1.23918,300,300,0,0,102,0,0,0),
(5711789,24196,571,1,1,0,0,2551.93,-4968.26,307.103,-1.0821,300,300,0,0,102,0,0,0),
(5711790,24196,571,1,1,0,0,2652.68,-4553.54,253.091,0.244346,300,300,0,0,102,0,0,0),
(5711791,24196,571,1,1,0,0,2092.92,-5059.29,234.231,-0.261798,300,300,0,0,102,0,0,0),
(5711792,24196,571,1,1,0,0,2532.65,-4666.31,251.252,0.453785,300,300,0,0,102,0,0,0),
(5711793,24196,571,1,1,0,0,2203.63,-5021.78,245.697,2.11185,300,300,0,0,102,0,0,0),
(5711794,24196,571,1,1,0,0,2579.15,-4715,260.338,-2.9845,300,300,0,0,102,0,0,0),
(5711795,24196,571,1,1,0,0,2407.65,-4213.82,238.645,-0.401425,300,300,0,0,102,0,0,0),
(5711796,24196,571,1,1,0,0,2195.98,-4161.05,224.044,-0.680679,300,300,0,0,102,0,0,0),
(5711797,24196,571,1,1,0,0,2513.7,-3934.22,269.538,2.1293,300,300,0,0,102,0,0,0),
(5711798,24196,571,1,1,0,0,2367.75,-4725.65,227.724,0.122173,300,300,0,0,102,0,0,0),
(5711799,24196,571,1,1,0,0,2378.51,-4242.56,233.622,-2.47837,300,300,0,0,102,0,0,0),
(5711800,24196,571,1,1,0,0,2432.45,-4252.84,241.846,0.820303,300,300,0,0,102,0,0,0),
(5711801,24196,571,1,1,0,0,2172.76,-4207.09,229.358,1.0472,300,300,0,0,102,0,0,0),
(5711802,24196,571,1,1,0,0,2462.62,-4821.07,254.343,-1.90241,300,300,0,0,102,0,0,0),
(5711803,24196,571,1,1,0,0,2109.54,-4394.78,215.315,-0.349065,300,300,0,0,102,0,0,0),
(5711804,24196,571,1,1,0,0,2014.87,-4786.53,203.106,-2.75761,300,300,0,0,102,0,0,0),
(5711805,24196,571,1,1,0,0,2220.25,-4766.67,222.554,2.84488,300,300,0,0,102,0,0,0),
(5711806,24196,571,1,1,0,0,2224.41,-4988.43,243.704,-2.93214,300,300,0,0,102,0,0,0),
(5711807,24196,571,1,1,0,0,2241.99,-5093.23,241.703,-1.25664,300,300,0,0,102,0,0,0),
(5711808,24196,571,1,1,0,0,2122.64,-5181.95,240.478,-1.81514,300,300,0,0,102,0,0,0),
(5711809,24196,571,1,1,0,0,2278.74,-4355.19,229.188,1.67551,300,300,0,0,102,0,0,0),
(5711810,24196,571,1,1,0,0,2116.55,-4941.42,235.503,2.54818,300,300,0,0,102,0,0,0),
(5711811,24196,571,1,1,0,0,2385.96,-4777.31,241.94,-0.767944,300,300,0,0,102,0,0,0),
(5711812,24196,571,1,1,0,0,2487.69,-4361.06,252.545,-2.32129,300,300,0,0,102,0,0,0),
(5711813,24196,571,1,1,0,0,3124.33,-4581.45,327.008,-1.309,300,300,0,0,102,0,0,0),
(5711814,24196,571,1,1,0,0,2025.19,-4450.76,210.117,-0.942477,300,300,0,0,102,0,0,0),
(5711815,24196,571,1,1,0,0,2470.26,-4532.03,236.652,-2.04204,300,300,0,0,102,0,0,0),
(5711816,24196,571,1,1,0,0,2199.75,-5189.89,249.01,-0.890117,300,300,0,0,102,0,0,0),
(5711817,24196,571,1,1,0,0,2191.92,-5258.43,251.347,-0.750491,300,300,0,0,102,0,0,0),
(5711818,24196,571,1,1,0,0,2224.76,-5235.27,251.569,2.56563,300,300,0,0,102,0,0,0),
(5711819,24196,571,1,1,0,0,2538.34,-4428.93,232.199,-2.26892,300,300,0,0,102,0,0,0),
(5711820,24196,571,1,1,0,0,2244.03,-4252.14,229.089,1.23918,300,300,0,0,102,0,0,0),
(5711821,24196,571,1,1,0,0,2278.25,-4663.01,220.678,-2.82743,300,300,0,0,102,0,0,0),
(5711822,24196,571,1,1,0,0,2336,-4269.02,233.718,0.95993,300,300,0,0,102,0,0,0),
(5711823,24196,571,1,1,0,0,2243.38,-4202.68,225.091,1.81514,300,300,0,0,102,0,0,0),
(5711824,24196,571,1,1,0,0,2642.73,-4918.33,304.517,1.67551,300,300,0,0,102,0,0,0),
(5711825,24196,571,1,1,0,0,1988.31,-5019.75,213.006,0.977383,300,300,0,0,102,0,0,0),
(5711826,24196,571,1,1,0,0,2275.67,-4904.09,243.626,-2.46091,300,300,0,0,102,0,0,0),
(5711827,24196,571,1,1,0,0,2048.05,-5067.82,225.171,0.157079,300,300,0,0,102,0,0,0);
-- target corrected
DELETE FROM spell_script_target WHERE entry = 43239;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(43239,1,24196,0);
