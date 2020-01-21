-- q.11390 'I've Got a Flying Machine!' - update
-- q.11391 'Steel Gate Patrol' - update
-- Quest script
DELETE FROM dbscripts_on_quest_start WHERE id IN (11390,11391);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11390,1,15,45973,0,0,0,0,6,0,0,0,0,0,0,0,0,''),
(11391,1,15,45973,0,0,0,0,6,0,0,0,0,0,0,0,0,''),
(11391,2,10,15214,15000,0,0,0,0x08,0,0,0,0,2046.149,-3221.081,60.13985,6.230825,'Summon Invisible Stalker');
UPDATE quest_template SET StartScript = 11390 WHERE entry = 11390;
UPDATE quest_template SET StartScript = 11391 WHERE entry = 11391;

-- Steel Gate Chief Archaeologist 24399
UPDATE creature SET position_x = 1965.408, position_y = -3260.609, position_z = 134.7109, orientation = 3.473205 WHERE guid = 102855;
-- move to Wotlk 571x range
UPDATE creature SET guid = 5712161 WHERE guid = 102855;
-- gossip corrected
DELETE FROM dbscripts_on_gossip WHERE id = 895401; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(895401,0,15,45973,0,0,0,0,6,0,0,0,0,0,0,0,0,'');

-- Invisible Stalker 15214
UPDATE creature SET position_x = 1980.004, position_y = -3264.764, position_z = 134.8941, orientation = 6.143559, spawndist = 0, MovementType = 0 WHERE guid = 105997;
UPDATE creature SET position_x = 1970.854, position_y = -3265.108, position_z = 134.7769, orientation = 6.143559, spawndist = 0, MovementType = 0 WHERE guid = 105998;
DELETE FROM creature_addon WHERE guid IN (105997,105998);
-- move to Wotlk 571x range
UPDATE creature SET guid = 5712162 WHERE guid = 105997;
UPDATE creature SET guid = 5712163 WHERE guid = 105998;

-- wotlk core missing featture where veh spell can be controled by conditions: temp solution - will allow player to finish both daily quests
DELETE FROM creature_template_spells WHERE entry = 24418;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5) VALUES
(24418,43770,0,43799,43769,44009);
-- should be:
-- (24418,43770,0,0,0);         -- q.11390
-- (24418,43799,43769,0,44009); -- q.11391
