-- q.13343 'Mystery of the Infinite, Redux'

-- Hourglass of Eternity 32327
UPDATE creature_template SET RegenerateStats = 0 WHERE entry = 32327;
DELETE FROM creature_template_addon WHERE entry = 32327;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(32327,0,0,0,0,0,0,'50057 50867');

-- Past You 32331
UPDATE creature_template SET EquipmentTemplateId = 0 WHERE `entry` = 32331;
DELETE FROM creature_template_addon WHERE entry = 32331;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(32331,0,0,1,0,0,0,49925);

-- Part of Hourglass of Eternity 32327 EAI:
DELETE FROM dbscripts_on_relay WHERE id IN (20326);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20326,500,31,32331,45,0,0,0,0,0,0,0,0,0,0,0,0,'search for 32331'),
(20326,1000,18,0,0,0,32331,40,0x04,0,0,0,0,0,0,0,0,'force to desp 32331');

-- force player to cast 
DELETE FROM dbscripts_on_spell WHERE id IN (49686);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(49686,0,15,49889,0,0,0,0,2,0,0,0,0,0,0,0,0,'');
