-- q.12478 'Frostmourne Cavern'
DELETE FROM dbscripts_on_event WHERE id = 18281;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18281,1,31,27851,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 27476 - terminate if alive'),
(18281,2,31,27480,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 27476 - terminate if alive'),
(18281,3,10,27851,60000,0,0,0,0x08,0,0,0,0,4819.328,-581.5831,163.7047,3.700098,'Summon: Thel\'zan Spell Dummy - active'),
(18281,10,0,0,0,0,27851,30,7,2000020651,0,0,0,0,0,0,0,'Buddy Say'),
(18281,11,15,33271,0,0,27851,30,7,0,0,0,0,0,0,0,0,'Buddy Cast 33271'),
(18281,5000,13,0,0,0,190332,50,1,0,0,0,0,0,0,0,0,'use object'),
(18281,6000,10,27480,140000,2,0,0,0x08,0,0,0,0,4817.494,-579.6047,163.0956,4.852015,'Summon: Muradin - active'),
(18281,6000,10,27455,120000,2,0,0,0x08,0,0,0,0,4821.529,-579.8818,163.5944,4.537856,'Summon: Prince Arthas - active'),
(18281,8000,0,0,0,0,27455,30,7,2000020652,0,0,0,0,0,0,0,'Buddy Say'),
(18281,12000,1,397,0,0,27455,30,7,0,0,0,0,0,0,0,0,'Buddy emote');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020651 AND 2000020658;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020651,'The walls of Frostmourne Cavern shudder and shake.',0,3,0,0,NULL),
(2000020652,'Behold, Muradin, our salvation, Frostmourne.',12729,0,0,1,NULL),
(2000020653,'Hold, lad. There\'s an inscription on the dais. It\'s a warning. It says, \"Whomsoever takes up this blade shall wield power eternal. Just as the blade rends flesh, so must power scar the spirit.\" Oh, I should\'ve known. The blade is cursed! Let\'s get the hell out of here!\n',12735,0,0,274,NULL),
(2000020654,'I would gladly bear any curse to save my homeland.',12730,0,0,1,NULL),
(2000020655,'Leave it be, Arthas. Forget this business and lead your men home.',12736,0,0,396,NULL),
(2000020656,'Damn the men! Nothing shall prevent me from having my revenge, old friend. Not even you.',12731,0,0,5,NULL),
(2000020657,'Now, I call out to the spirits of this place. I will give anything or pay any price, if only you will help me save my people.',12732,0,0,396,NULL),
(2000020658,'O\' my head... Wh... Where am I?',0,0,0,0,NULL);

-- Prince Arthas 27455
DELETE FROM creature_movement_template WHERE entry = 27455 AND pathId = 2;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27455,2,1,4821.529,-579.8818,163.5944,100,56000,0),
(27455,2,2,4820.175,-581.226,163.6158,4.47392,29000,2745502),
(27455,2,3,4819.658,-582.5223,163.752,100,5000,2745503),
(27455,2,4,4814.56,-577.2604,162.2522,100,4000,1015),
(27455,2,5,4793.07,-571.323,160.836,100,0,0),
(27455,2,6,4772.57,-566.823,162.291,100,0,0),
(27455,2,7,4759.57,-568.573,164.321,100,0,0),
(27455,2,8,4743.57,-564.386,166.236,100,1000,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2745502,2745503);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2745502,0,0,0,0,0,0,0,0,2000020656,0,0,0,0,0,0,0,'Say'),
(2745502,8000,0,0,0,0,0,0,0,2000020657,0,0,0,0,0,0,0,'Say'),
(2745502,14000,15,49824,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 49824'),
(2745503,1000,1,397,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(2745503,1100,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2745503,1400,43,0,0,0,190332,50,1,0,0,0,0,0,0,0,0,'reset object'),
(2745503,1500,42,0,0,0,0,0,0,36942,0,0,0,0,0,0,0,'equip change');

-- Muradin 27480
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 27480;
DELETE FROM creature_movement_template WHERE entry = 27480 AND pathID = 2;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27480,2,1,4817.494,-579.6047,163.0956,100,9000,0),
(27480,2,2,4818.622,-582.4843,163.5883,100,0,0),
(27480,2,3,4818.622,-582.4843,163.5883,5.305801,27000,2748001),
(27480,2,4,4817.42,-581.4944,163.2614,100,0,0),
(27480,2,5,4817.42,-581.4944,163.2614,100,70000,2748002),
(27480,2,6,4797.72,-576.591,160.16,100,0,0),
(27480,2,7,4769.97,-575.841,162.976,100,0,0),
(27480,2,8,4757.72,-575.341,164.561,100,0,0),
(27480,2,9,4753.72,-572.841,165.179,100,0,0),
(27480,2,10,4749.72,-569.591,165.796,100,0,0),
(27480,2,11,4748.02,-566.187,165.793,100,1000,1);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2748001 AND 2748002;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2748001,1000,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'kneel'),
(2748001,1500,0,0,0,0,0,0,0,2000020653,0,0,0,0,0,0,0,'Say'),
(2748001,19000,36,0,0,0,27455,30,1,0,0,0,0,0,0,0,0,'face buddy'),
(2748001,19100,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'stand'),
(2748001,20000,1,274,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(2748001,25000,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(2748002,1000,36,0,0,0,27455,30,1,0,0,0,0,0,0,0,0,'face buddy'),
(2748002,2000,0,0,0,0,27455,30,7,2000020654,0,0,0,0,0,0,0,'Buddy Say'),
(2748002,7000,0,0,0,0,0,0,0,2000020655,0,0,0,0,0,0,0,'Say'),
(2748002,11000,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(2748002,16000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,5.323254,'move');
DELETE FROM dbscripts_on_relay WHERE id = 20403;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20403,1,28,7,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Muradin EAI: DEAD'),
(20403,100,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Muradin EAI: equip 0'),
(20403,17000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Muradin EAI:stand'),
(20403,18000,1,93,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Muradin EAI:emote'),
(20403,19000,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Muradin EAI:RUN ON'),
(20403,22000,0,0,0,0,0,0,0,2000020658,0,0,0,0,0,0,0,'Part of Muradin EAI:Say'),
(20403,29000,15,49829,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Muradin EAI:q. credit');
-- target for 49825
DELETE FROM spell_script_target WHERE entry = 49825;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(49825, 1, 27480, 0);
-- GENERIC EMOTE added
DELETE FROM dbscripts_on_creature_movement WHERE id = 1015;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(1015,0,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC EMOTE - EMOTE_ONESHOT_ROAR');
