-- q.11390 'I've Got a Flying Machine!' - update
-- q.11391 'Steel Gate Patrol' - update
-- Flying Machine not summoned by Player anymore - controled now by Invisible Stalker

-- Quest script
DELETE FROM dbscripts_on_quest_start WHERE id IN (11390,11391);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11391,2,10,15214,15000,0,0,0,0x08,0,0,0,0,2046.149,-3221.081,60.13985,6.230825,'Summon Invisible Stalker');
UPDATE quest_template SET StartScript = 0 WHERE entry = 11390;
UPDATE quest_template SET StartScript = 11391 WHERE entry = 11391;
-- gossip corrected
DELETE FROM dbscripts_on_gossip WHERE id = 895401; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(895401,0,15,45973,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Invisible Stalker 15214
UPDATE creature SET position_x = 1980.004, position_y = -3264.764, position_z = 134.8941, orientation = 6.143559 WHERE guid = 500599;
UPDATE creature SET position_x = 1970.854, position_y = -3265.108, position_z = 134.7769, orientation = 6.143559 WHERE guid = 500598;
DELETE FROM creature_addon WHERE guid IN (105997,105998);
-- vehicles should be summoned by invis creatures without any quest
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (500598,500599);
DELETE FROM creature_movement WHERE id IN (500599,500598);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(500598,1,1970.854,-3265.108,134.7769,30000,1521403,6.143559),
(500599,1,1980.004,-3264.764,134.8941,30000,1521403,6.143559);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1521403;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1521403,1,31,24418,5,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 24418'), -- terminate if found
(1521403,2,15,45973,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Spell not belong to this q. But with conditions can be used here and in other place
DELETE FROM dbscripts_on_spell WHERE id = 71694;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(71694,800,34,20000,11390,0,0,0,6 |0x08,0,0,0,0,0,0,0,0,'Player check: must be in q.11390'),
(71694,2000,15,43806,0,0,0,0,6,0,0,0,0,0,0,0,0,'Player Cast: Kill Credit: Deliver Sack');
