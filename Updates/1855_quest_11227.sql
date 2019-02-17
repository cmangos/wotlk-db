-- q.11227 'Let Them Eat Crow'

-- pet control spell
DELETE FROM dbscripts_on_spell WHERE id = 42785;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(42785,0,15,42790,1,0,0,0,0x02,0,0,0,0,0,0,0,0,'Charm Plaguehound');

-- Lets check if pet is in correct zone
-- Part of Hungry Plaguehound 23943 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20150);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20150,0,34,20016,0,0,0,0,0,0,0x04,0,0,0,0,0,0,''),
(20150,1,14,42790,0,0,0,0,0,0,0x04,0,0,0,0,0,0,'');
DELETE FROM conditions WHERE condition_entry =  20016;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20016, 4, 4060, 0);

DELETE FROM dbscripts_on_quest_end WHERE id = 11227;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11227,0,31,23943,30,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11227,1,18,0,0,0,23943,30,7,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 11227 WHERE entry = 11227;
