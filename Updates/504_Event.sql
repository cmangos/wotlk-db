-- Warden Nork Bloodfrenzy & Ug'thor Bloodfrenzy <Son of Nork>
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 23167; -- model corrected
UPDATE creature SET MovementType = 2 WHERE guid = 125384;
DELETE FROM creature_movement WHERE id = 125384;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 25379;
DELETE FROM creature_movement_template WHERE entry = 25379;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25379, 1, 2805.71, 6050.89, 77.3308, 45000, 0, 1.11701, 0, 0),
(25379, 2, 2805.71, 6050.89, 77.3308, 100000, 2537901, 1.11701, 0, 0),
(25379, 3, 2805.71, 6050.89, 77.3308, 360000, 0, 1.11701, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2537901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2537901,0,31,25426,100,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2537901,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2537901,1,21,1,0,25426,125421,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - active'),
(2537901,2,0,0,0,0,0,0,2000000926,0,0,0,0,0,0,0,''),
(2537901,5,0,0,0,25426,125421,7 | 0x10,2000000927,0,0,0,0,0,0,0,''),
(2537901,13,1,11,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2537901,15,0,0,0,0,0,0,2000000928,0,0,0,0,0,0,0,''),
(2537901,16,0,0,0,0,0,0,2000000929,0,0,0,0,0,0,0,''),
(2537901,21,0,0,0,25426,125421,7 | 0x10,2000000930,0,0,0,0,0,0,0,''),
(2537901,27,0,0,0,0,0,0,2000000931,0,0,0,0,0,0,0,''),
(2537901,30,0,0,0,0,0,0,2000000932,0,0,0,0,0,0,0,''),
(2537901,35,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2537901,40,0,0,0,25426,125421,7 | 0x10,2000000933,0,0,0,0,0,0,0,''),
(2537901,48,0,0,0,0,0,0,2000000934,0,0,0,0,0,0,0,''),
(2537901,53,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2537901,57,0,0,0,0,0,0,2000000935,0,0,0,0,0,0,0,''),
(2537901,62,0,0,0,0,0,0,2000000936,0,0,0,0,0,0,0,''),
(2537901,69,0,0,0,25426,125421,7 | 0x10,2000000937,0,0,0,0,0,0,0,''),
(2537901,72,0,0,0,25426,125421,7 | 0x10,2000000938,0,0,0,0,0,0,0,''),
(2537901,77,0,0,0,25426,125421,7 | 0x10,2000000939,0,0,0,0,0,0,0,''),
(2537901,80,0,0,0,25426,125421,7 | 0x10,2000000940,0,0,0,0,0,0,0,''),
(2537901,85,0,0,0,0,0,0,2000000941,0,0,0,0,0,0,0,''),
(2537901,87,0,0,0,0,0,0,2000000942,0,0,0,0,0,0,0,''),
(2537901,91,1,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2537901,94,0,0,0,0,0,0,2000000943,0,0,0,0,0,0,0,''),
(2537901,97,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2537901,99,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2537901,99,21,0,0,25426,125421,7 | 0x10,0,0,0,0,0,0,0,0,'Buddy - unactive');
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000000926 AND 2000000943;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000926,'Look at \'em, Ug. You know what those are?',0,0,0,25,NULL),
(2000000927,'No, popo. They look kind of like the pigs. Are they pigs?',0,0,0,1,NULL),
(2000000928,'Those...',0,0,0,25,NULL),
(2000000929,'Those are cowards.',0,0,0,1,NULL),
(2000000930,'Are they cowardly pigs, popo?',0,0,0,1,NULL),
(2000000931,'%s shakes his head.',0,2,0,274,NULL),
(2000000932,'No, blood of my blood, they are soldiers of the Alliance. Our sworn enemies.',0,0,0,1,NULL),
(2000000933,'But popo, what are they afraid of? Why are they here?',0,0,0,1,NULL),
(2000000934,'They are here because they do not wish to defend their homes... their families...',0,0,0,1,NULL),
(2000000935,'They have given up and surrendered - willingly - to us.',0,0,0,1,NULL),
(2000000936,'Ug\'thor, they are afraid to die.',0,0,0,1,NULL),
(2000000937,'%s scratches his head.',0,2,0,0,NULL),
(2000000938,'I... I don\'t understand, popo.',0,0,0,1,NULL),
(2000000939,'%s puffs out his chest and stands on his tip-toes.',0,2,0,0,NULL),
(2000000940,'Lok\'tar ogar, popo!',0,0,0,1,NULL),
(2000000941,'%s laughs.',0,2,0,11,NULL),
(2000000942,'That\'s right, Ug. Victory or death!',0,0,0,273,NULL),
(2000000943,'[In Broken Common] Hear boy, cowards? Boy die! Boy die for freedom!',0,0,0,273,NULL);

-- Alliance Deserter
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid IN (125355,125357,125364);
-- Warsong Swine
-- duplicates removed & movement corrections
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE id = 25362;
DELETE FROM creature WHERE guid IN (125381,125377,125382,125366,125378,125370);
DELETE FROM creature_addon WHERE guid IN (125381,125377,125382,125366,125378,125370);
DELETE FROM creature_movement WHERE id IN (125381,125377,125382,125366,125378,125370);
DELETE FROM game_event_creature WHERE guid IN (125381,125377,125382,125366,125378,125370);
DELETE FROM game_event_creature_data WHERE guid IN (125381,125377,125382,125366,125378,125370);
DELETE FROM creature_battleground WHERE guid IN (125381,125377,125382,125366,125378,125370);
DELETE FROM creature_linking WHERE guid IN (125381,125377,125382,125366,125378,125370) OR master_guid IN (125381,125377,125382,125366,125378,125370);
UPDATE creature SET position_x = 2816.975830, position_y = 6066.487305, position_z = 75.680222 WHERE guid = 125375;
UPDATE creature SET position_x = 2804.633545, position_y = 6060.894531, position_z = 75.680382 WHERE guid = 125369;
UPDATE creature SET position_x = 2800.655518, position_y = 6065.381836, position_z = 75.680382 WHERE guid = 125368;
UPDATE creature SET position_x = 2819.598633, position_y = 6071.515625, position_z = 75.680283 WHERE guid = 125373;
