-- q.12321 'A Righteous Sermon'
DELETE FROM dbscripts_on_quest_start WHERE id = 12321;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12321,0,31,27577,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27577'),
(12321,10,21,1,0,0,27577,30,7,0,0,0,0,0,0,0,0,'buddy active'),
(12321,11,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12321,15,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(12321,20,29,2,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPC_FLAGS removed'),
(12321,100,3,0,0,0,0,0,0,0,0,0,0,3800.852,-679.9519,213.7528,4.34,'move'),
(12321,1900,3,0,0,0,0,0,0,0,0,0,0,0,0,0,4.34,'move'),
(12321,2000,0,0,0,0,0,0,0,2000020573,0,0,0,0,0,0,0,''), -- 02:54:29.000
(12321,7000,0,0,0,0,0,0,0,2000020574,0,0,0,0,0,0,0,''), -- 02:54:34.000
(12321,11000,1,15,0,0,27577,20,7,0,0,0,0,0,0,0,0,''), -- 02:54:38.000
(12321,15000,0,0,0,0,27577,20,7,2000020575,0,0,0,0,0,0,0,''), -- 02:54:42.000
(12321,19000,0,0,0,0,0,0,0,2000020576,0,0,0,0,0,0,0,''), -- 02:54:46.000
(12321,22000,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 02:54:49.000
(12321,26000,0,0,0,0,0,0,0,2000020577,0,0,0,0,0,0,0,''), -- 02:54:53.000
(12321,30000,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 02:54:57.000
(12321,34000,1,397,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 02:55:01.000
(12321,39000,0,0,0,0,27577,20,7,2000020578,0,0,0,0,0,0,0,''), -- 02:55:05.000
(12321,43000,0,0,0,0,27577,20,7,2000020579,0,0,0,0,0,0,0,''), -- 02:55:09.000
(12321,47000,0,0,0,0,27577,20,7,2000020580,0,0,0,0,0,0,0,''), -- 02:55:13.000
(12321,51000,0,0,0,0,27577,20,7,2000020581,0,0,0,0,0,0,0,''), -- 02:55:19.000
(12321,58000,0,0,0,0,0,0,0,2000020582,0,0,0,0,0,0,0,''), -- 02:55:26.000
(12321,62500,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12321,62800,42,0,0,0,0,0,0,13220,0,0,0,0,0,0,0,'equip'),
(12321,63000,0,0,0,0,0,0,0,2000020583,0,0,0,0,0,0,0,''), --  02:55:31.000
(12321,67900,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(12321,68000,0,0,0,0,0,0,0,2000020584,0,0,0,0,0,0,0,''), --  02:55:36.000
(12321,73000,15,49061,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast Hallard\'s Sermon'), -- 02:55:41.000
(12321,76000,0,20193,0,0,0,0,0,0,0,0,0,0,0,0,0,'random say 1'),
(12321,80000,0,20193,0,0,0,0,0,0,0,0,0,0,0,0,0,'random say 2'),
(12321,84000,0,20193,0,0,0,0,0,0,0,0,0,0,0,0,0,'random say 3'),
(12321,88000,0,20193,0,0,0,0,0,0,0,0,0,0,0,0,0,'random say 4'),
(12321,92000,0,20193,0,0,0,0,0,0,0,0,0,0,0,0,0,'random say 5'),
(12321,96000,0,0,0,0,0,0,0,2000020597,0,0,0,0,0,0,0,''), --  02:56:03.000
(12321,100000,1,397,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 02:56:07.000
(12321,102000,0,0,0,0,27577,20,7,2000020598,0,0,0,0,0,0,0,''), -- 02:56:09.000
(12321,109000,0,0,0,0,0,0,0,2000020599,0,0,0,0,0,0,0,''), --  02:56:16.000
(12321,112000,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 02:56:19.000
(12321,116000,1,397,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 02:56:23.000
(12321,122000,0,0,0,0,27577,20,7,2000020600,0,0,0,0,0,0,0,''), -- 02:56:29.000
(12321,127000,0,0,0,0,27577,20,7,2000020601,0,0,0,0,0,0,0,''),-- 02:56:34.000
(12321,136000,1,1,0,0,27577,20,7,0,0,0,0,0,0,0,0,''), -- 02:56:43.000
(12321,140000,0,0,0,0,0,0,0,2000020602,0,0,0,0,0,0,0,''), -- 02:56:47.000
(12321,143000,1,396,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 02:56:50.000
(12321,147000,0,0,0,0,27577,20,7,2000020603,0,0,0,0,0,0,0,''), -- 02:56:54.000
(12321,154000,0,0,0,0,27577,20,7,2000020604,0,0,0,0,0,0,0,''), -- 02:57:03.000
(12321,159000,0,0,0,0,0,0,0,2000020605,0,0,0,0,0,0,0,''), -- 02:57:08.000
(12321,164000,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face player'),-- 02:57:14.000
(12321,165000,0,0,0,0,0,0,0,2000020606,0,0,0,0,0,0,0,''), -- 02:57:15.000
(12321,169000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 02:57:19.000
(12321,173000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''), -- 02:57:23.000
(12321,175000,7,12321,0,0,0,0,0,0,0,0,0,0,0,0,0,'q. CREDIT'),
(12321,177000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,4.34,'move'), -- 02:57:27.000
(12321,179000,0,0,0,0,0,0,0,2000020607,0,0,0,0,0,0,0,''), -- 02:57:29.000
(12321,180000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPC_FLAGS add'),
(12321,181000,21,0,0,0,27577,30,7,0,0,0,0,0,0,0,0,'buddy unactive'),
(12321,181100,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'back to waypoints'),
(12321,181200,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET StartScript = 12321 WHERE entry = 12321;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020573 AND 2000020607;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020573,'Stand back, $N, the beast might lash out and harm you.',0,0,7,396,NULL),
(2000020574,'GODFREY! Hear me, fiend! Hear me, for I am the Light, here to deliver you from evil!',0,0,7,5,NULL),
(2000020575,'%s growls.',409,2,0,0,NULL),
(2000020576,'Good. I have your attention, then, Godfrey?',0,0,7,396,NULL),
(2000020577,'We can do this in one of two ways, Godfrey. First, I will simply ask you to tell me what the unholy markings etched upon the pages of this tome mean. What say you?',0,0,7,1,NULL),
(2000020578,'%s hisses!',410,2,0,0,NULL),
(2000020579,'Tell you nothing, preacher.',0,0,0,1,NULL),
(2000020580,'What can you do to me that Kel\'Thuzad has not? That the Lich King will not?',0,0,0,1,NULL),
(2000020581,'The book is your salvation, yes... but nothing will you know! NOTHING I SAY! NOTHING!',0,0,0,1,NULL),
(2000020582,'Then it is option two.',0,0,7,1,NULL),
(2000020583,'I say a prayer for you now, lost soul. May the Light take you gracefully.',0,0,7,0,NULL),
(2000020584,'Let the sermon begin.',0,0,7,1,NULL),
-- Inquisitor Hallard - random
(2000020585,'LIGHT TAKE YOU, BEAST!',0,0,7,0,NULL),
(2000020586,'May the power of Light compel you!',0,0,7,0,NULL),
(2000020587,'LET THE LIGHT IN, GODFREY GOODARD!',0,0,7,0,NULL),
(2000020588,'Do not fight me, fiend! The time of your atonement is now!',0,0,7,0,NULL),
(2000020589,'BURN IN HOLY FIRE!',0,0,7,0,NULL),
(2000020590,'The power of the Lich King pales in comparison to the glory of the Light!',0,0,7,0,NULL),
-- Mayor Godfrey - ranom
(2000020591,'IT BURNSSSSS!',0,0,0,0,NULL),
(2000020592,'The pain is unbearable!',0,0,0,0,NULL),
(2000020593,'Make it stop! MAKE IT STOP!',0,0,0,0,NULL),
(2000020594,'I tell you anything you want!',0,0,0,0,NULL),
(2000020595,'No more LIGHT! NO MORE! I BEG YOU!',0,0,0,0,NULL),
(2000020596,'Never felt hurt like this!',0,0,0,0,NULL),
(2000020597,'I thought you would see the Light, Godfrey... Now speak quickly, fiend. What does it say?',0,0,7,396,NULL),
(2000020598,'It tells of the coming apocalypse. How this world will burn and be reborn from death.',0,0,0,1,NULL),
(2000020599,'RUBBISH! Godfrey do you take me for a fool? Do not spew your Scourge propoganda at a man of the Light, heathen! Speak now or I will have the peasants craft a holy water bath and dip you into it like a dog with fleas!',0,0,7,5,NULL),
(2000020600,'NOOOO!!! I tell you! I tell you everything!',0,0,0,39,NULL),
(2000020601,'Humans... Beneath the earth of Wintergarde Village you built a mausoleum! Why do you think Naxxramas attacked that spot? Thel\'zan hides deep in your own crypt and sends a thousand-thousand corpses at you! Perish you will...',0,0,0,1,NULL),
(2000020602,'What? There is a mausoleum beneath the old village? What fools we are to not have noticed! We will find and strike down your master now, Godfrey. We will end this nightmare.',0,0,7,6,NULL),
(2000020603,'How? Humans truly are stupid, yes? Thel\'zan the Duskbringer! Thel\'zan the Lich! He who is born of human flesh and bone, sacrificed all for power, protected by the Lich King!',0,0,0,1,NULL),
(2000020604,'You cannot stop Thel\'zan! He bears the dark gift, bestowed upon him by the Lich King himself!',0,0,0,1,NULL),
(2000020605,'You let us worry about how we kill the monster, Godfrey.',0,0,7,396,NULL),
(2000020606,'Return to Halford with the information that the good mayor was kind enough to submit, $N. I will finish here and squeeze whatever else this wretch might know about Thel\'zan. Now, I will show Godfrey the rarely seen "option three."',0,0,7,1,NULL),
(2000020607,'Let\'s you and I have a chat about some things, Godfrey.',0,0,7,1,NULL);
DELETE FROM dbscript_random_templates WHERE id IN (20193,20194);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20193,0,2000020585,0,'27316 - Random Text 1'),
(20193,0,2000020586,0,'27316 - Random Text 2'),
(20193,0,2000020587,0,'27316 - Random Text 3'),
(20193,0,2000020588,0,'27316 - Random Text 4'),
(20193,0,2000020589,0,'27316 - Random Text 5'),
(20193,0,2000020590,0,'27316 - Random Text 6'),
(20194,0,2000020591,0,'27577 - Random Text 1'),
(20194,0,2000020592,0,'27577 - Random Text 2'),
(20194,0,2000020593,0,'27577 - Random Text 3'),
(20194,0,2000020594,0,'27577 - Random Text 4'),
(20194,0,2000020595,0,'27577 - Random Text 5'),
(20194,0,2000020596,0,'27577 - Random Text 6');

-- Inquisitor Hallard 27316
UPDATE creature_template SET MovementType = 2 WHERE entry = 27316;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 27316;
DELETE FROM creature_movement_template WHERE entry = 27316;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27316,1,3797.918,-677.4138,213.7526,100,0,0),
(27316,2,3804.538,-679.7092,213.7526,100,0,0);

-- Part of Mayor Godfrey EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20392);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20392,0,0,20194,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Mayor Godfrey EAI: random say');
