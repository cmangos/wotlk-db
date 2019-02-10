-- q.11329 'I'll Try Anything!'
-- no prequest ReQ.
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 11329;

-- Water plant
DELETE FROM game_event_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE id IN (186659,186660,186661));
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM gameobject WHERE id IN (186659,186660,186661));
DELETE FROM gameobject WHERE id IN (186659,186660,186661);
-- Redone for all
DELETE FROM game_event_gameobject WHERE guid BETWEEN 5710435 AND 5710509;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 5710435 AND 5710509;
DELETE FROM gameobject WHERE guid BETWEEN 5710435 AND 5710509;
INSERT INTO gameobject VALUES
-- #186659
(5710435,186659,571,1,1,2294.96,-5236.72,228.123,-3.07177,0,0,-0.999391,0.0349043,120,120,255,1),
(5710436,186659,571,1,1,2275.06,-5388.83,222.525,1.71042,0,0,0.754709,0.65606,120,120,255,1),
(5710437,186659,571,1,1,2244.3,-5355.3,232.733,-2.07694,0,0,-0.861629,0.507539,120,120,255,1),
(5710438,186659,571,1,1,2329.93,-5376.04,230.907,0.855211,0,0,0.414693,0.909961,120,120,255,1),
(5710439,186659,571,1,1,2341,-5488.16,241.582,-2.82743,0,0,-0.987688,0.156436,120,120,255,1),
(5710440,186659,571,1,1,2291.82,-5263.22,222.056,2.82743,0,0,0.987688,0.156436,120,120,100,1),
(5710441,186659,571,1,1,2299.96,-5366.97,222.629,-1.76278,0,0,-0.771624,0.636079,120,120,100,1),
(5710442,186659,571,1,1,2336.26,-5251.7,216.568,-1.44862,0,0,-0.662619,0.748957,120,120,100,1),
(5710443,186659,571,1,1,2296.22,-5292.13,216.405,0.523598,0,0,0.258819,0.965926,120,120,100,1),
(5710444,186659,571,1,1,2408.18,-5252,241.204,-3.07177,0,0,-0.999391,0.0349043,120,120,100,1),
(5710445,186659,571,1,1,2265.38,-5359.21,222.765,1.36136,0,0,0.629322,0.777145,120,120,100,1),
(5710446,186659,571,1,1,2375.136,-5238.241,226.0358,2.617989,0,0,0.9659252,0.2588213,120,120,255,1),
(5710447,186659,571,1,1,2321.004,-5266.163,216.0524,4.206246,0,0,-0.8616285,0.5075394,120,120,255,1),
(5710448,186659,571,1,1,2378.48,-5291.683,236.9414,0.5235979,0,0,0.2588186,0.9659259,120,120,255,1),
(5710449,186659,571,1,1,2346.103,-5151.228,235.7049,3.211419,0,0,-0.9993906,0.03490613,120,120,255,1),
(5710450,186659,571,1,1,2340.469,-5092.023,241.5146,6.056293,0,0,-0.113203,0.9935719,120,120,255,1),
(5710451,186659,571,1,1,2346.686,-5066.932,243.3647,6.056293,0,0,-0.113203,0.9935719,120,120,255,1),
(5710452,186659,571,1,1,2364.114,-5187.002,237.7219,5.602507,0,0,-0.333807,0.9426414,120,120,255,1),
(5710453,186659,571,1,1,2341.273,-5045.342,243.2572,3.42085,0,0,-0.9902678,0.1391754,120,120,255,1),
(5710454,186659,571,1,1,2348.561,-5168.32,234.3923,0.6981314,0,0,0.34202,0.9396927,120,120,255,1),
(5710455,186659,571,1,1,2292.371,-5428.461,223.6572,3.926996,0,0,-0.9238787,0.3826855,120,120,255,1),
(5710456,186659,571,1,1,2339.555,-5226.457,222.7483,5.707228,0,0,-0.2840147,0.9588199,120,120,255,1),
(5710457,186659,571,1,1,2333.461,-5189.717,232.4482,5.742135,0,0,-0.2672377,0.9636307,120,120,255,1),
(5710458,186659,571,1,1,2302.763,-5493.347,228.9424,1.500983,0,0,0.6819983,0.7313538,120,120,255,1),
(5710459,186659,571,1,1,2324.456,-5460.424,228.0025,3.054327,0,0,0.9990482,0.04361926,120,120,255,1),
-- #186660
(5710460,186660,571,1,1,2294.96,-5236.72,228.123,-3.07177,0,0,-0.999391,0.0349043,120,120,255,1),
(5710461,186660,571,1,1,2275.06,-5388.83,222.525,1.71042,0,0,0.754709,0.65606,120,120,255,1),
(5710462,186660,571,1,1,2244.3,-5355.3,232.733,-2.07694,0,0,-0.861629,0.507539,120,120,255,1),
(5710463,186660,571,1,1,2329.93,-5376.04,230.907,0.855211,0,0,0.414693,0.909961,120,120,255,1),
(5710464,186660,571,1,1,2341,-5488.16,241.582,-2.82743,0,0,-0.987688,0.156436,120,120,255,1),
(5710465,186660,571,1,1,2291.82,-5263.22,222.056,2.82743,0,0,0.987688,0.156436,120,120,100,1),
(5710466,186660,571,1,1,2299.96,-5366.97,222.629,-1.76278,0,0,-0.771624,0.636079,120,120,100,1),
(5710467,186660,571,1,1,2336.26,-5251.7,216.568,-1.44862,0,0,-0.662619,0.748957,120,120,100,1),
(5710468,186660,571,1,1,2296.22,-5292.13,216.405,0.523598,0,0,0.258819,0.965926,120,120,100,1),
(5710469,186660,571,1,1,2408.18,-5252,241.204,-3.07177,0,0,-0.999391,0.0349043,120,120,100,1),
(5710470,186660,571,1,1,2265.38,-5359.21,222.765,1.36136,0,0,0.629322,0.777145,120,120,100,1),
(5710471,186660,571,1,1,2375.136,-5238.241,226.0358,2.617989,0,0,0.9659252,0.2588213,120,120,255,1),
(5710472,186660,571,1,1,2321.004,-5266.163,216.0524,4.206246,0,0,-0.8616285,0.5075394,120,120,255,1),
(5710473,186660,571,1,1,2378.48,-5291.683,236.9414,0.5235979,0,0,0.2588186,0.9659259,120,120,255,1),
(5710474,186660,571,1,1,2346.103,-5151.228,235.7049,3.211419,0,0,-0.9993906,0.03490613,120,120,255,1),
(5710475,186660,571,1,1,2340.469,-5092.023,241.5146,6.056293,0,0,-0.113203,0.9935719,120,120,255,1),
(5710476,186660,571,1,1,2346.686,-5066.932,243.3647,6.056293,0,0,-0.113203,0.9935719,120,120,255,1),
(5710477,186660,571,1,1,2364.114,-5187.002,237.7219,5.602507,0,0,-0.333807,0.9426414,120,120,255,1),
(5710478,186660,571,1,1,2341.273,-5045.342,243.2572,3.42085,0,0,-0.9902678,0.1391754,120,120,255,1),
(5710479,186660,571,1,1,2348.561,-5168.32,234.3923,0.6981314,0,0,0.34202,0.9396927,120,120,255,1),
(5710480,186660,571,1,1,2292.371,-5428.461,223.6572,3.926996,0,0,-0.9238787,0.3826855,120,120,255,1),
(5710481,186660,571,1,1,2339.555,-5226.457,222.7483,5.707228,0,0,-0.2840147,0.9588199,120,120,255,1),
(5710482,186660,571,1,1,2333.461,-5189.717,232.4482,5.742135,0,0,-0.2672377,0.9636307,120,120,255,1),
(5710483,186660,571,1,1,2302.763,-5493.347,228.9424,1.500983,0,0,0.6819983,0.7313538,120,120,255,1),
(5710484,186660,571,1,1,2324.456,-5460.424,228.0025,3.054327,0,0,0.9990482,0.04361926,120,120,255,1),
-- #186661
(5710485,186661,571,1,1,2294.96,-5236.72,228.123,-3.07177,0,0,-0.999391,0.0349043,120,120,255,1),
(5710486,186661,571,1,1,2275.06,-5388.83,222.525,1.71042,0,0,0.754709,0.65606,120,120,255,1),
(5710487,186661,571,1,1,2244.3,-5355.3,232.733,-2.07694,0,0,-0.861629,0.507539,120,120,255,1),
(5710488,186661,571,1,1,2329.93,-5376.04,230.907,0.855211,0,0,0.414693,0.909961,120,120,255,1),
(5710489,186661,571,1,1,2341,-5488.16,241.582,-2.82743,0,0,-0.987688,0.156436,120,120,255,1),
(5710490,186661,571,1,1,2291.82,-5263.22,222.056,2.82743,0,0,0.987688,0.156436,120,120,100,1),
(5710491,186661,571,1,1,2299.96,-5366.97,222.629,-1.76278,0,0,-0.771624,0.636079,120,120,100,1),
(5710492,186661,571,1,1,2336.26,-5251.7,216.568,-1.44862,0,0,-0.662619,0.748957,120,120,100,1),
(5710493,186661,571,1,1,2296.22,-5292.13,216.405,0.523598,0,0,0.258819,0.965926,120,120,100,1),
(5710494,186661,571,1,1,2408.18,-5252,241.204,-3.07177,0,0,-0.999391,0.0349043,120,120,100,1),
(5710495,186661,571,1,1,2265.38,-5359.21,222.765,1.36136,0,0,0.629322,0.777145,120,120,100,1),
(5710496,186661,571,1,1,2375.136,-5238.241,226.0358,2.617989,0,0,0.9659252,0.2588213,120,120,255,1),
(5710497,186661,571,1,1,2321.004,-5266.163,216.0524,4.206246,0,0,-0.8616285,0.5075394,120,120,255,1),
(5710498,186661,571,1,1,2378.48,-5291.683,236.9414,0.5235979,0,0,0.2588186,0.9659259,120,120,255,1),
(5710499,186661,571,1,1,2346.103,-5151.228,235.7049,3.211419,0,0,-0.9993906,0.03490613,120,120,255,1),
(5710500,186661,571,1,1,2340.469,-5092.023,241.5146,6.056293,0,0,-0.113203,0.9935719,120,120,255,1),
(5710501,186661,571,1,1,2346.686,-5066.932,243.3647,6.056293,0,0,-0.113203,0.9935719,120,120,255,1),
(5710502,186661,571,1,1,2364.114,-5187.002,237.7219,5.602507,0,0,-0.333807,0.9426414,120,120,255,1),
(5710503,186661,571,1,1,2341.273,-5045.342,243.2572,3.42085,0,0,-0.9902678,0.1391754,120,120,255,1),
(5710504,186661,571,1,1,2348.561,-5168.32,234.3923,0.6981314,0,0,0.34202,0.9396927,120,120,255,1),
(5710505,186661,571,1,1,2292.371,-5428.461,223.6572,3.926996,0,0,-0.9238787,0.3826855,120,120,255,1),
(5710506,186661,571,1,1,2339.555,-5226.457,222.7483,5.707228,0,0,-0.2840147,0.9588199,120,120,255,1),
(5710507,186661,571,1,1,2333.461,-5189.717,232.4482,5.742135,0,0,-0.2672377,0.9636307,120,120,255,1),
(5710508,186661,571,1,1,2302.763,-5493.347,228.9424,1.500983,0,0,0.6819983,0.7313538,120,120,255,1),
(5710509,186661,571,1,1,2324.456,-5460.424,228.0025,3.054327,0,0,0.9990482,0.04361926,120,120,255,1);

