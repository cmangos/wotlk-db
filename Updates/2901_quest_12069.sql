-- q.12069 'Return of the High Chief'

DELETE FROM dbscripts_on_event WHERE id = 17671;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17671,100,31,26654,25,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26654 - only 1 event should be running'),
(17671,500,15,5,0,0,26656,5714033,7 | 0x10,0,0,0,0,0,0,0,0,''),
(17671,501,15,5,0,0,26656,5714034,7 | 0x10,0,0,0,0,0,0,0,0,''),
(17671,502,15,5,0,0,26656,5714035,7 | 0x10,0,0,0,0,0,0,0,0,''),
(17671,503,15,5,0,0,26656,5714036,7 | 0x10,0,0,0,0,0,0,0,0,''),
(17671,504,15,5,0,0,26656,5714037,7 | 0x10,0,0,0,0,0,0,0,0,''),
(17671,505,15,5,0,0,26656,5714038,7 | 0x10,0,0,0,0,0,0,0,0,''),
(17671,506,15,5,0,0,26656,5714039,7 | 0x10,0,0,0,0,0,0,0,0,''),
(17671,507,15,5,0,0,26656,5714040,7 | 0x10,0,0,0,0,0,0,0,0,''),
(17671,1000,20,2,0,0,26654,50,7,0,0,0,0,0,0,0,0,'');
-- links
DELETE FROM creature_linking WHERE master_guid = 5713978;
DELETE FROM creature_linking WHERE master_guid = 5713878;
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(5714033,5713978,128),
(5714034,5713978,128),
(5714035,5713978,128),
(5714036,5713978,128),
(5714037,5713978,128),
(5714038,5713978,128),
(5714039,5713978,128),
(5714040,5713978,128);

