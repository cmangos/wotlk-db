-- All Is Well That Ends Well (q.13631) 
-- Heroic: All Is Well That Ends Well (q.13819) 

-- UPDATE
-- Generic Trigger movement scripts
DELETE FROM creature_movement WHERE id IN (88673,88680,88679,88682,88681,88675,88676,88672,88677,88678);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(88673,1,5713.23,646.632,653.144,8867301,1000,0),
(88680,1,5711.03,645.710,653.777,8867301,1000,0),
(88679,1,5709.35,644.943,655.873,8867301,1000,0),
(88682,1,5712.54,644.603,656.470,8867301,1000,0),
(88681,1,5710.70,648.617,656.536,8867301,1000,0),
(88675,1,5713.02,648.027,657.159,8867301,1000,0),
(88676,1,5711.06,645.764,672.082,8867601,1000,0),
(88672,1,5711.69,645.936,737.186,8867601,1000,0),
(88677,1,5711.45,646.144,761.046,8867601,1000,0),
(88678,1,5711.72,645.971,796.194,8867601,1000,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (8867301,8867601);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,comments) VALUES
(8867301,0,32,1,0,0,0,0,'Generic Trigger LAB (Large AOI) - pause wp'),
(8867301,0,15,64367,0,28332,88676,25,'Generic Trigger LAB (Large AOI) - Cast Algalon Event Beam'),
(8867601,0,32,1,0,0,0,0,'Generic Trigger LAB (Large AOI) - pause wp'),
(8867601,0,15,64367,0,28332,88674,25,'Generic Trigger LAB (Large AOI) - Cast Algalon Event Beam'),
(8867601,0,15,64510,0,28332,88674,16,'Generic Trigger LAB (Large AOI) - Cast Reply-Code Alpha'),
(8867601,49,15,64581,0,28332,88674,16,'Generic Trigger LAB (Large AOI) - Cast Reply-Code Alpha'),
(8867601,49,15,64580,0,28332,88674,25,'Generic Trigger LAB (Large AOI) - Cast Algalon Event Beam Climax');

-- Rhonin updates
UPDATE creature_movement_template SET script_id = 1612801 WHERE entry = 16128 AND point = 23;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1612823; -- old script not needed (lets use correct id)
DELETE FROM dbscripts_on_creature_movement WHERE id = 1612801;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,comments) VALUES 
(1612801,0,32,1,0,0,0,0,0,'Rhonin - pause wp'),
(1612801,1,21,1,0,0,0,0,0,'Rhonin - active'),
(1612801,1,1,22,0,0,0,0,0,'Rhonin - emote shout'),
(1612801,1,35,5,200,0,0,0,0,'Rhonin - send custom AI event A for the spell event'),
(1612801,0,0,0,0,0,0,0,2000000335,'Rhonin - say_event_1'),
(1612801,6,0,0,0,0,0,0,2000000336,'Rhonin - say_event_2'),
(1612801,12,0,0,0,0,0,0,2000000337,'Rhonin - say_event_3'),
(1612801,21,0,0,0,0,0,0,2000000338,'Rhonin - say_event_4'),
(1612801,25,0,0,0,0,0,0,2000000339,'Rhonin - say_event_5'),
(1612801,34,0,0,0,0,0,0,2000000340,'Rhonin - say_event_6'),
(1612801,49,0,0,0,0,0,0,2000000341,'Rhonin - say_event_complete'),
-- ToDo: trigger the universe animation globe
(1612801,63,15,51347,0,0,0,0,0,'Rhonin - Cast Simple Teleport'),
(1612801,63,35,6,220,0,0,0,0,'Rhonin - send custom AI event B'),
(1612801,64,29,3,1,0,0,0,0,'Rhonin - add npc_flag questgiver'),
(1612801,64,21,0,0,0,0,0,0,'Rhonin - unactive'),
(1612801,64,18,0,0,0,0,0,0,'Rhonin - despawn'),
(1612801,65,41,0,0,0,0,0,0,'Rhonin - respawn');
