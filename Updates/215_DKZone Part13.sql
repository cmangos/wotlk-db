-- --------------------------------------------------------
-- DK Starting Zone - FINAL CHAPTER 
-- --------------------------------------------------------

-- Missing object added
-- aura
DELETE FROM gameobject WHERE guid = 65255; -- UDB free guid reused
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(65255,191206,0,1,449,2460.06,-5593.7,367.394,0.556369,0,0,0.27461,0.961556,180,255,1);

-- Phases fix:
-- Creatures
-- phase 256 should be only on map = 0 not on 609
-- Teleport - Hall -> Heart
UPDATE creature SET phaseMask = 231 WHERE guid = 129960;
-- Teleport - Heart -> Hall
UPDATE creature SET phaseMask = 231 WHERE guid = 128754;
-- Phase: 64+128+256
UPDATE creature SET phaseMask = 448 WHERE guid IN (130470,130468,130469,130503,130474,130501,130475,130502,130471,130472,130504,130480,130473,130479,130481,130542);

-- Gameobjects
-- Phase: ALL
UPDATE gameobject SET phaseMask = 231 WHERE guid IN (66486,65893,65895,66143,65897,65899,66235,66389,66385,65882,66393,65884,66401,66397,65886);
-- Phase: 4+64+128
UPDATE gameobject SET phaseMask = 196 WHERE guid IN (66600,66356,66606,66359,66353,66365,66374,66460,66362,66258);
-- Phase: 1+64+128+256
UPDATE gameobject SET phaseMask = 449 WHERE guid IN (63186,63187,63178,66476,63172,63179,63191,63177,66392,63181,66396,63185,63183,63184);

-- Duplicates Removed
DELETE FROM creature WHERE guid IN (130509,130514,130520,130510,130540.130523,130524,130529,130492,130489,130533,130534,130541,130518,130538,130523);
DELETE FROM creature_addon WHERE guid IN (130509,130514,130520,130510,130540.130523,130524,130529,130492,130489,130533,130534,130541,130518,130538,130523);
DELETE FROM creature_movement WHERE id IN (130509,130514,130520,130510,130540.130523,130524,130529,130492,130489,130533,130534,130541,130518,130538,130523);
DELETE FROM gameobject WHERE guid IN (66417,66419,66388,63190,66477,66390,66474,66386,63180,66394,63182,66402,66398,66400);

-- Terrifying Abomination
UPDATE creature SET position_x = 2404.614258, position_y = -5576.001953, position_z = 420.648224, orientation = 2.847471 WHERE guid = 130527;
UPDATE creature SET position_x = 2417.488770, position_y = -5587.981445, position_z = 420.643829, orientation = 4.783482 WHERE guid = 130526;
UPDATE creature SET position_x = 2524.172363, position_y = -5605.970215, position_z = 420.650696, orientation = 2.712384 WHERE guid = 130513;
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid IN (130532,130535,130522,130511,130508,130531,130537);
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (130526,130527,130530,130521,130517,130515,130512,130505,130506,130528,130513,130516,130519,130525,130539,130507,130538,130536);
-- Val'kyr Battle-maiden
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (130490,130491,130494,130493);
DELETE FROM creature_movement WHERE id IN (130490,130491,130494,130493);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(130490,1,2502.84,-5616.48,432.943,0,0,1.55658,0,0),
(130490,2,2504.11,-5590.47,432.905,0,0,2.10636,0,0),
(130490,3,2494.05,-5577.2,433.731,0,0,2.92238,0,0),
(130490,4,2471.94,-5577.82,433.117,0,0,4.00231,0,0),
(130490,5,2454.16,-5602.11,434.512,0,0,5.63201,0,0),
(130490,6,2477.43,-5633.17,434.415,0,0,5.85016,0,0),
-- #2
(130491,1,2472.95,-5595.96,427.061,0,0,0.428365,0,0),
(130491,2,2497.12,-5583.22,427.061,0,0,2.42328,0,0),
(130491,3,2494.59,-5562.15,426.705,0,0,2.53281,0,0),
(130491,4,2471.2,-5554.49,426.149,0,0,3.41916,0,0),
(130491,5,2451.5,-5563.65,427.061,0,0,4.36164,0,0),
(130491,6,2447.21,-5581.95,427.061,0,0,5.82562,0,0),
-- #3
(130494,1,2465.76,-5620,434.171,0,0,2.25277,0,0),
(130494,2,2454.56,-5606.66,433.226,0,0,3.58481,0,0),
(130494,3,2431.77,-5618.29,432.56,0,0,5.5703,0,0),
(130494,4,2444.1,-5629.27,432.948,0,0,5.93804,0,0),
(130494,5,2461.61,-5633.12,432.837,0,0,1.14319,0,0),
-- #4
(130493,1,2424.46,-5574.49,430.977,0,0,4.77273,0,0),
(130493,2,2427.46,-5595.36,430.977,0,0,5.84961,0,0),
(130493,3,2444.23,-5598.51,430.977,0,0,0.722527,0,0),
(130493,4,2454.89,-5586.1,430.977,0,0,1.62731,0,0),
(130493,5,2453.33,-5568.18,430.977,0,0,2.91536,0,0),
(130493,6,2434.54,-5563.2,430.977,0,0,3.94266,0,0);
-- Knight of the Ebon Blade
UPDATE creature_template SET UnitFlags = 32784 WHERE entry = 31094;
UPDATE creature SET spawntimesecs = 120 WHERE id = 31094;
-- Patchwerk
UPDATE creature_template SET Expansion = 1, UnitClass = 1, DamageMultiplier = 10.5, MechanicImmuneMask = 8388656 WHERE entry = 31099;
UPDATE creature SET spawntimesecs = 120 WHERE id = 31099;
DELETE FROM dbscripts_on_creature_death WHERE id = 31099;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(31099,1,0,0,0,0,0,0,2000000509,0,0,0,0,0,0,0,''),
(31099,15,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
DELETE FROM db_script_string WHERE entry = 2000000509;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000509,'What... happen to-',0,1,0,0,NULL);
