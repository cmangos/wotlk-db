-- q.12957 'Slaves of the Stormforged'
-- q.12964 'The Dark Ore'
-- Both req q.12937 & q.12931 rewarded
UPDATE quest_template SET RequiredCondition = 21136 WHERE entry IN (12957,12964);
DELETE FROM conditions WHERE condition_entry BETWEEN 21134 AND 21136;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(21134,8,12937,0,0,0,0,''),
(21135,8,12931,0,0,0,0,''),
(21136,-1,21135,21134,0,0,0,'');
-- c.29384 Captive Mechagnome
-- gossip available with q active
UPDATE gossip_menu_option SET condition_id = 21137, action_script_id = 987101 WHERE menu_id = 9871;
DELETE FROM conditions WHERE condition_entry = 21137;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(21137,9,12957,1,0,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id IN (9871,987101);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(987101,1,15,57323,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_relay WHERE id IN (21276);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21276,1,1,0,0,0,0,0,0x002,0,0,0,0,0,0,0,0,'Part of Captive Mechagnome 29384 EAI - Reset emote'),
(21276,2,29,1,0,0,0,0,0x002,0,0,0,0,0,0,0,0,'Part of Captive Mechagnome 29384 EAI - NpcFlags Removed'),
(21276,1000,36,0,0,0,0,0,0x002,0,0,0,0,0,0,0,0,'Part of Captive Mechagnome 29384 EAI - face target'),
(21276,2000,1,25,0,0,0,0,0x002,0,0,0,0,0,0,0,0,'Part of Captive Mechagnome 29384 EAI - emote'),
(21276,2001,8,29962,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Captive Mechagnome 29384 EAI - q credit'),
(21276,2100,0,20395,0,0,0,0,0x002,0,0,0,0,0,0,0,0,'Part of Fallen Earthen Defender 30035 EAI - random say');
DELETE FROM dbscript_random_templates WHERE id = 20395;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20395,0,30762,0,'Captive Mechagnome 29384 - Random text 1'),
(20395,0,30763,0,'Captive Mechagnome 29384 - Random text 2'),
(20395,0,30764,0,'Captive Mechagnome 29384 - Random text 3'),
(20395,0,30765,0,'Captive Mechagnome 29384 - Random text 4'),
(20395,0,30766,0,'Captive Mechagnome 29384 - Random text 5');
