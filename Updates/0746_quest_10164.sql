-- q.10164 'Everything Will Be Alright'
DELETE FROM dbscripts_on_quest_end WHERE id = 10164;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10164,0,31,19878,100,0,0,0x08,0,0,0,0,0,0,0,0,'search for 19878'), -- prevent double spawn
(10164,1,10,19878,40000,0,0,0x08,0,0,0,0,-3361.65,5227.96,-101.047,4.81645,'summon - Spirit of Exarch Maladaar'),
(10164,1,21,1,0,19698,77859,7 | 0x10,0,0,0,0,0,0,0,0,'Aldrimus - active'),
(10164,1,21,1,0,19697,70257,7 | 0x10,0,0,0,0,0,0,0,0,'Ha\'lei - active'),
(10164,1,21,1,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0,'Clarissa - active');
UPDATE quest_template SET  CompleteScript = 10164 WHERE entry = 10164;

-- Spirit of Exarch Maladaar
UPDATE creature_template SET SpeedWalk = 1, MovementType = 2 WHERE entry = 19878;
DELETE FROM creature_template_addon WHERE entry = 19878;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(19878,0,0,1,0,0,0,32648);
DELETE FROM creature_movement_template WHERE entry = 19878;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(19878,1,-3346.01,5192.16,-101.051,40000,1987801,5.00181);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1987801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1987801,0,20,0,0,19698,77859,7 | 0x10,0,0,0,0,0,0,0,0,'Aldrimus - movement chenged to 0:idle'),
(1987801,0,20,0,0,19697,70257,7 | 0x10,0,0,0,0,0,0,0,0,'Ha\'lei - movement chenged to 0:idle'),
(1987801,1,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1987801,2,3,0,0,19698,77859,7 | 0x10,0,0,0,0,0,0,0,1.71733,'Aldrimus - change orientation'),
(1987801,3,0,0,0,0,0,0,2000001100,0,0,0,0,0,0,0,''),
(1987801,12,0,0,0,19698,77859,7 | 0x10,2000001101,0,0,0,0,0,0,0,''),
(1987801,17,0,0,0,0,0,0,2000001081,0,0,0,0,0,0,0,''),
(1987801,18,28,0,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0,'Clarissa - STATE_STAND'),
(1987801,20,3,0,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,3.23001,'Clarissa - change orientation'),
(1987801,21,0,0,0,19693,70255,7 | 0x10,2000001102,0,0,0,0,0,0,0,''),
(1987801,22,3,0,0,19698,77859,7 | 0x10,0,0,0,0,0,0,0,5.77704,'Aldrimus - change orientation'),
(1987801,26,0,0,0,19698,77859,7 | 0x10,2000001103,0,0,0,0,0,0,0,''),
(1987801,29,3,0,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0.05236,'Clarissa - change orientation'),
(1987801,30,28,8,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0,'Clarissa - STATE_KNEEL'),
(1987801,35,20,2,0,19698,77859,7 | 0x10,0,0,0,0,0,0,0,0,'Aldrimus - movement chenged to 2:wps'),
(1987801,35,20,2,0,19697,70257,7 | 0x10,0,0,0,0,0,0,0,0,'Ha\'lei - movement chenged to 2:wps'),
(1987801,36,21,0,0,19698,77859,7 | 0x10,0,0,0,0,0,0,0,0,'Aldrimus - unactive'),
(1987801,36,21,0,0,19697,70257,7 | 0x10,0,0,0,0,0,0,0,0,'Ha\'lei - unactive'),
(1987801,36,21,0,0,19693,70255,7 | 0x10,0,0,0,0,0,0,0,0,'Clarissa - unactive');
-- text
DELETE FROM db_script_string WHERE entry BETWEEN 2000001100 AND 2000001103;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001100,'The dark ones had taken a hold of me, master. You were merciful in seeking my death. Forgive me...',0,0,0,0,NULL),
(2000001101,'In death, all is forgiven...',0,0,0,0,NULL),
(2000001102,'Father? Father is that you?',0,0,0,6,NULL),
(2000001103,'It will be alright, darling. Grieve no more...',0,0,0,1,NULL);
