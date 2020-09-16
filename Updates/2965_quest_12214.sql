-- q.12214 'Fresh Remounts'

-- Onslaught Warhorse 27213
-- should use 43671 for vehicle control
-- templates
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27213);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27206);
DELETE FROM creature_template_addon WHERE entry IN (27206,27213);
INSERT INTO creature_template_addon VALUES
(27206,0,0,1,0,0,0,NULL),
(27213,0,0,1,0,0,0,NULL);
DELETE FROM dbscripts_on_spell WHERE id = 48297;
INSERT INTO dbscripts_on_spell (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(48297,0,0,14,48290,0,0,0,0,2,0,0,0,0,0,0,0,0,''),
(48297,100,0,22,35,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(48297,300,0,35,5,10,0,0,0,0,0,0,0,0,0,0,0,0,'send event'),
(48297,1000,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'run off'),
(48297,1100,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(48297,2000,0,20,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- waypoints used for quest
DELETE FROM creature_movement_template WHERE entry = 27213;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27213,1,1,3263.21,-624.332,165.348,0.88173,9000,2721301),
(27213,1,2,3254.2,-631.527,164.943,0.191688,8000,2721302);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2721301,2721302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2721301,2000,15,48298,0,0,23837,15,3,0,0,0,0,0,0,0,0,''),
(2721301,4500,15,48304,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2721301,5500,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2721301,7500,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2721302,1000,20,1,3,5000,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2721302,6000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2721302,7000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- quest loot corrected (wowhead has it wrong - % also taken from players without quest 
UPDATE creature_loot_template SET ChanceOrQuestChance = -100 WHERE item = 37202;
