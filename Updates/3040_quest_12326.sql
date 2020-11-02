-- q.12326 'Steamtank Surprise'

-- Wintergarde Mausoleum 189331
-- missing added
DELETE FROM game_event_gameobject WHERE guid IN (520432);
DELETE FROM gameobject_battleground WHERE guid IN (520432);
DELETE FROM gameobject WHERE guid IN (520432);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(520432,189331,571,1,1,3708.33,-1180.57,120.667,1.06855,0,0,0,1,300,300,255,1);

-- duplicates
-- remove all static vehicle passengers
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (27163,27588));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (27163,27588));
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id IN (27163,27588));
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id IN (27163,27588));
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id IN (27163,27588));
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id IN (27163,27588))
OR master_guid IN (SELECT guid FROM creature WHERE id IN (27163,27588));
DELETE FROM creature WHERE id IN (27163,27588);

-- 7th Legion Elite 27588
DELETE FROM creature_template_addon WHERE entry = 27588;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27588,0,0,2,1,0,0,NULL);
DELETE FROM dbscripts_on_relay WHERE id IN (20394);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20394,0,0,20195,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of 7th Legion Elite EAI: random say'),
(20394,10,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 7th Legion Elite EAI: Remove aura'),
(20394,100,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 7th Legion Elite EAI: RUN ON'),
(20394,200,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 7th Legion Elite EAI: waypoints');
DELETE FROM creature_movement_template WHERE entry = 27588;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27588,1,3703.88,-1189.49,121.052,100,0,0),
(27588,2,3697.81,-1201.39,111.681,100,0,0),
(27588,3,3694.05,-1202.67,111.681,100,0,0),
(27588,4,3688.48,-1200.24,107.892,100,0,0),
(27588,5,3681.27,-1196.9,102.433,100,0,0),
(27588,6,3676.08,-1194.45,102.338,100,5000,2758801);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2758801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2758801,1000,0,0,0,0,0,0,0,2000020616,0,0,0,0,0,0,0,''),
(2758801,4000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_random_templates WHERE id IN (20195);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20195,0,2000020612,0,'27588 - Random Text 1'),
(20195,0,2000020613,0,'27588 - Random Text 2'),
(20195,0,2000020614,0,'27588 - Random Text 3'),
(20195,0,2000020615,0,'27588 - Random Text 4');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020612 AND 2000020617;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020612,'For the Alliance and Lord Fordragon!',0,0,7,0,NULL),
(2000020613,'HOO-WAH! The cavalry has arrived!',0,0,7,0,NULL),
(2000020614,'Great driving, soldier! Not a scratch on us!',0,0,7,0,NULL),
(2000020615,'Without you we\'d be lost. Thanks for the ride!',0,0,7,0,NULL),
(2000020616,'Reporting for duty, sir!',0,0,7,66,NULL),
(2000020617,'Return to the Carrion Fields or your vehicle will be destroyed!',0,3,0,0,NULL);

-- 7th Legion Siege Engineer 27163
DELETE FROM dbscripts_on_relay WHERE id IN (20397);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20397,100,0,20196,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of 7th Siege Engineer EAI: random say'),
(20397,101,37,0,0,0,27607,20,2,0,0,0,0,0,0,0,0,'Part of 7th Siege Engineer EAI: move towards 27607'),
(20397,4000,15,49114,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of 7th Legion Siege Engineer EAI: cast spell'),
(20397,4090,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of 7th Legion Siege Engineer EAI: cast spell'),
(20397,4100,0,0,0,0,0,0,0,2000020622,0,0,0,0,0,0,0,'Part of 7th Siege Engineer EAI: say'),
(20397,11000,0,0,0,0,0,0,0,2000020623,0,0,0,0,0,0,0,'Part of 7th Siege Engineer EAI: say');
DELETE FROM dbscript_random_templates WHERE id IN (20196);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20196,0,2000020618,0,'27163 - Random Text 1'),
(20196,0,2000020619,0,'27163 - Random Text 2'),
(20196,0,2000020620,0,'27163 - Random Text 3'),
(20196,0,2000020621,0,'27163 - Random Text 4');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020618 AND 2000020623;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020618,'Keep \'em off me for about 15 seconds and this thing is as good as dead.',0,0,7,0,NULL),
(2000020619,'When I\'m done with this plague wagon it\'ll look like a goblin built it! Keep me safe!',0,0,7,0,NULL),
(2000020620,'Keep the bad guys off me!',0,0,7,0,NULL),
(2000020621,'Cover me!',0,0,7,0,NULL),
(2000020622,'%s deftly assembles a strange machine.',0,2,0,0,NULL),
(2000020623,'That oughta do it! Just a few more seconds now.',0,0,7,0,NULL);

-- Alliance Steam Tank 27587
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id = 27587;
DELETE FROM vehicle_accessory WHERE vehicle_entry = 27587;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(27587, 1, 27163, '7th Legion Siege Engineer'),
(27587, 2, 27588, '7th Legion Elite'),
(27587, 3, 27588, '7th Legion Elite');
DELETE FROM dbscripts_on_relay WHERE id IN (20395,20396);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20395,0,14,46598,0,0,27163,10,0x04,0,0,0,0,0,0,0,0,'Part of 7th Legion Siege Engineer EAI: remove aura'),
(20395,10,45,20397,0,0,27163,5,7,0,0,0,0,0,0,0,0,'Part of 7th Siege Engineer EAI: buddy self START_RELAY_SCRIPT'),
(20395,11100,15,49123,0,0,27163,100,1,0,0,0,0,0,0,0,0,'Part of 7th Legion Siege Engineer EAI: buddy cast spell 49123'),
(20395,13000,15,46598,0,0,27163,100,3,0,0,0,0,0,0,0,0,'Part of 7th Legion Siege Engineer EAI: buddy cast spell 46598'),
-- area check
(20396,10,34,20162,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Alliance Steam Tank EAI: area check'),
(20396,1000,0,0,0,0,0,0,0,2000020617,0,0,0,0,0,0,0,'Part of Alliance Steam Tank EAI: warning'),
(20396,20000,34,20162,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Alliance Steam Tank EAI: area check'),
(20396,20050,35,8,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT C'),
(20396,20100,15,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Alliance Steam Tank EAI: Suicide');
DELETE FROM conditions WHERE condition_entry BETWEEN 20161 AND 20162;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20161,4,4190,0,0,0,0),
(20162,-2,20161,20155,0,0,1);

-- Plague Wagon 27607
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 27607;

-- s:49081 Drop Off Soldier
DELETE FROM dbscripts_on_spell WHERE id = 49081;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(49081,0,35,5,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT A');
-- s:49109 Drop Off Gnome
DELETE FROM dbscripts_on_spell WHERE id = 49109;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(49109,0,31,27607,15,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27607'),
(49109,10,35,6,10,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT B');
-- s:49123 Plague Wagon Kill Credit
DELETE FROM dbscripts_on_spell WHERE id = 49123;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(49123,10,15,49122,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_script_target WHERE entry IN (49109,49123,49118,49333);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(49109,1,27587,0),
(49123,1,27587,6),
(49123,1,27607,5),
(49118,1,27607,0),
(49333,1,27283,0),
(49333,1,27287,0),
(49333,1,27288,0),
(49333,1,27289,0),
(49333,1,27410,0);
