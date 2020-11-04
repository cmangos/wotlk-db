-- Argent Crusade Rifleman 27351
UPDATE creature_model_info SET modelid_alternative = 24578 WHERE modelid = 24577;
UPDATE creature_model_info SET modelid_alternative = 24577 WHERE modelid = 24578;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27351);
DELETE FROM creature_template_addon WHERE entry = 27351;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27351,0,0,2,0,214,0,NULL);
DELETE FROM dbscripts_on_relay WHERE id = 20399;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20399,0,31,27290,60,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Crusade Rifleman EAI: Search for 27290'),
(20399,10,15,48426,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Argent Crusade Rifleman EAI: Cast 48426');
DELETE FROM dbscripts_on_spell WHERE id = 48426;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(48426,0,15,48424,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_script_target WHERE entry IN(48426);
INSERT INTO spell_script_target (entry,type,targetentry,inverseEffectMask) VALUES
(48426,1,27290,0);
