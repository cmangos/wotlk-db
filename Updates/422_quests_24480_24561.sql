
-- ######################
-- HoR Quel'Delar event
-- Quests 24480 and 24561
-- ######################

-- Uther Dialogue
SET @DB_STRING_ENTRY:=2000005888;
DELETE FROM db_script_string WHERE entry BETWEEN @DB_STRING_ENTRY AND @DB_STRING_ENTRY+6;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(@DB_STRING_ENTRY+0,'Do you realize what you\'ve done?',16676,1,0,6,'Uther - say start Queldelar'),
(@DB_STRING_ENTRY+1,'Quel\'Delar leeps to life in the presence of Frostmourne!',0,3,0,0,'Uther - emote Queldelar start'),
(@DB_STRING_ENTRY+2,'Quel\'Delar prepares to attack!',0,3,0,0,'Uther - emote Queldelar attack'),
(@DB_STRING_ENTRY+3,'You have forged this blade from saronite, the very blood of an old god. The power of the Lich King calls to this weapon.',16677,0,0,1,'Uther - Queldelar epilog 1'),
(@DB_STRING_ENTRY+4,'Each moment you tarry here, Quel\'Delar drinks in the evil of this place.',16678,0,0,1,'Uther - Queldelar epilog 2'),
(@DB_STRING_ENTRY+5,'There is only one way to cleanse the sword. Make haste for the Sunwell and immerse the blade in its waters.',16679,0,0,1,'Uther - Queldelar epilog 3'),
(@DB_STRING_ENTRY+6,'I can resist Frostmourne\'s call no more...',16680,0,0,1,'Uther - Queldelar epilog 4');

-- ########
-- Movement
-- ########
DELETE FROM creature_movement_template WHERE entry=37225;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(37225, 1, 5301.767, 1990.667, 707.695, 0, 0, 0),
(37225, 2, 5301.767, 1990.667, 707.695, 6000, 3722502, 3.909),
(37225, 3, 5328.855, 1984.229, 707.695, 0, 0, 0),
(37225, 4, 5334.930, 1982.132, 709.319, 1000, 3722504, 2.342),
(37225, 5, 5315.135, 1992.650, 707.695, 1000, 3722505, 3.345);

-- scripts
DELETE FROM dbscripts_on_creature_movement WHERE id=3722502;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3722502,0,25,1,0,0,0,0,0,'Uther - set run on'),
(3722502,1,0,0,0,0,0,0,@DB_STRING_ENTRY+1,'Uther - emote Queldelar start'),
(3722502,2,0,0,0,0,0,0,@DB_STRING_ENTRY+0,'Uther - say start Queldelar'),
(3722502,4,20,2,0,37158,10,0,0,'Quel\'Delar - start wp movement');
DELETE FROM dbscripts_on_creature_movement WHERE id=3722504;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3722504,0,32,1,0,0,0,0,0,'Uther - pause WP Movement'),
(3722504,0,28,8,0,0,0,0,0,'Uther - kneel');
DELETE FROM dbscripts_on_spell WHERE id=70700;
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(70700,0,15,69966,0,0,0,0,0,'cast Summon Evil Quel\'Delar');
DELETE FROM dbscripts_on_creature_movement WHERE id=3722505;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3722505,0,32,1,0,0,0,0,0,'Uther - pause WP Movement'),
(3722505,1,0,0,0,0,0,0,@DB_STRING_ENTRY+3,'Uther - Queldelar epilog 1'),
(3722505,14,0,0,0,0,0,0,@DB_STRING_ENTRY+4,'Uther - Queldelar epilog 2'),
(3722505,21,0,0,0,0,0,0,@DB_STRING_ENTRY+5,'Uther - Queldelar epilog 3'),
(3722505,30,0,0,0,0,0,0,@DB_STRING_ENTRY+6,'Uther - Queldelar epilog 4'),
-- (3722505,34,15,xyz,0,0,0,0,0,'Uther - cast missing visual spell'),
(3722505,40,15,70693,0,0,0,0,0,'Uther - cast Uther Despawn'),
(3722505,40,18,5000,0,0,0,0,0,'Uther - despawn');

DELETE FROM creature_movement_template WHERE entry=37158;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id) VALUES 
(37158, 1, 5298.00, 1995.00, 708.00, 0, 0),
(37158, 2, 5298.00, 1995.00, 708.00, 1000, 3715802),
(37158, 3, 5296.31, 1998.08, 711.26, 0, 0),
(37158, 4, 5293.85, 2004.98, 715.06, 0, 0),
(37158, 5, 5295.15, 2010.04, 729.90, 0, 0),
(37158, 6, 5300.84, 2018.94, 724.90, 0, 0),
(37158, 7, 5310.36, 2022.28, 724.90, 0, 0),
(37158, 8, 5322.02, 2016.48, 724.90, 0, 0),
(37158, 9, 5324.71, 2007.11, 724.90, 0, 0),
(37158, 10, 5323.01, 1997.31, 724.90, 0, 0),
(37158, 11, 5315.57, 1991.08, 724.90, 0, 0),
(37158, 12, 5303.66, 1989.62, 724.90, 0, 0),
(37158, 13, 5292.65, 1996.67, 724.90, 0, 0),
(37158, 14, 5285.99, 2008.01, 724.90, 0, 0),
(37158, 15, 5288.70, 2014.75, 724.90, 0, 0),
(37158, 16, 5295.83, 2022.51, 724.90, 0, 0),
(37158, 17, 5304.36, 2027.42, 724.90, 0, 0), 
(37158, 18, 5316.36, 2026.70, 724.90, 0, 0),
(37158, 19, 5328.10, 2020.68, 724.90, 0, 0),
(37158, 20, 5333.19, 2010.76, 724.90, 0, 0),
(37158, 21, 5334.22, 2000.08, 724.90, 0, 0),
(37158, 22, 5328.54, 1988.06, 724.90, 0, 0),
(37158, 23, 5319.34, 1982.67, 718.90, 0, 0),
(37158, 24, 5312.24, 1983.81, 713.85, 0, 0),
(37158, 25, 5306.55, 1987.93, 711.27, 0, 0),
(37158, 26, 5298.00, 1995.00, 708.00, 1000, 3715826);
-- scripts
DELETE FROM dbscripts_on_creature_movement WHERE id=3715802;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3715802,0,25,1,0,0,0,0,0,'Quel\'Delar - set run on'),
(3715802,0,39,1,0,0,0,0,0,'Quel\'Delar - set fly on');
DELETE FROM dbscripts_on_creature_movement WHERE id=3715826;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(3715826,0,32,1,0,0,0,0,0,'Uther - pause WP Movement'),
(3715826,0,39,0,0,0,0,0,0,'Quel\'Delar - set fly off'),
(3715826,1,0,0,0,0,0,0,@DB_STRING_ENTRY+2,'Quel\'Delar - emote Queldelar attack');
DELETE FROM dbscripts_on_creature_death WHERE id=37158;
INSERT INTO dbscripts_on_creature_death (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES
(37158,1,28,0,0,37225,150,0,0,'Uther - set stand'),
(37158,2,32,0,0,37225,150,0,0,'Uther - unpause WP Movement');


-- Spell targets (coords from YTDB, need to be checked)
DELETE FROM spell_target_position WHERE id IN (69966,70700);
INSERT INTO spell_target_position VALUES
(70700,668,5298,1995,708,0),
(69966,668,5298,1995,708,0);
