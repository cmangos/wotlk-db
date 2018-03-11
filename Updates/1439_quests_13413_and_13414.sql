-- q.13413 'Aces High!'
-- q.13414 'Aces High!' (Daily)

-- Corastrasza
-- missing text added
DELETE FROM gossip_menu WHERE entry = 10204;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(10204, 14168, 0, 0),
(10204, 14169, 0, 1448), -- only when 13413 is active
(10204, 14170, 0, 1449); -- only when 13413 is finished
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 1020401, condition_id = 1448 WHERE menu_id = 10204 AND id = 0;
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 1020401, condition_id = 1450 WHERE menu_id = 10204 AND id = 1;
DELETE FROM conditions WHERE condition_entry IN (1448,1449,1450);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(1448, 9, 13413, 0),
(1449, 8, 13413, 0),
(1450, 8, 13414, 0);
-- missing text added
UPDATE npc_text SET text0_1= 'My drakes have been eagerly awaiting your return, $c.$b$bAre you ready to take wing?' WHERE ID = 14170;

-- Script
DELETE FROM dbscripts_on_gossip WHERE id = 1020401; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1020401,0,15,61287,0,0,0,0,0,0,0,0,0,0,0,0,'Cast: Summon Wyrmrest Skytalon'),
(1020401,1,15,61245,0,0,0,6,0,0,0,0,0,0,0,0,'Player - Cast: Wyrmrest Skytalon Ride');


-- target corrected
DELETE FROM spell_script_target WHERE entry = 61245;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(61245,1,32535,0);

-- Wyrmrest Skytalon
UPDATE creature_template SET InhabitType = 3, MinLevel = 80, MaxLevel = 80, MinLevelHealth = 100000, MaxLevelHealth = 100000, Armor = 9706, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 642, MinMeleeDmg = 422, MaxMeleeDmg = 586 WHERE entry = 32535;
UPDATE creature_template_spells SET spell6 = 57092;
DELETE FROM creature_template_addon WHERE entry = 32535;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(32535,0,0,0,0,0,0,'57403');