-- POOLS
DELETE FROM pool_template WHERE entry = 30046;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30046, 1, 'Howling Fjord - Water plant - Pool 1');
DELETE FROM pool_gameobject WHERE pool_entry = 30046;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710435, 30046, 35, 'Howling Fjord - Water plant - 186659'),
(5710460, 30046, 45, 'Howling Fjord - Water plant - 186660'),
(5710485, 30046, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30047;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30047, 1, 'Howling Fjord - Water plant - Pool 2');
DELETE FROM pool_gameobject WHERE pool_entry = 30047;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710436, 30047, 35, 'Howling Fjord - Water plant - 186659'),
(5710461, 30047, 45, 'Howling Fjord - Water plant - 186660'),
(5710486, 30047, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30048;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30048, 1, 'Howling Fjord - Water plant - Pool 3');
DELETE FROM pool_gameobject WHERE pool_entry = 30048;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710437, 30048, 35, 'Howling Fjord - Water plant - 186659'),
(5710462, 30048, 45, 'Howling Fjord - Water plant - 186660'),
(5710487, 30048, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30049;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30049, 1, 'Howling Fjord - Water plant - Pool 4');
DELETE FROM pool_gameobject WHERE pool_entry = 30049;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710438, 30049, 35, 'Howling Fjord - Water plant - 186659'),
(5710463, 30049, 45, 'Howling Fjord - Water plant - 186660'),
(5710488, 30049, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30050;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30050, 1, 'Howling Fjord - Water plant - Pool 5');
DELETE FROM pool_gameobject WHERE pool_entry = 30050;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710439, 30050, 35, 'Howling Fjord - Water plant - 186659'),
(5710464, 30050, 45, 'Howling Fjord - Water plant - 186660'),
(5710489, 30050, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30051;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30051, 1, 'Howling Fjord - Water plant - Pool 6');
DELETE FROM pool_gameobject WHERE pool_entry = 30051;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710440, 30051, 35, 'Howling Fjord - Water plant - 186659'),
(5710465, 30051, 45, 'Howling Fjord - Water plant - 186660'),
(5710490, 30051, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30052;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30052, 1, 'Howling Fjord - Water plant - Pool 7');
DELETE FROM pool_gameobject WHERE pool_entry = 30052;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710441, 30052, 35, 'Howling Fjord - Water plant - 186659'),
(5710466, 30052, 45, 'Howling Fjord - Water plant - 186660'),
(5710491, 30052, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30053;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30053, 1, 'Howling Fjord - Water plant - Pool 8');
DELETE FROM pool_gameobject WHERE pool_entry = 30053;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710442, 30053, 35, 'Howling Fjord - Water plant - 186659'),
(5710467, 30053, 45, 'Howling Fjord - Water plant - 186660'),
(5710492, 30053, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30054;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30054, 1, 'Howling Fjord - Water plant - Pool 9');
DELETE FROM pool_gameobject WHERE pool_entry = 30054;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710443, 30054, 35, 'Howling Fjord - Water plant - 186659'),
(5710468, 30054, 45, 'Howling Fjord - Water plant - 186660'),
(5710493, 30054, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30055;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30055, 1, 'Howling Fjord - Water plant - Pool 10');
DELETE FROM pool_gameobject WHERE pool_entry = 30055;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710444, 30055, 35, 'Howling Fjord - Water plant - 186659'),
(5710469, 30055, 45, 'Howling Fjord - Water plant - 186660'),
(5710494, 30055, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30056;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30056, 1, 'Howling Fjord - Water plant - Pool 11');
DELETE FROM pool_gameobject WHERE pool_entry = 30056;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710445, 30056, 35, 'Howling Fjord - Water plant - 186659'),
(5710470, 30056, 45, 'Howling Fjord - Water plant - 186660'),
(5710495, 30056, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30057;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30057, 1, 'Howling Fjord - Water plant - Pool 12');
DELETE FROM pool_gameobject WHERE pool_entry = 30057;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710446, 30057, 35, 'Howling Fjord - Water plant - 186659'),
(5710471, 30057, 45, 'Howling Fjord - Water plant - 186660'),
(5710496, 30057, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30058;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30058, 1, 'Howling Fjord - Water plant - Pool 13');
DELETE FROM pool_gameobject WHERE pool_entry = 30058;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710447, 30058, 35, 'Howling Fjord - Water plant - 186659'),
(5710472, 30058, 45, 'Howling Fjord - Water plant - 186660'),
(5710497, 30058, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30059;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30059, 1, 'Howling Fjord - Water plant - Pool 14');
DELETE FROM pool_gameobject WHERE pool_entry = 30059;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710448, 30059, 35, 'Howling Fjord - Water plant - 186659'),
(5710473, 30059, 45, 'Howling Fjord - Water plant - 186660'),
(5710498, 30059, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30060;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30060, 1, 'Howling Fjord - Water plant - Pool 15');
DELETE FROM pool_gameobject WHERE pool_entry = 30060;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710449, 30060, 35, 'Howling Fjord - Water plant - 186659'),
(5710474, 30060, 45, 'Howling Fjord - Water plant - 186660'),
(5710499, 30060, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30061;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30061, 1, 'Howling Fjord - Water plant - Pool 16');
DELETE FROM pool_gameobject WHERE pool_entry = 30061;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710450, 30061, 35, 'Howling Fjord - Water plant - 186659'),
(5710475, 30061, 45, 'Howling Fjord - Water plant - 186660'),
(5710500, 30061, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30062;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30062, 1, 'Howling Fjord - Water plant - Pool 17');
DELETE FROM pool_gameobject WHERE pool_entry = 30062;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710451, 30062, 35, 'Howling Fjord - Water plant - 186659'),
(5710476, 30062, 45, 'Howling Fjord - Water plant - 186660'),
(5710501, 30062, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30063;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30063, 1, 'Howling Fjord - Water plant - Pool 18');
DELETE FROM pool_gameobject WHERE pool_entry = 30063;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710452, 30063, 35, 'Howling Fjord - Water plant - 186659'),
(5710477, 30063, 45, 'Howling Fjord - Water plant - 186660'),
(5710502, 30063, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30064;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30064, 1, 'Howling Fjord - Water plant - Pool 19');
DELETE FROM pool_gameobject WHERE pool_entry = 30064;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710453, 30064, 35, 'Howling Fjord - Water plant - 186659'),
(5710478, 30064, 45, 'Howling Fjord - Water plant - 186660'),
(5710503, 30064, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30065;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30065, 1, 'Howling Fjord - Water plant - Pool 20');
DELETE FROM pool_gameobject WHERE pool_entry = 30065;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710454, 30065, 35, 'Howling Fjord - Water plant - 186659'),
(5710479, 30065, 45, 'Howling Fjord - Water plant - 186660'),
(5710504, 30065, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30066;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30066, 1, 'Howling Fjord - Water plant - Pool 21');
DELETE FROM pool_gameobject WHERE pool_entry = 30066;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710455, 30066, 35, 'Howling Fjord - Water plant - 186659'),
(5710480, 30066, 45, 'Howling Fjord - Water plant - 186660'),
(5710505, 30066, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30067;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30067, 1, 'Howling Fjord - Water plant - Pool 22');
DELETE FROM pool_gameobject WHERE pool_entry = 30067;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710456, 30067, 35, 'Howling Fjord - Water plant - 186659'),
(5710481, 30067, 45, 'Howling Fjord - Water plant - 186660'),
(5710506, 30067, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30068;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30068, 1, 'Howling Fjord - Water plant - Pool 23');
DELETE FROM pool_gameobject WHERE pool_entry = 30068;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710457, 30068, 35, 'Howling Fjord - Water plant - 186659'),
(5710482, 30068, 45, 'Howling Fjord - Water plant - 186660'),
(5710507, 30068, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30069;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30069, 1, 'Howling Fjord - Water plant - Pool 24');
DELETE FROM pool_gameobject WHERE pool_entry = 30069;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710458, 30069, 35, 'Howling Fjord - Water plant - 186659'),
(5710483, 30069, 45, 'Howling Fjord - Water plant - 186660'),
(5710508, 30069, 20, 'Howling Fjord - Water plant - 186661');

DELETE FROM pool_template WHERE entry = 30070;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30070, 1, 'Howling Fjord - Water plant - Pool 25');
DELETE FROM pool_gameobject WHERE pool_entry = 30070;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(5710459, 30070, 35, 'Howling Fjord - Water plant - 186659'),
(5710484, 30070, 45, 'Howling Fjord - Water plant - 186660'),
(5710509, 30070, 20, 'Howling Fjord - Water plant - 186661');
