-- q.12473 'An End And A Beginning'

-- Duplicates
DELETE FROM creature_addon WHERE guid IN (519808,518087);
DELETE FROM creature_movement WHERE id IN (519808,518087);
DELETE FROM game_event_creature WHERE guid IN (519808,518087);
DELETE FROM game_event_creature_data WHERE guid IN (519808,518087);
DELETE FROM creature_battleground WHERE guid IN (519808,518087);
DELETE FROM creature_linking WHERE guid IN (519808,518087)
 OR master_guid IN (519808,518087);
DELETE FROM creature WHERE guid IN (519808,518087);
-- quest Script
DELETE FROM dbscripts_on_quest_start WHERE id = 12473;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12473,0,31,27383,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 27383 - terminate if alive'),
(12473,1,29,2,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'npcflag removed'),
(12473,2,0,0,0,0,0,0,0,2000020662,0,0,0,0,0,0,0,''),
(12473,4000,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12473,11000,3,0,0,0,0,0,0x04,0,0,0,0,3681.942,-912.0027,77.73386,100,''),
(12473,16000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'KNEEL'),
(12473,16500,10,27868,120000,0,0,0,0x08,0,0,0,0,3682.216,-910.0851,78.00749,5.742133,'summon: 27868'),
(12473,20000,0,0,0,0,0,0,0x04,2000020663,0,0,0,0,0,0,0,''),
(12473,23000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(12473,24000,15,39983,0,0,27851,519788,0x04 | 0x10,0,0,0,0,0,0,0,0,'buddy cast 39983'),
(12473,24001,20,2,0,0,27851,519794,7 | 0x10,0,0,0,0,0,0,0,0,'buddy wps'),
(12473,24002,20,2,0,0,27851,519792,7 | 0x10,0,0,0,0,0,0,0,0,'buddy wps'),
(12473,24003,20,2,0,0,27851,519787,7 | 0x10,0,0,0,0,0,0,0,0,'buddy wps'),
(12473,24004,20,2,0,0,27851,519791,7 | 0x10,0,0,0,0,0,0,0,0,'buddy wps'),
(12473,25000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STAND'),
(12473,26000,3,0,0,0,0,0,0x04,0,0,0,0,3680.843,-925.3386,76.81586,100,''),
(12473,27000,10,27384,2000,0,0,0,0x08,0,0,0,0,3682.858,-878.6009,75.00887,4.677186,'summon: 27384'),
(12473,27500,0,0,0,0,27384,50,0x04,2000020664,0,0,0,0,0,0,0,''),
(12473,28000,15,39983,0,0,27851,519788,0x04 | 0x10,0,0,0,0,0,0,0,0,'buddy cast 39983'),
(12473,29000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.553343,''),
(12473,30000,1,375,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12473,31000,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN OFF'),
(12473,33000,0,0,0,0,0,0,0x04,2000020665,0,0,0,0,0,0,0,''),
(12473,37000,10,27383,600000,1,0,0,0x08,0,0,0,0,3682.858,-878.6009,75.00887,4.677186,'summon: 27383'),
(12473,37100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'npcflag added');
UPDATE quest_template SET StartScript = 12473 WHERE entry = 12473;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020662 AND 2000020678;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020662,'Steel yourselves, soldiers. $N has provided us with the final piece of this puzzle. The dread lich, Thel\'zan, will soon come out of hiding, only to be rendered powerless against us!',0,0,0,5,NULL),
(2000020663,'It is this phylactery - Thel\'zan\'s phylactery - that is the key to victory!',0,0,0,397,NULL),
(2000020664,'I was... once like you. Mortal. Soft. Only flesh and bone. WEAK AND TIMID!',0,1,0,0,NULL),
(2000020665,'LEGION, STEADY YOURSELVES!',0,0,0,0,NULL),
(2000020666,'Our lord, Arthas, saw in me the frailty of man.',0,1,0,1,NULL),
(2000020667,'\"Serve me in life and I will promise to rend the weakness from your soul. To erase it from existence!\" To be chosen... blessed by the Lich King in such a way.',0,1,0,1,NULL),
(2000020668,'So serve him I did... Were it not for me the glorious dread citadel of Naxxramas may never have returned to Northrend.',0,1,0,1,NULL),
(2000020669,'But enough talk... You have fought hard and come from the distant reaches of this world to face the Duskbringer. I shall not disappoint...\n',0,1,0,1,NULL),
(2000020670,'Just as our lord saved me, so too shall I save you!\n',0,1,0,1,NULL),
(2000020671,'THIS WILL BE THE LAST TIME YOU UTTER THAT NAME, PALADIN! Breathe your dying breath!',0,1,0,1,NULL),
(2000020672,'Rise, my minions! Your master commands it!',0,1,0,1,NULL),
(2000020673,'Honor, courage, compassion and justice! These were once the virtues you fought for as a cleric of the Argent Dawn, Thel\'zan.',0,1,0,22,NULL),
(2000020674,'You dedicated your whole life to fighting the Scourge. You saw what they did to our beloved Lordaeron. The Lich King took everything from you!',0,1,0,5,NULL),
(2000020675,'So how, then, did Father Inigo Montoy, bastion of virtue for the Argent Dawn, become the embodiment of that which he hated most?',0,0,0,5,NULL),
(2000020676,'Now, be free and join the battle! Let us end this together!',0,0,0,0,NULL),
(2000020677,'You have saved Wintergarde! With Thel\'zan\'s filth washed away, the 7th Legion will easily clean up the remaining Scourge. When you are done here, report to Angrathar!',0,0,0,1,NULL),
(2000020678,'It\'s the Highlord!',0,0,0,0,NULL);
DELETE FROM creature_movement WHERE id IN (519787,519791,519792,519794);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(519787,1,3678.57,-875.432,78.9648,100,3000,2785101),
(519791,1,3678.75,-875.417,77.4239,100,3000,2785101),
(519792,1,3678.5,-875.451,80.6582,100,3000,2785101),
(519794,1,3678.5,-875.418,82.207,100,3000,2785101);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2785101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2785101,0,45,0,20200,0,0,0,0,0,0,0,0,0,0,0,0,'start random script');
DELETE FROM dbscript_random_templates WHERE id = 20200;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20200,1,20404,18,'27851 - Random Script 1'),
(20200,1,20405,18,'27851 - Random Script 2'),
(20200,1,20406,18,'27851 - Random Script 3'),
(20200,1,20407,18,'27851 - Random Script 4'),
(20200,1,20408,28,'27851 - Random Script 5');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20404 AND 20408;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20404,0,15,49734,15,0,27851,519795,1 | 0x10,0,0,0,0,0,0,0,0,'Cast 49734 on buddy'),
(20405,0,15,49734,15,0,27851,519789,1 | 0x10,0,0,0,0,0,0,0,0,'Cast 49734 on buddy'),
(20406,0,15,49734,1,0,27851,519796,1 | 0x10,0,0,0,0,0,0,0,0,'Cast 49734 on buddy'),
(20407,0,15,49734,1,0,27851,519793,1 | 0x10,0,0,0,0,0,0,0,0,'Cast 49734 on buddy'),
(20408,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'do nothing');

