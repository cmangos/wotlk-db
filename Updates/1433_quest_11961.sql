-- q.11961 'Spirits Watch Over Us'
DELETE FROM dbscripts_on_quest_end WHERE id = 11961;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11961,1,10,24765,20000,0,0,0,8,1,0,0,0,2857.636,4706.332,28.84858,3.16056,'summon Spirit of Issliruk'),
(11961,1,0,0,0,0,0,0,0,2000001573,0,0,0,0,0,0,0,''),
(11961,9,31,26403,100,0,0,0,0,0,0,0,0,0,0,0,0,'terminate if not found'),
(11961,10,0,0,0,0,26403,100,3,2000001574,0,0,0,0,0,0,0,'');
/*
-- option to control weather missing
ServerToClient: SMSG_WEATHER (0x073E)
State: HeavySnow (8)
Intensity: 1
Abrupt: False
*/
UPDATE quest_template SET CompleteScript = 11961 WHERE entry = 11961;
-- texts
DELETE FROM dbscript_string WHERE entry IN (2000001573,2000001574);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001573,'The spirits have listened!  Can you feel it, $n?',0,0,0,1,NULL),
(2000001574,'Thank the spirits!  The blizzard will slow down the kvadir ships!',0,1,0,0,NULL);

-- Spirit of Issliruk
UPDATE creature_template SET InhabitType = 4, MovementType = 2 WHERE entry = 24765;
DELETE FROM creature_movement_template WHERE entry = 24765;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(24765,1,2857.636,4706.332,28.84858,0,0,100),
(24765,2,2856.636,4706.332,28.84858,0,0,100),
(24765,3,2850.285,4705.993,31.33304,0,0,100),
(24765,4,2832.069,4703.936,31.33304,0,0,100),
(24765,5,2820.908,4701.95,31.33304,0,0,100),
(24765,6,2794.278,4696.408,31.33304,0,0,100),
(24765,7,2781.724,4681.326,31.33304,0,0,100),
(24765,8,2768.185,4672.826,23.86082,0,0,100),
(24765,9,2748.8,4679.434,22.63859,0,0,100),
(24765,10,2743.755,4692.08,25.41637,0,0,100),
(24765,11,2751.966,4712.076,27.11082,0,0,100),
(24765,12,2767.62,4718.722,29.69414,0,0,100),
(24765,13,2782.661,4711.344,22.44414,0,0,100),
(24765,14,2788.14,4702.299,22.2497,0,0,100),
(24765,15,2789.829,4692.481,28.47192,0,0,100),
(24765,16,2755.486,4654.688,31.33304,0,0,100),
(24765,17,2734.498,4636.334,31.33304,0,0,100),
(24765,18,2734.498,4636.334,31.33304,1000,1,100);