-- Roanauk Icemist 26654
UPDATE creature_template SET MovementType = 2 WHERE Entry = 26654; -- waypoints will be set by script
UPDATE creature SET spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 26654;
DELETE FROM creature_movement_template WHERE entry = 26654;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26654,1,4045.7,2210.59,151.873,100,5000,2665401),
(26654,2,4064.83,2211.93,152.093,100,0,0),
(26654,3,4066.9,2214.06,152.067,100,6000,2665402),
(26654,4,4066.9,2214.06,152.067,0.389109,30000,2665403),
(26654,5,4066.9,2214.06,152.067,100,300000,2665404),
(26654,6,4066.9,2214.06,152.067,100,1000,1);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2665401 AND 2665405;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2665401,10,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(2665401,50,35,5,1,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT A'),
(2665401,108,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2665401,1000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(2665401,3000,0,0,0,0,0,0,0x04,2000020422,0,0,0,0,0,0,0,'say'),
(2665402,3000,0,0,0,0,0,0,0x04,2000020423,0,0,0,0,0,0,0,'say'),
(2665402,3500,1,16,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2665403,2000,0,0,0,0,0,0,0x04,2000020424,0,0,0,0,0,0,0,'say'),
(2665403,5000,0,0,0,0,26608,100,7,2000020425,0,0,0,0,0,0,0,'buddy - say'),
(2665403,9000,0,0,0,0,0,0,0x04,2000020426,0,0,0,0,0,0,0,'say'),
(2665403,9100,15,47378,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast - Glory of the Ancestors'),
(2665403,20000,0,0,0,0,0,0,0x04,2000020427,0,0,0,0,0,0,0,'say'),
(2665403,20100,15,47379,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast - Icemist\'s Blessing'),
(2665403,22000,0,0,0,0,0,0,0x04,2000020428,0,0,0,0,0,0,0,'say'),
(2665403,24000,0,0,0,0,26608,100,7,2000020429,0,0,0,0,0,0,0,'buddy - say'),
(2665403,29000,0,0,0,0,0,0,0x04,2000020430,0,0,0,0,0,0,0,'say'),
(2665404,1000,15,46598,0,0,26777,5714043,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2665404,1100,20,2,0,0,26608,100,7,0,0,0,0,0,0,0,0,'buddy - set waypoints'),
(2665404,5000,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2665404,6000,3,0,0,0,0,0,0x04 | 0x08,0,0,0,0,4108.09,2228.28,220.315,1.6057,''), -- server must record movement
(2665404,7000,15,46598,0,0,26777,5714042,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2665404,10000,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2665404,10500,3,0,0,0,0,0,0x04 | 0x08,0,0,0,0,4093.22,2220.46,150.305,2.72271,''), -- server must record movement
(2665404,12000,22,1935,0x20,0,0,0,0,0,0,0,0,0,0,0,0,'remove unitlags - npc passive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020422 AND 2000020431;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020422,'I... am... FREE!',0,1,0,22,NULL),
(2000020423,'What have they done to my people...',0,0,0,6,NULL),
(2000020424,'You will face the full fury of the ancestors for what you have done, monster!',0,1,0,22,NULL),
(2000020425,'Your freedom will be short lived, Icemist!',0,1,0,15,NULL),
(2000020426,'Rebirth comes, my brothers... Rise... Rise and fight once more.',0,0,0,0,NULL),
(2000020427,'FOR ICEMIST! FOR THE TAUNKA!',0,1,0,15,NULL),
(2000020428,'Come down and face me, insect!',0,1,0,15,NULL),
(2000020429,'Insolent mortal! You will be consumed!',0,1,0,15,NULL),
(2000020430,'Then I will force you down! Wind grant me flight!',0,1,0,15,NULL),
(2000020431,'ARRGGH!! It cannot be! How...',0,1,0,0,NULL);
-- target for 47378
DELETE FROM spell_script_target WHERE entry IN (47378);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(47378,1,26772,0);

-- Under-King Anub'et'kan 26608
UPDATE creature_template SET MovementType = 2 WHERE Entry = 26608; -- waypoints will be set by script
UPDATE creature SET spawndist = 0, MovementType = 0, spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 26608;
DELETE FROM creature_movement_template WHERE entry = 26608;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26608,1,4112.92,2231.33,221.972,100,300000,2660801);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2660801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2660801,2000,0,0,0,0,0,0,0x04,2000020431,0,0,0,0,0,0,0,'say'),
(2660801,2500,15,46598,0,0,26778,100,1,0,0,0,0,0,0,0,0,''),
(2660801,6000,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2660801,7000,3,0,0,0,0,0,0x04 | 0x08,0,0,0,0,4088.68,2219.45,150.305,3.90954,''), -- server must record movement
(2660801,8000,22,1771,0x10 | 0x20,0,0,0,0,0,0,0,0,0,0,0,0,'remove unitlags');
DELETE FROM dbscripts_on_creature_death WHERE id = 26608;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(26608,1,0,0,0,0,0,0,0,2000020432,0,0,0,0,0,0,0,''),
(26608,50,35,5,200,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT A'),
(26608,100,18,20000,0,0,26654,200,0x04,0,0,0,0,0,0,0,0,'buddy - despawn self'),
(26608,101,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
DELETE FROM dbscript_string WHERE entry = 2000020432;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020432,'Anub\'et\'kan is defeated! Take a fragment of his husk as proof of your victory!',0,3,0,0,NULL);

-- Icemist Warrior 26772
UPDATE creature SET spawndist = 5, MovementType = 1, spawntimesecsmin = 90, spawntimesecsmax = 90 WHERE id = 26772;
-- Part of Icemist Warrior EAI:
DELETE FROM dbscripts_on_relay WHERE id = 20315;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20315,100,15,29266,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Icemist Warrior EAI: Cast Permanent Feign Death');

-- Roanauk Icemist 26810 in Agmar's Hammer will become visible to Players after quest completed
DELETE FROM spell_area WHERE spell = 47396;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(47396,4165,0,0,0,20061,0,0,2,1);
DELETE FROM `conditions` WHERE `condition_entry` IN (20061);
INSERT INTO `conditions` (condition_entry, type, value1, value2) VALUES
(20061, 8, 12069, 0);