-- Thel'zan's Phylactery 27868
UPDATE creature_template SET UnitFlags = 33554432 WHERE entry = 27868;

-- Thel'zan the Duskbringer 27383
UPDATE creature_template SET MovementType = 2 WHERE entry = 27383;
DELETE FROM creature_movement_template WHERE entry = 27383;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27383,1,1,3681.604,-912.2283,77.64017,4.63583,0,0),
(27383,1,2,3681.604,-912.2283,77.64017,4.63583,600000,2738301);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2738301);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2738301,1000,15,49735,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2738301,3000,0,0,0,0,0,0,0x04,2000020666,0,0,0,0,0,0,0,''),
(2738301,7000,0,0,0,0,0,0,0x04,2000020667,0,0,0,0,0,0,0,''),
(2738301,8000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2738301,9000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2738301,11000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2738301,16000,0,0,0,0,0,0,0x04,2000020668,0,0,0,0,0,0,0,''),
(2738301,23000,0,0,0,0,0,0,0x04,2000020669,0,0,0,0,0,0,0,''),
(2738301,29000,0,0,0,0,0,0,0x04,2000020670,0,0,0,0,0,0,0,''),
(2738301,36000,10,27858,600000,1,0,0,0x08,1,0,0,0,3678.617,-955.0472,92.27969,1.453391,'summon: 27858'),
(2738301,69000,0,0,0,0,0,0,0x04,2000020671,0,0,0,0,0,0,0,''),
(2738301,74000,0,0,0,0,0,0,0x04,2000020672,0,0,0,0,0,0,0,''),
(2738301,75000,15,49808,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2738301,80000,2,59,32832,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Highlord Bolvar Fordragon 27858
UPDATE creature_template SET MovementType = 2 WHERE entry = 27858;
DELETE FROM creature_movement_template WHERE entry = 27858;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27858,1,1,3680.021,-934.0988,80.39574,1.453391,15000,2785801),
(27858,1,2,3680.703,-918.9989,76.61494,1.453391,0,0),
(27858,1,3,3680.703,-918.9989,76.61494,1.453391,22000,2785802),
(27858,2,1,3680.703,-918.9989,76.61494,1.453391,10000,2785803),
(27858,2,2,3677.767,-967.8073,99.34681,100,0,0),
(27858,2,3,3677.767,-967.8073,99.34681,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2785801,2785802,2785803);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2785801,0,0,0,0,0,27713,519608,7 | 0x10,2000020678,0,0,0,0,0,0,0,''),
(2785801,1000,0,0,0,0,0,0,0x04,2000020673,0,0,0,0,0,0,0,''),
(2785801,4000,1,397,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2785801,9000,0,0,0,0,0,0,0x04,2000020674,0,0,0,0,0,0,0,''),
(2785802,0,0,0,0,0,0,0,0x04,2000020675,0,0,0,0,0,0,0,''),
(2785802,5000,1,397,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2785802,11000,1,333,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2785802,19000,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2785802,20000,0,0,0,0,0,0,0x04,2000020676,0,0,0,0,0,0,0,''),
(2785802,20500,15,49765,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2785803,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2785803,1,2,59,33536,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2785803,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2785803,2000,0,0,0,0,0,0,0x04,2000020677,0,0,0,0,0,0,0,''),
(2785803,7000,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_spell WHERE id = 49765;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(49765,0,14,49735,0,0,0,0,6,0,0,0,0,0,0,0,0,'');

-- 7th Legion Elite 27713
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id IN (27713,27857,26780);
