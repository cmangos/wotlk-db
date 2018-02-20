-- q.12019 'Last Rites'

-- can't set correct gossip to Thassarian
-- we need to use his current one 9417 (should be 9418)

-- Duplicates removed
DELETE FROM creature WHERE guid IN (111277,111300);
DELETE FROM creature_addon WHERE guid IN (111277,111300);
DELETE FROM creature_movement WHERE id IN (111277,111300);
DELETE FROM game_event_creature WHERE guid IN (111277,111300);
DELETE FROM game_event_creature_data WHERE guid IN (111277,111300);
DELETE FROM creature_battleground WHERE guid IN (111277,111300);
DELETE FROM creature_linking WHERE guid IN (111277,111300)
 OR master_guid IN (111277,111300);

 -- Thassarian
-- * 
-- Temp gossip option (pls remove when new option available)
-- spawn on top on naxxanar should have gossip = 9418 with this option
DELETE FROM gossip_menu_option WHERE menu_id = 9417;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(9417,0,0,'Let\'s do this, Thassarian.  It\'s now or never..', 1, 1, -1, 0, 941801, 0, 0, NULL, 1438);
 -- *
DELETE FROM dbscripts_on_gossip WHERE id = 941801;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(941801,0,31,26173,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if buddy found'), -- remove if correct gossip implemented
(941801,1,20,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoints');
DELETE FROM conditions WHERE condition_entry = 1438;
INSERT INTO conditions (condition_entry,type,value1,value2) VALUE
(1438,9,12019,0);
-- waypoints
UPDATE creature SET spawntimesecsmin = 90, spawntimesecsmax = 90, spawndist = 0, MovementType = 2 WHERE guid = 101303;
UPDATE creature_template SET MovementType = 0 WHERE entry = 26170;
-- for default waypoints
DELETE FROM creature_movement WHERE id = 101303;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(101303,1,3691.94,3576.49,473.405,2000,2617002,6.0912);
-- for q.12019
DELETE FROM creature_movement_template WHERE entry = 26170;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(26170,1,1,3691.94,3576.49,473.405,1000,2617003,6.0912),
(26170,1,2,3713.45,3570.78,477.442,900000,2617004,6.09687);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2617002 AND 2617004;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2617002,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2617002,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2617002,0,5,82,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2617002,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2617003,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2617003,0,5,82,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2617004,1,1,333,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2617004,2,10,25301,900000,1,0,0,0x08,0,0,0,0,3747.23,3614.936,473.321,4.462012,'summon - Counselor Talbot'),
(2617004,2,10,26203,112000,1,0,0,0x08,0,0,0,0,3730.313,3518.689,473.324,1.562,'summon - Image of the Lich King');

-- Counselor Talbot
UPDATE creature_template SET MovementType = 2 WHERE entry = 25301; -- 32768
DELETE FROM creature_movement_template WHERE entry = 25301;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25301,1,1,3738.27,3570.27,477.442,300000,2530101,100);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2530101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2530101,2,44,28189,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2530101,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2530101,4,0,0,0,0,0,0,0,2000001553,0,0,0,0,0,0,0,''),
(2530101,4,16,14211,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2530101,6,10,25250,900000,1,0,0,0x08,0,0,0,0,3745.527100,3615.655029,473.321533,4.447805,'summon - General Arlos'),
(2530101,6,10,25251,900000,1,0,0,0x08,0,0,0,0,3749.654541,3614.959717,473.323486,4.524959,'summon - Leryssa'),
(2530101,14,0,0,0,0,26203,50,7,2000001570,0,0,0,0,0,0,0,''),
(2530101,14,16,14756,2,0,26203,50,7,0,0,0,0,0,0,0,0,''),
(2530101,23,0,0,0,0,0,0,0,2000001554,0,0,0,0,0,0,0,''),
(2530101,23,16,14212,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2530101,31,0,0,0,0,26170,50,7,2000001563,0,0,0,0,0,0,0,''),
(2530101,31,16,14664,2,0,26170,50,7,0,0,0,0,0,0,0,0,''),
(2530101,31,3,0,700,0,26170,50,7,0,0,0,0,3722.27,3567.66,477.441,6.00585,''),
(2530101,38,0,0,0,0,26170,50,7,2000001564,0,0,0,0,0,0,0,''),
(2530101,38,16,14665,2,0,26170,50,7,0,0,0,0,0,0,0,0,''),
(2530101,44,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2530101,44,3,0,0,0,26203,50,7,0,0,0,0,0,0,0,2.938,''),
(2530101,46,0,0,0,0,26203,50,7,2000001571,0,0,0,0,0,0,0,''),
(2530101,46,16,14757,2,0,26203,50,7,0,0,0,0,0,0,0,0,''),
(2530101,63,0,0,0,0,26170,50,7,2000001565,0,0,0,0,0,0,0,''),
(2530101,63,16,14666,2,0,26170,50,7,0,0,0,0,0,0,0,0,''),
(2530101,75,0,0,0,0,0,0,0,2000001555,0,0,0,0,0,0,0,''),
(2530101,75,16,14213,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2530101,81,3,0,0,0,26203,50,7,0,0,0,0,0,0,0,1.26965,''),
(2530101,82,0,0,0,0,26203,50,7,2000001572,0,0,0,0,0,0,0,''),
(2530101,82,16,14758,2,0,26203,50,7,0,0,0,0,0,0,0,0,''),
(2530101,85,3,0,0,0,26203,50,7,0,0,0,0,0,0,0,2.938,''),
(2530101,86,1,25,0,0,26203,50,7,0,0,0,0,0,0,0,0,''),
(2530101,93,0,0,0,0,0,0,0,2000001556,0,0,0,0,0,0,0,''),
(2530101,93,16,14214,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2530101,96,5,59,512,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2530101,96,5,59,256,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2530101,97,26,0,0,0,26170,100,1,0,0,0,0,0,0,0,0,'');

