-- ORGRIM'S HAMMER Quest Relations
-- THE SKYBREAKER Quest Relations

-- q.13308 'Mind Tricks'
-- Opens after one of them 2 rewarded q.13224 or q.13225
UPDATE quest_template SET RequiredCondition = 20709 WHERE entry IN (13308);
DELETE FROM conditions WHERE condition_entry = 20709;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20709,-2,20648,20647,0,0,0,'');

-- q.13230 'Avenge Me!' - H
-- Opens after q.13228 taken or rewarded
UPDATE quest_template SET RequiredCondition = 20711 WHERE entry IN (13230);
DELETE FROM conditions WHERE condition_entry BETWEEN 20710 AND 20711;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20710,9,13228,0,0,0,0,''),
(20711,-2,20710,20683,0,0,0,'');
-- q.13232 'Finish Me!' - A
-- Opens after q.13231 taken or rewarded
UPDATE quest_template SET RequiredCondition = 20713 WHERE entry IN (13232);
DELETE FROM conditions WHERE condition_entry BETWEEN 20712 AND 20713;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20712,9,13231,0,0,0,0,''),
(20713,-2,20712,20684,0,0,0,'');

-- q.13293 'Get to Ymirheim!' - H
UPDATE quest_template SET RequiredCondition = 20647 WHERE entry IN (13293);
-- q.13296 'Get to Ymirheim!' - A
UPDATE quest_template SET RequiredCondition = 20648 WHERE entry IN (13296);

-- q.13261 'Volatility' - H -- Daily
-- q.13379 'Green Technology'
-- req. q.13239 rewarded
UPDATE quest_template SET RequiredCondition = 20721 WHERE entry IN (13261,13379);
DELETE FROM conditions WHERE condition_entry = 20721;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20721,8,13239,0,0,0,0,'');
-- q.13292 'The Solution Solution' - A -- Daily
-- q.13383 'Killohertz' 
-- req. q.13291 rewarded
UPDATE quest_template SET RequiredCondition = 20723 WHERE entry IN (13292,13383);
DELETE FROM conditions WHERE condition_entry = 20723;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20723,8,13291,0,0,0,0,'');

-- q.13357 'Retest Now' - H -- Daily
-- req. q.13356 rewarded
UPDATE quest_template SET RequiredCondition = 20722 WHERE entry IN (13357);
DELETE FROM conditions WHERE condition_entry = 20722;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20722,8,13356,0,0,0,0,'');
-- q.13322 'Retest Now' - A -- Daily
-- req. q.13321 rewarded
UPDATE quest_template SET RequiredCondition = 20724 WHERE entry IN (13322);
DELETE FROM conditions WHERE condition_entry = 20724;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20724,8,13321,0,0,0,0,'');

-- q.13310 'Assault by Air' - H -- Daily
-- q.13301 'Assault by Ground' - H -- Daily
-- req. q.13340 rewarded
UPDATE quest_template SET RequiredCondition = 20728 WHERE entry IN (13310,13301);
DELETE FROM conditions WHERE condition_entry = 20728;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20728,8,13340,0,0,0,0,'');
-- q.13309 'Assault by Air' - A -- Daily
-- q.13284 'Assault by Ground' - A -- Daily
-- req. q.13341 rewarded
UPDATE quest_template SET RequiredCondition = 20729 WHERE entry IN (13309,13284);
DELETE FROM conditions WHERE condition_entry = 20729;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20729,8,13341,0,0,0,0,'');

-- q.13406 'Riding the Wavelength: The Bombardment' - H -- Daily
-- q.13376 'Total Ohmage: The Valley of Lost Hope!' - H -- Daily
-- req. q.13373 rewarded and only one can be accepted at same time
UPDATE quest_template SET RequiredCondition = 20743 WHERE entry = 13406;
UPDATE quest_template SET PrevQuestId = 0, RequiredCondition = 20744 WHERE entry = 13376;
DELETE FROM conditions WHERE condition_entry = 20733;
DELETE FROM conditions WHERE condition_entry BETWEEN 20741 AND 20744;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20733,8,13373,0,0,0,0,''),
(20741,9,13406,0,0,0,1,''),
(20742,9,13376,0,0,0,1,''),
(20743,-1,20733,20742,0,0,0,''),
(20744,-1,20733,20741,0,0,0,'');

-- q.13404 'Static Shock Troops: the Bombardment' - A -- Daily
-- q.13382 'Putting the Hertz: The Valley of Lost Hope' - A -- Daily
-- req. q.13380 rewarded
UPDATE quest_template SET RequiredCondition = 20747 WHERE entry = 13404;
UPDATE quest_template SET PrevQuestId = 0, RequiredCondition = 20748 WHERE entry = 13382;
DELETE FROM conditions WHERE condition_entry = 20734;
DELETE FROM conditions WHERE condition_entry BETWEEN 20745 AND 20748;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20734,8,13380,0,0,0,0,''),
(20745,9,13404,0,0,0,1,''),
(20746,9,13382,0,0,0,1,''),
(20747,-1,20734,20746,0,0,0,''),
(20748,-1,20734,20745,0,0,0,'');

-- quest replaced by other dailies
DELETE FROM creature_questrelation WHERE quest IN (13381,13374);
DELETE FROM creature_involvedrelation WHERE quest IN (13381,13374); 
