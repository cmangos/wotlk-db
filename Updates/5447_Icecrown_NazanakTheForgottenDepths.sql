-- Icecrown: Naz'anak: The Forgotten Depths
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 536668 AND 536681;
DELETE FROM creature_movement WHERE id BETWEEN 536668 AND 536681;
DELETE FROM game_event_creature WHERE guid BETWEEN 536668 AND 536681;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 536668 AND 536681;
DELETE FROM creature_battleground WHERE guid BETWEEN 536668 AND 536681;
DELETE FROM creature_linking WHERE guid BETWEEN 536668 AND 536681;
DELETE FROM creature WHERE guid BETWEEN 536668 AND 536681;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- Matthias Lehner 31237
(536668,31237,571,1,1,5792.522,2069.4866,-345.08755,2.28638,180,180,0,0),
-- Faceless Lurker 31691
(536669,31691,571,1,1,5832.3687,2107.6562,-347.7829,0,300,300,7,1),
(536670,31691,571,1,1,5856.281,1930.3204,-345.90213,0,300,300,7,1),
(536671,31691,571,1,1,5849.2827,1937.54,-346.85043,0,300,300,7,1),
(536672,31691,571,1,1,5803.7324,2000.177,-345.55865,0,300,300,7,1),
(536673,31691,571,1,1,5796.8857,1981.5428,-346.15784,0,300,300,7,1),
(536674,31691,571,1,1,5774.5835,2024.3372,-344.09552,0,300,300,7,1),
(536675,31691,571,1,1,5719.3066,2086.5542,-341.1346,0,300,300,7,1),
(536676,31691,571,1,1,5671.884,2021.9261,-345.88354,0,300,300,7,1),
(536677,31691,571,1,1,5723.302,2008.0756,-342.98755,0,300,300,7,1),
(536678,31691,571,1,1,5785.686,1944.6027,-344.96536,0,300,300,7,1),
(536679,31691,571,1,1,5848.4404,1902.4575,-346.2162,0,300,300,7,1),
(536680,31691,571,1,1,5823.8794,1899.3018,-347.77734,0,300,300,7,1),
(536681,31691,571,1,1,5814.12,1990.5884,-345.20865,0,300,300,7,1);
-- Updates
-- Matthias Lehner 31237
DELETE FROM creature_template_addon WHERE entry = 31237;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(31237,0,0,0,0,0,0,10848);
-- portal update
DELETE FROM spell_target_position WHERE Id IN(60905);
INSERT INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(60905,571,6435,2366.9,465.7,3.56047);
