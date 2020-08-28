-- q.12470 'Mystery of the Infinite' 

-- Hourglass of Eternity 27840
UPDATE creature_template SET RegenerateStats = 0 WHERE entry = 27840;
DELETE FROM creature_template_addon WHERE entry = 27840;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27840,0,0,0,0,0,0,'50057 50867');

-- Future You 27899
UPDATE creature_template SET EquipmentTemplateId = 0 WHERE `entry` = 27899;
DELETE FROM creature_template_addon WHERE entry = 27899;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27899,0,0,1,0,0,0,49925);

-- force player to cast 
DELETE FROM dbscripts_on_spell WHERE id IN (49686);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(49686,0,15,49889,0,0,0,0,2,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_script_target WHERE entry IN(49889);
INSERT INTO spell_script_target (entry,type,targetentry,inverseEffectMask) VALUES
(49889,1,27899,0),
(49889,1,32331,0);

-- Part of Hourglass of Eternity 27840 EAI:
DELETE FROM dbscripts_on_relay WHERE id IN (20324,20325);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20324,0,15,50012,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Hourglass of Eternity EAI: Force Player to cast See Nozdormu Invisibility'),
(20325,500,31,27899,45,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27899'),
(20325,1000,18,0,0,0,27899,40,0x04,0,0,0,0,0,0,0,0,'force to desp 27899');
