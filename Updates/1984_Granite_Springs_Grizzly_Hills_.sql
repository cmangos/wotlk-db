-- Granite Springs - Grizzly Hills

-- Garg 23745
-- move to Wotlk 571x range
UPDATE creature SET guid = 5712164 WHERE guid = 114137;
-- script
DELETE FROM dbscripts_on_relay WHERE id = 20166;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(20166,0,31,23033,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Garg EAI 23745: search for 23033'),
(20166,1,15,53824,0,0,23033,101,1,0,0,0,0,0,0,0,0,'Part of Garg EAI 23745: cast Throw');

-- Invisible Stalker (Floating)
UPDATE creature SET position_x = 3854.196, position_y = -1934.423, position_z = 208.4934, orientation = 4.485496, SpawnDist = 0, MovementType = 0 WHERE guid = 119549;
-- move to Wotlk 571x range
UPDATE creature SET guid = 5712165 WHERE guid = 119549;

-- Turgore 23565
UPDATE creature SET guid = 5712166 WHERE guid = 97576;
DELETE FROM creature_addon WHERE guid = 97576;

-- Budd 26422
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 26422;
UPDATE creature SET guid = 5712167 WHERE guid = 100860;
DELETE FROM npc_gossip WHERE npc_guid = 100860;
UPDATE gossip_menu_option SET action_script_id = 930101 WHERE menu_id = 9301;
DELETE FROM dbscripts_on_gossip WHERE id IN (9301,930101); 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(930101,0,15,61545,0,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Budd'),
(930101,1,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'despawn Budd');

-- Budd 32663
UPDATE creature_template SET EquipmentTemplateId = 2522 WHERE Entry = 32663;
DELETE FROM creature_equip_template WHERE entry = 2522;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2522, 17040, 0, 0);

-- Marge 23764
UPDATE creature SET guid = 5712171 WHERE guid = 115887;

-- Morgom 23766
UPDATE creature SET guid = 5712172 WHERE guid = 116141;

-- Brend 23762
UPDATE creature SET guid = 5712173 WHERE guid = 115711;

-- Ameenah 26474
UPDATE creature SET guid = 5712174 WHERE guid = 105497;

-- Prigmon 26519
DELETE FROM npc_gossip WHERE npc_guid = 110106;
UPDATE creature SET guid = 5712175 WHERE guid = 110106;

-- Drakuru 26423
UPDATE creature SET guid = 5712176 WHERE guid = 100901;
DELETE FROM npc_gossip WHERE npc_guid = 100901;
UPDATE gossip_menu SET condition_id = 20027 WHERE entry = 9615 AND text_id = 12998;
UPDATE gossip_menu SET condition_id = 20028 WHERE entry = 9615 AND text_id = 13001;
UPDATE gossip_menu_option SET condition_id = 20030 WHERE menu_id = 9615 AND id = 0;
UPDATE gossip_menu_option SET condition_id = 20033 WHERE menu_id = 9615 AND id = 1;
DELETE FROM conditions WHERE condition_entry IN (288,289,324,553,20027,20028,20029,20030,20031,20032,20033);
INSERT INTO conditions (condition_entry,type,value1,value2) VALUE
(20027,9,11989,0),
(20028,8,11989,0),
(20029,1,50001,0),
(20030,-1,20029,20027),
(20031,24,35797,1),
(20032,19,12238,0),
(20033,-1,20032,20031);

-- Mack Fearsen 26604
DELETE FROM npc_gossip WHERE npc_guid = 118187;
UPDATE creature SET guid = 5712177 WHERE guid = 118187;

-- Overworked Nag 23747
UPDATE creature SET guid = 5712178 WHERE guid = 114333;

-- Samir 26424
UPDATE creature SET guid = 5712179 WHERE guid = 100943;
DELETE FROM npc_gossip WHERE npc_guid = 100943;
