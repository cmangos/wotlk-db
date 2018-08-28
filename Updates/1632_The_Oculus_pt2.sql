-- The Oculus Pt.2

-- Gossips
-- exchanged items schould be removed from players inventory
-- Eternos
DELETE FROM dbscripts_on_gossip WHERE id IN (957402,957403);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(957402,0,17,37815,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove item'),
(957402,0,17,37859,1,0,0,0,0,0,0,0,0,0,0,0,0,'add item'),
(957403,0,17,37860,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove item'),
(957403,0,17,37859,1,0,0,0,0,0,0,0,0,0,0,0,0,'add item');
-- Belgaristrasz
DELETE FROM dbscripts_on_gossip WHERE id IN (957501,957502);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(957501,0,17,37859,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove item'),
(957501,0,17,37860,1,0,0,0,0,0,0,0,0,0,0,0,0,'add item'),
(957502,0,17,37815,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove item'),
(957502,0,17,37860,1,0,0,0,0,0,0,0,0,0,0,0,0,'add item');
-- Verdisa
DELETE FROM dbscripts_on_gossip WHERE id IN (957302,957303);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(957302,0,17,37859,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove item'),
(957302,0,17,37815,1,0,0,0,0,0,0,0,0,0,0,0,0,'add item'),
(957303,0,17,37860,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove item'),
(957303,0,17,37815,1,0,0,0,0,0,0,0,0,0,0,0,0,'add item');

-- Vehicles
-- Amber Drake
UPDATE creature_template SET InhabitType = 3 WHERE entry = 27755;
DELETE FROM creature_template_addon WHERE entry = 27755;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27755,0,0,0,0,0,0,'50325');
-- Emerald Drake
UPDATE creature_template SET InhabitType = 3 WHERE entry = 27692;
DELETE FROM creature_template_addon WHERE entry = 27692;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27692,0,0,0,0,0,0,'50325');
-- Ruby Drake
UPDATE creature_template SET InhabitType = 3 WHERE entry = 27756;
DELETE FROM creature_template_addon WHERE entry = 27756;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27756,0,0,0,0,0,0,'50248 50325');

-- target corrected for 49346,49460,49464
UPDATE spell_script_target SET InverseEffectMask = 2 WHERE entry IN (49346,49460,49464); -- effect1 goes to player

-- spell allowed only in 4228
DELETE FROM spell_area WHERE spell = 53797;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(53797,4228,0,0,0,0,0,0,2,0);

-- flight allowed only with 53797 active  
DELETE FROM spell_area WHERE spell = 50296;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(50296,0,0,0,0,0,53797,0,2,1);

-- Scripts
-- for Amber Drake
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 9000 AND 9003;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- for Amber Drake
(9000,0,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'veh -> player'),
(9000,4,15,49459,0,0,0,0,0,0,0,0,0,0,0,0,0,'player -> player'),
(9000,4,15,49460,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9000,5,15,53797,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
-- for Emerald Drake
(9001,0,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'veh -> player'),
(9001,4,15,49427,0,0,0,0,0,0,0,0,0,0,0,0,0,'player -> player'),
(9001,4,15,49346,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9001,5,15,53797,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
-- for Ruby Drake
(9002,0,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'veh -> player'),
(9002,4,15,49463,0,0,0,0,0,0,0,0,0,0,0,0,0,'player -> player'),
(9002,4,15,49464,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(9002,5,15,53797,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
-- for all drakes
(9003,0,15,50550,0,0,0,0,2,0,0,0,0,0,0,0,0,'veh -> player'),
(9003,0,15,50553,0,0,0,0,0,0,0,0,0,0,0,0,0,'player -> player');
