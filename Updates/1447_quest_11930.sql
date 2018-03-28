-- q.11930 'Across Transborea'
-- Quest Scripts
DELETE FROM dbscripts_on_quest_start WHERE id = 11930;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11930,0,14,46657,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove if exist'),
(11930,1,15,46667,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_quest_end WHERE id = 11930;
INSERT INTO dbscripts_on_quest_end VALUES 
(11930,0,14,46657,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove if exist');
UPDATE quest_template SET StartScript = 11930, CompleteScript = 11930 WHERE entry = 11930;

-- Taunka'le Evacuee - Stats
UPDATE creature_template SET MinLevel = 75, MaxLevel = 75, UnitFlags = 32768, UnitClass = 2, Expansion = 2, MinLevelHealth = 10635, MaxLevelHealth = 10635, MinLevelMana = 3561, MaxLevelMana = 3561, Armor = 8204, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 370, MinMeleeDmg = 339, MaxMeleeDmg = 482 WHERE entry = 26167;
-- Random Actions
DELETE FROM dbscripts_on_spell WHERE id = 46663;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(46663,0,45,0,20027,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_random_templates WHERE id = 20027;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20027,1,20029,0,'26167 - Random Scripts'),
(20027,1,20030,0,'26167 - Random Scripts'),
(20027,1,20031,0,'26167 - Random Scripts'),
(20027,1,20032,0,'26167 - Random Scripts'),
(20027,1,20033,0,'26167 - Random Scripts');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20029 AND 20034;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20029
(20029,1,0,0,0,0,0,0,0,2000001591,0,0,0,0,0,0,0,''),
-- 20030
(20030,1,15,46670,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20030,2,0,0,0,0,0,0,0,2000001592,0,0,0,0,0,0,0,''),
-- 20031
(20031,1,0,0,0,0,0,0,0,2000001593,0,0,0,0,0,0,0,''),
-- 20032
(20032,0,15,42716,0,0,0,0,0,0,0,0,0,0,0,0,0,'root'),
(20032,1,0,0,0,0,0,0,0,2000001594,0,0,0,0,0,0,0,''),
(20032,4,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(20032,7,0,0,0,0,0,0,0,2000001595,0,0,0,0,0,0,0,''),
(20032,10,0,0,0,0,0,0,0,2000001596,0,0,0,0,0,0,0,''),
(20032,13,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(20032,14,14,42716,0,0,0,0,0,0,0,0,0,0,0,0,0,'unroot'),
-- 20033
(20033,0,15,42716,0,0,0,0,0,0,0,0,0,0,0,0,0,'root'),
(20033,1,0,0,0,0,0,0,0,2000001597,0,0,0,0,0,0,0,''),
(20033,4,0,0,0,0,0,0,0,2000001598,0,0,0,0,0,0,0,''),
(20033,6,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(20033,12,0,0,0,0,0,0,0,2000001599,0,0,0,0,0,0,0,''),
(20033,14,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(20033,14,14,42716,0,0,0,0,0,0,0,0,0,0,0,0,0,'unroot'),
-- final part of Escort
(20034,0,31,26162,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26162'),
(20034,1,15,46677,0,0,0,0,0,0,0,0,0,0,0,0,0,'Final event started');
DELETE FROM dbscripts_on_spell WHERE id = 46677;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(46677,0,18,0,0,0,26162,50,7,0,0,0,0,0,0,0,0,'despawn source of event'),
(46677,0,15,42716,0,0,0,0,0,0,0,0,0,0,0,0,0,'root'),
(46677,0,14,46669,0,0,0,0,0,0,0,0,0,0,0,0,0,'Remove - Evacuee Random Action'),
(46677,1,0,0,0,0,0,0,0,2000001600,0,0,0,0,0,0,0,''),
(46677,6,0,0,0,0,0,0,0,2000001601,0,0,0,0,0,0,0,''),
(46677,9,0,0,0,0,0,0,0,2000001602,0,0,0,0,0,0,0,''),
(46677,13,0,0,0,0,0,0,0,2000001603,0,0,0,0,0,0,0,''),
(46677,19,0,0,0,0,0,0,0,2000001604,0,0,0,0,0,0,0,''),
(46677,22,1,15,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(46677,22,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
-- final part - waypoints
(46677,23,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(46677,23,14,42716,0,0,0,0,0,0,0,0,0,0,0,0,0,'unroot'),
(46677,24,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoints'),
(46677,25,15,46676,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'credit');

-- Transborea Generator 001
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 26162;

-- Taunka'le Evacuee
-- Waypoints
DELETE FROM creature_movement_template WHERE entry = 26167;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(26167,1,3564.893,3033.882,25.18993,0,0,100),
(26167,2,3560.393,3018.882,26.18993,0,0,100),
(26167,3,3552.393,3006.632,23.18993,0,0,100),
(26167,4,3535.893,2982.382,21.18993,0,0,100),
(26167,5,3513.143,2951.132,26.18993,0,0,100),
(26167,6,3515.143,2926.382,26.68993,0,0,100),
(26167,7,3525.893,2916.132,30.18993,0,0,100),
(26167,8,3542.643,2904.882,32.93993,0,0,100),
(26167,9,3565.143,2896.132,37.68993,0,0,100),
(26167,10,3580.143,2900.632,40.43993,0,0,100),
(26167,11,3592.393,2899.632,44.18993,0,0,100),
(26167,12,3602.643,2894.632,49.43993,0,0,100),
(26167,13,3610.893,2883.882,56.68993,0,0,100),
(26167,14,3619.643,2877.132,61.43993,0,0,100),
(26167,15,3622.143,2870.882,65.43993,0,0,100),
(26167,16,3607.393,2862.382,70.43993,0,0,100),
(26167,17,3613.893,2842.382,71.93993,0,0,100),
(26167,18,3628.893,2831.132,73.93993,0,0,100),
(26167,19,3650.143,2832.882,81.43993,0,0,100),
(26167,20,3664.893,2835.632,84.68993,0,0,100),
(26167,21,3679.393,2856.882,89.43993,0,0,100),
(26167,22,3669.143,2875.132,91.18993,0,0,100),
(26167,23,3654.893,2891.632,90.43993,0,10,100),
(26167,24,3646.046,2905.723,89.49781,1000,1,100);
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001591 AND 2000001604;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001591,'I was raised on this land... taught to hunt on this very tundra.',0,0,0,1,NULL),
(2000001592,'Look out!',0,0,0,0,NULL),
(2000001593,'%s cries.',0,2,0,18,NULL),
(2000001594,'Stop!',0,0,0,5,NULL),
(2000001595,'%s places a hand on the ground.',0,2,0,0,NULL),
(2000001596,'What will become of us?',0,0,0,6,NULL),
(2000001597,'I... I don\'t think I can make it...',0,0,0,1,NULL),
(2000001598,'Give me a moment to catch my breath.',0,0,0,1,NULL),
(2000001599,'I am ready. Let us continue.',0,0,0,1,NULL),
(2000001600,'%s points northeast.',0,2,0,25,NULL),
(2000001601,'The smoke in the distance... It is Wartook. He is trying to tell us something...',0,0,0,1,NULL),
(2000001602,'%s expertly identifies the messages hidden within the smoke signals.',0,2,0,0,NULL),
(2000001603,'No... It cannot be true...',0,0,0,20,NULL),
(2000001604,'Icemist... Not Icemist... NO!!! Come quickly, hero! Follow me!',0,0,0,274,NULL);