-- Prince Valanar
UPDATE creature_template SET FactionAlliance = 974, FactionHorde = 974, Expansion = 2, UnitClass = 8, UnitFlags = 33536, Armor = 5886, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 140, MinMeleeDmg = 1969, MaxMeleeDmg = 2878 WHERE entry = 28189;

-- Image of the Lich King
UPDATE creature_template SET MovementType = 2 WHERE entry = 26203;
DELETE FROM creature_movement_template WHERE entry = 26203;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(26203,1,1,3737.374756,3564.841309,477.433014,300000,7,100);

-- General Arlos
UPDATE creature_template SET MovementType = 2 WHERE entry = 25250;
DELETE FROM creature_movement_template WHERE entry = 25250;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25250,1,1,3735.570068,3572.419922,477.441010,300000,2525001,100),
(25250,2,1,3735.570068,3572.419922,477.441010,300000,2525002,100);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2525001,2525002);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2525001,0,15,46957,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2525001,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2525002,0,14,46957,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2525002,1,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2525002,1,0,0,0,0,0,0,0,2000001557,0,0,0,0,0,0,0,''),
(2525002,1,16,14196,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2525002,6,0,0,0,0,0,0,0,2000001558,0,0,0,0,0,0,0,''),
(2525002,6,16,14197,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2525002,6,28,7,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNIT_STAND_STATE_DEAD');

-- Leryssa
DELETE FROM npc_gossip WHERE npc_guid = 111300;
UPDATE creature_template SET UnitFlags = 33536, MovementType = 2 WHERE entry = 25251;
DELETE FROM creature_movement_template WHERE entry = 25251;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25251,1,1,3741.969971,3571.439941,477.441010,300000,2525001,100), -- General Arlos script used
(25251,2,1,3741.969971,3571.439941,477.441010,300000,2525101,100);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2525101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2525101,1,3,0,0,0,26170,100,7,0,0,0,0,3722.27,3567.66,477.441,0.205875,''),
(2525101,6,0,0,0,0,0,0,0,2000001559,0,0,0,0,0,0,0,''),
(2525101,6,16,14489,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2525101,9,14,46957,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2525101,10,0,0,0,0,26170,50,7,2000001566,0,0,0,0,0,0,0,''),
(2525101,10,16,14667,2,0,26170,50,7,0,0,0,0,0,0,0,0,''),
(2525101,10,28,8,0,0,26170,50,7,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2525101,10,3,0,0,0,26170,100,7,0,0,0,0,0,0,0,0.205875,''),
(2525101,11,3,0,700,0,0,0,0,0,0,0,0,3726.07,3568.26,477.441,3.37027,''),
(2525101,15,0,0,0,0,0,0,0,2000001560,0,0,0,0,0,0,0,''),
(2525101,15,16,14490,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2525101,15,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2525101,17,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(2525101,22,0,0,0,0,26170,50,7,2000001567,0,0,0,0,0,0,0,''),
(2525101,22,16,14668,2,0,26170,50,7,0,0,0,0,0,0,0,0,''),
(2525101,30,0,0,0,0,0,0,0,2000001561,0,0,0,0,0,0,0,''),
(2525101,30,16,14491,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2525101,42,0,0,0,0,26170,50,7,2000001568,0,0,0,0,0,0,0,''),
(2525101,42,16,14669,2,0,26170,50,7,0,0,0,0,0,0,0,0,''),
(2525101,52,0,0,0,0,0,0,0,2000001562,0,0,0,0,0,0,0,''),
(2525101,52,16,14492,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2525101,63,0,0,0,0,26170,50,7,2000001569,0,0,0,0,0,0,0,''),
(2525101,63,16,14670,2,0,26170,50,7,0,0,0,0,0,0,0,0,''),
(2525101,105,18,0,0,0,25250,100,7,0,0,0,0,0,0,0,0,''),
(2525101,105,18,0,0,0,26170,100,7,0,0,0,0,0,0,0,0,''),
(2525101,106,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- texts
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001553 AND 2000002090;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
-- Valanar
(2000001553,'My liege, the infiltration and control of the Alliance power structure by our cultists is well underway.',0,0,0,0,''), -- 14211
(2000001554,'The power you\'ve bestowed upon me has granted me great mental influence over human minds.  I bear these offerings as proof of my progress.',0,0,0,0,''), -- 14212
(2000001555,'Allow me to take care of the intruders, lord.  I will feed their entrails to the maggots.',0,0,0,0,''), -- 14213
(2000001556,'Yes, my lord!',0,0,0,0,''), -- 14214
-- Arlos
(2000001557,'What... what happened to me?',0,0,0,0,''), -- 14196
(2000001558,'Ugh!  My head won\'t stop spinning...',0,0,0,0,''), -- 14197
-- Leryssa
(2000001559,'Thassarian!  You\'re alive!',0,1,0,0,''), -- 14489
(2000001560,'I thought... I thought you were... dead.',0,0,0,0,''), -- 14490
(2000001561,'Don\'t leave me again!  You want to fight for your country, but they don\'t even want you!  They sent you here to die!',0,0,0,274,''), -- 14491
(2000001562,'I know that look in your eye... I\'m not going to be able to talk you out of this.  If you die on me again...',0,0,0,0,''), -- 14492
-- Thassarian
(2000001563,'Leryssa!',0,1,0,0,''), -- 14664
(2000001564,'What have you done to my sister, you motherless elf scum!?',0,1,0,0,''), -- 14665
(2000001565,'I would sooner slit my own throat.  You will pay for what you did to your own men, Arthas... for what you did to me!  I swear it.',0,0,0,15,''), -- 14666
(2000001566,'Leryssa... you... you\'re all right!',0,0,0,0,''), -- 14667
(2000001567,'I cannot return home with you just yet, Leryssa.  I am not quite done with the Scourge.',0,0,0,0,''), -- 14668
(2000001568,'You might be right, sister.  My obligations to my land and King have been fulfilled.  But there is something that I still owe to myself.',0,0,0,0,''), -- 14669
(2000001569,'Do not worry, Leryssa.  I will come back to you when I am done.  Nothing in the world will stop me from coming home to the only family that I have left.',0,0,0,0,''), -- 14670
-- Lich King
(2000001570,'Your progress in this region has been impressive, blood prince.  I am pleased.',0,0,0,1,''), -- 14756
(2000001571,'Now this is a surprise, Thassarian.  I hadn\'t heard from Mograine or the other death knights for months.  You\'ve come to rejoin the Scourge, I take it?',0,0,0,0,''), -- 14757
(2000001572,'Do not fail me, San\'layn.  Return to Icecrown with this fool\'s head or do not bother to return.',0,0,0,1,''); -- 14758
