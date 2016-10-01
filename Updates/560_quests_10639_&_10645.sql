-- Teron Gorefiend, I am...(q.10639) -H  (q.10645) -A  -- Redone
DELETE FROM dbscripts_on_quest_start WHERE id = 10639;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10639,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(10639,1,0,0,0,0,0,0,2000000031,0,0,0,0,0,0,0,''),
(10639,4,44,21867,0,0,0,0,0,0,0,0,0,0,0,0,''),
(10639,5,15,37748,0,0,0,0x02,0,0,0,0,0,0,0,0,'cast 37748'),
(10639,9,10,21877,300000,0,0,0,0,0,0,0,-4536.58,1028.76,8.8266,3.72963,'summon - Karsius the Ancient Watcher'),
(10639,11,10,21876,300000,0,0,0,0,0,0,0,-4504.67,1020.56,33.0728,2.93215,''),
(10639,11,10,21876,300000,0,0,0,0,0,0,0,-4509.67,1047.06,26.4582,3.78736,''),
(10639,11,10,21876,300000,0,0,0,0,0,0,0,-4537.54,1049.36,18.7409,4.41568,''),
(10639,11,10,21876,300000,0,0,0,0,0,0,0,-4551.17,1044.11,16.521,5.21853,''),
(10639,12,10,21876,300000,0,0,0,0,0,0,0,-4523.75,1062.35,24.3041,4.43314,''),
(10639,12,10,21876,300000,0,0,0,0,0,0,0,-4524.73,1009.76,21.3249,2.02458,''),
(10639,12,10,21876,300000,0,0,0,0,0,0,0,-4515.91,1020.08,23.6738,2.72271,''),
(10639,12,10,21876,300000,0,0,0,0,0,0,0,-4515.17,1033.11,20.7127,3.1765,''),
(10639,12,10,21876,300000,0,0,0,0,0,0,0,-4525,1045.41,19.8945,4.15388,''),
(10639,13,1,333,0,21877,50,7,0,0,0,0,0,0,0,0,''),
(10639,15,0,4,0,21872,40,0,2000005473,0,0,0,0,0,0,0,''),
(10639,15,22,90,0x01 | 0x04 | 0x10 | 0x20,21877,50,7,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM dbscripts_on_event WHERE id = 14092;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14092,5,20,2,0,21867,100,7,0,0,0,0,0,0,0,0,'movement chenged to 2:iwaypoints');
-- spell should be casted by script. with delay
UPDATE quest_template SET SrcSpell = 0 WHERE entry IN (10639,10645);

-- Teron Gorefiend 
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35, ExtraFlags = 0, MovementType = 0 WHERE entry = 21867;
UPDATE creature_template_addon SET mount = 0 WHERE entry = 21877;
DELETE FROM creature_template_spells WHERE entry = 21867;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(21867, 0, 0, 0, 37729, 37727, 37788, 37728, 0);
DELETE FROM dbscripts_on_creature_death WHERE id = 21797; -- Ancient Shadowmoon Spirit (this is not needed anymore)
DELETE FROM dbscripts_on_creature_death WHERE id = 21867;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21867,0,23,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(21867,0,0,0,0,21877,200,7,2000001011,0,0,0,0,0,0,0,''),
(21867,1,18,0,0,21877,200,7,0,0,0,0,0,0,0,0,'Karsius the Ancient Watcher despawn');
DELETE FROM dbscripts_on_creature_movement WHERE id = 2186701; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2186701,0,24,10720,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2186701,7,0,0,0,0,0,0,2000005471,0,0,0,0,0,0,0,''),
(2186701,8,1,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2186701,10,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2186701,12,0,0,0,0,0,0,2000005472,0,0,0,0,0,0,0,''),
(2186701,13,1,22,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000001011;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001011,'Let this be a lesson to those that would do evil to our lands!',0,1,0,0,NULL);

-- Karsius the Ancient Watcher
UPDATE creature_template SET UnitFlags = 33536, ExtraFlags = 0 WHERE entry = 21877;
UPDATE creature_template_addon SET emote = 0, auras = 37497 WHERE entry = 21877;
DELETE FROM dbscripts_on_creature_death WHERE id = 21877;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21877,1,18,0,0,21867,200,7,0,0,0,0,0,0,0,0,''),
(21877,2,10,21867,32000,0,0,0,0,0,0,0,-4542.21,1023.72,9.66909,0.864165,'summon - Teron Gorefiend');

-- text should have 'talk' emote
UPDATE db_script_string SET emote = 1 WHERE entry = 2000000031;

-- spell target corrected
DELETE FROM spell_script_target WHERE entry IN (37748,37784);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(37748, 1, 21867),
(37784, 1, 21867);
