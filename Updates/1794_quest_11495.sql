-- q.11495 'The Delicate Sound of Thunder'

-- Static spawns removed - all summoned for this quest
DELETE FROM creature WHERE guid=97731;
DELETE FROM creature_addon WHERE guid=97731;
DELETE FROM creature_movement WHERE id=97731;
DELETE FROM game_event_creature WHERE guid=97731;
DELETE FROM game_event_creature_data WHERE guid=97731;
DELETE FROM creature_battleground WHERE guid=97731;
DELETE FROM creature_linking WHERE guid=97731
 OR master_guid=97731;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24846);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 24846);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 24846);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 24846);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 24846);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 24846)
 OR master_guid IN (SELECT guid FROM creature WHERE id = 24846);
DELETE FROM creature WHERE id = 24846;

-- Baelgun's Event Generator (Cave) 24845
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 24845;

-- Part of Baelgun's Event Generator (Cave) EAI
DELETE FROM dbscripts_on_relay WHERE id = 20102;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(20102,0,31,24847,20,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 24847 - only one allowed'),
(20102,1,16,8434,2,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Baelgun\'s Event Generator'),
(20102,1,0,0,0,0,0,0,0x04,2000001771,0,0,0,0,0,0,0,'Part of Baelgun\'s Event Generator'),
(20102,2,10,24847,52000,0,0,0,0x08,0,0,0,0,315.1012,-5723.063,96.25406,3.054326,'Part of Baelgun\'s Event Generator - Summon Loken'),
(20102,2,10,24846,52000,0,0,0,0x08,1,0,0,0,286.5581,-5741.411,94.88069,1.009217,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#0'),
(20102,2,10,24846,52000,1,0,0,0x08,1,0,0,0,288.9459,-5739.03,95.11024,1.677885,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#1'),
(20102,2,10,24846,52000,2,0,0,0x08,1,0,0,0,289.0926,-5750.78,91.239,1.663169,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#2'),
(20102,2,10,24846,52000,3,0,0,0x08,1,0,0,0,284.2516,-5737.454,95.83183,0.9654318,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#3'),
(20102,2,10,24846,52000,4,0,0,0x08,1,0,0,0,288.0269,-5736.986,95.60029,1.690353,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#4'),
(20102,2,10,24846,52000,5,0,0,0x08,1,0,0,0,280.3549,-5743.331,94.52777,0.7014884,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#5'),
(20102,2,10,24846,52000,6,0,0,0x08,1,0,0,0,285.9039,-5740.121,95.09356,0.6028798,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#6'),
(20102,2,10,24846,52000,7,0,0,0x08,1,0,0,0,285.8278,-5734.922,96.25557,5.89264,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#7'),
(20102,3,10,24846,52000,8,0,0,0x08,1,0,0,0,283.0741,-5749.82,92.13461,0.8692511,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#8'),
(20102,3,10,24846,52000,9,0,0,0x08,1,0,0,0,288.0604,-5742.469,95.03925,0.69898,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#9'),
(20102,3,10,24846,52000,10,0,0,0x08,1,0,0,0,294.1016,-5707.89,106.1421,6.228858,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#10'),
(20102,3,10,24846,52000,11,0,0,0x08,1,0,0,0,295.9236,-5708.634,105.548,0.4682942,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#11'),
(20102,3,10,24846,52000,12,0,0,0x08,1,0,0,0,296.2765,-5704.421,105.5178,0.1108057,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#12'),
(20102,3,10,24846,52000,13,0,0,0x08,1,0,0,0,295.2817,-5706.174,105.9366,0.3081222,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#13'),
(20102,3,10,24846,52000,14,0,0,0x08,1,0,0,0,300.2338,-5707.654,104.1357,1.409563,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#14'),
(20102,3,10,24846,52000,15,0,0,0x08,1,0,0,0,292.6366,-5703.412,106.9681,5.884874,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#15'),
(20102,3,10,24846,52000,16,0,0,0x08,1,0,0,0,292.0046,-5710.407,106.971,0.3213845,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#16'),
(20102,3,10,24846,52000,17,0,0,0x08,1,0,0,0,304.2786,-5705.298,102.8277,3.869161,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#17'),
(20102,3,10,24846,52000,18,0,0,0x08,1,0,0,0,288.7074,-5706.38,108.0336,6.141881,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#18'),
(20102,3,10,24846,52000,19,0,0,0x08,1,0,0,0,293.5613,-5708.807,106.3662,0.02275273,'Part of Baelgun\'s Event Generator - Summon Iron Dwarf#19');

-- Iron Dwarf 24846
UPDATE creature_template SET MovementType = 2 WHERE entry = 24846;
DELETE FROM creature_movement_template WHERE entry = 24846;
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
-- #0
(24846,0,1,307.4999,-5724.346,96.03246,600000,2484601,0.1672996),
-- #1
(24846,1,1,306.9781,-5719.374,97.16069,600000,2484601,6.052401),
-- #2
(24846,2,1,305.3088,-5719.852,96.83141,600000,2484601,6.19436),
-- #3
(24846,3,1,303.9038,-5720.872,96.45906,600000,2484601,6.197802),
-- #4
(24846,4,1,302.9325,-5722.312,96.32772,600000,2484601,0.01697693),
-- #5
(24846,5,1,302.5121,-5723.997,96.16035,600000,2484601,0.1384269),
-- #6
(24846,6,1,302.6934,-5725.724,95.97733,600000,2484601,0.243677),
-- #7
(24846,7,1,303.4543,-5727.284,95.83881,600000,2484601,0.348315),
-- #8
(24846,8,1,304.7032,-5728.491,95.75552,600000,2484601,0.4738897),
-- #9
(24846,9,1,306.2894,-5729.197,95.72097,600000,2484601,0.5683158),
-- #10
(24846,10,1,309.0311,-5716.925,98.13021,600000,2484601,5.49229),
-- #11
(24846,11,1,313.8664,-5715.652,98.66291,600000,2484601,5.27292),
-- #12
(24846,12,1,313.1394,-5714.076,99.16924,600000,2484601,5.279944),
-- #13
(24846,13,1,311.8523,-5712.798,99.56335,600000,2484601,5.349905),
-- #14
(24846,14,1,310.3464,-5712.102,100.0772,600000,2484601,5.384772),
-- #15
(24846,15,1,308.6172,-5711.942,100.2369,600000,2484601,5.428531),
-- #16
(24846,16,1,306.938,-5712.384,99.99221,600000,2484601,5.512942),
-- #17
(24846,17,1,305.5111,-5713.374,99.30238,600000,2484601,5.431513),
-- #18
(24846,18,1,304.5089,-5714.792,98.58613,600000,2484601,5.487295),
-- #19
(24846,19,1,304.0521,-5716.468,97.93758,600000,2484601,5.508807);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2484601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2484601,1,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2484601,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'idle');

-- Loken 24847
UPDATE creature_template SET MovementType = 2 WHERE entry = 24847;
DELETE FROM creature_movement_template WHERE entry = 24847;
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(24847,0,1,315.1012,-5723.063,96.25406,120000,2484701,3.054326);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2484701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2484701,0,15,44681,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,1,0,0,0,0,0,0,0,2000001772,0,0,0,0,0,0,0,''),
(2484701,6,16,1969,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,7,15,44681,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,8,0,0,0,0,0,0,0,2000001773,0,0,0,0,0,0,0,''),
(2484701,17,16,8434,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,17,15,44681,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,18,0,0,0,0,0,0,0,2000001774,0,0,0,0,0,0,0,''),
(2484701,23,16,8434,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,23,15,44681,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,28,16,8433,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,28,15,44681,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,29,0,0,0,0,0,0,0,2000001775,0,0,0,0,0,0,0,''),
(2484701,33,16,8433,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,33,15,44681,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,39,16,8436,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,39,15,44681,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,40,0,0,0,0,0,0,0,2000001776,0,0,0,0,0,0,0,''),
(2484701,46,15,44682,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2484701,47,0,0,0,0,0,0,0,2000001777,0,0,0,0,0,0,0,''),
(2484701,48,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'idle');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001771 AND 2000001777;
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001771,'The sound of thunder roars throughout the cavern.',0,3,0,0,NULL),
(2000001772,'Come, minions! Your master calls!',0,1,9,0,NULL),
(2000001773,'The work of your brothers in the Storm Peaks has reached a frenzied pace. Soon, Father will be freed.',0,1,9,0,NULL),
(2000001774,'Your brothers to the north have subjugated the stone behemoths and set them on the path to Ulduar. Soon, the remaining defenses of the Pantheon will be neutralized.',0,1,9,0,NULL),
(2000001775,'The three fissures opened by the mortals of this region must be silenced. The earth hears and sees what we do and will continue to interfere with our efforts if the way is not closed.',0,1,9,0,NULL),
(2000001776,'Bury this place! Your master demands it!',0,1,9,0,NULL),
(2000001777,'The sound of thunder dissipates.',0,3,0,0,NULL);
