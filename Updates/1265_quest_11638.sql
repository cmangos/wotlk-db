-- q.11638 'Return My Remains'

-- objects
-- missing spawn added - WoTLK free guid reused
DELETE FROM game_event_gameobject WHERE guid = 15702;
DELETE FROM gameobject_battleground WHERE guid = 15702;
DELETE FROM gameobject WHERE guid = 15702;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- Farseer Grimwalker's Remains
(15702, 187680, 571, 1,1,4521.143,5670.449,81.38843,6.178466, 0, 0, -0.05233574,0.9986296, -15, -15, 255, 1);

-- target for spell
DELETE FROM spell_script_target WHERE entry = 45608;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45608,1,23837,0);

-- Q.Script
DELETE FROM dbscripts_on_quest_end WHERE id = 11638;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11638,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(11638,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,3.979351,''),
(11638,1,1,16,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11638,2,9,15702,15,0,0,0,0,0,0,0,0,0,0,0,0,'respawn object'),
(11638,7,15,45608,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 11638 WHERE entry = 11638;

-- EVENT
DELETE FROM dbscripts_on_event WHERE id = 16768;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(16768,1,10,25461,70000,0,0,0,0x08,0,0,0,0,4521.806,5669.847,81.41785,1.117011,'summon - Farseer Grimwalker');

-- Farseer Grimwalker
UPDATE creature_template SET MovementType = 2, UnitFlags = 32768, Expansion = 2, MinLevel = 70, MaxLevel = 70, FactionAlliance = 1981, FactionHorde = 1981, MinLevelHealth = 8982, MaxLevelHealth = 8982, MinLevelMana = 3155, MaxLevelMana = 3155, Armor = 6708, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 286, MinMeleeDmg = 234, MaxMeleeDmg = 331 WHERE entry = 25461;

DELETE FROM creature_movement_template WHERE entry = 25461;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25461,1,4521.806,5669.847,81.41785,14000,2546101,1.117011),
(25461,2,4509.978,5681.065,81.84391,0,0,0),
(25461,3,4496.885,5681.435,80.88317,0,0,0),
(25461,4,4479.83,5690.766,80.85558,0,0,0),
(25461,5,4480.29,5697.72,81.2174,0,2546102,1.30744),
(25461,6,4484.034,5713.207,81.36673,0,0,0),
(25461,7,4489.59,5724.576,80.49173,0,0,0),
(25461,8,4496.92,5726.112,80.98856,0,0,0),
(25461,9,4504.25,5720.12,81.4956,0,0,5.43134),
(25461,10,4509.134,5713.401,81.65795,0,2546103,0),
(25461,11,4518.184,5711.555,81.65795,30000,2546104,3.612832);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2546101 AND 2546104;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2546101,1,31,25339,30,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2546101,2,0,0,0,0,25339,100,7,2000001510,0,0,0,0,0,0,0,''),
(2546101,4,0,0,0,0,0,0,0,2000001511,0,0,0,0,0,0,0,''),
(2546101,10,0,0,0,0,0,0,0,2000001512,0,0,0,0,0,0,0,''),
(2546101,14,0,0,0,0,25339,100,7,2000001513,0,0,0,0,0,0,0,''),
(2546101,16,3,0,0,0,25339,100,7,0,0,0,0,0,0,0,2.67035,''),
(2546101,17,21,1,0,0,25339,100,7,0,0,0,0,0,0,0,0,'unactive'),
(2546102,1,31,25326,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2546102,2,0,0,0,0,25326,100,7,2000001514,0,0,0,0,0,0,0,''),
(2546103,1,31,25374,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2546103,2,0,0,0,0,25374,20,7,2000001515,0,0,0,0,0,0,0,''),
(2546104,1,0,0,0,0,0,0,0,2000001516,0,0,0,0,0,0,0,''),
(2546104,1,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT');

-- texts
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001510 AND 2000001516;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001510,'Farseer! I\'m so glad to see you again!',0,0,0,4,NULL),
(2000001511,'I have been returned to the living.',0,0,0,1,NULL),
(2000001512,'And now, I must rest. Thank you for all that you have done.',0,0,0,2,NULL),
(2000001513,'I look forward to further training when you are ready.',0,0,0,2,NULL),
(2000001514,'Farseer, it is good to see that you still live.',0,0,0,1,NULL),
(2000001515,'Farseer, you live!',0,0,0,4,NULL),
(2000001516,'%s smiles and sits down for a well-deserved rest.',0,2,0,0,NULL);
