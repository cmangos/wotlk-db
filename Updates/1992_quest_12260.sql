-- q.12260 'The Perfect Dissemblance'

-- Onslaught Footman 27405
UPDATE creature_template SET Faction = 2033, MinLevel = 71, MaxLevel = 72, MinLevelHealth = 9291, MaxLevelHealth = 9610, equipmentTemplateid = 667 WHERE entry = 27405;
-- Onslaught Footman 27406
UPDATE creature_template SET Faction = 2033, MinLevel = 71, MaxLevel = 72, MinLevelHealth = 9291, MaxLevelHealth = 9610, equipmentTemplateid = 667 WHERE entry = 27406;

-- Onslaught Raven Priest 27202
UPDATE creature_model_info SET modelid_other_gender = 24398 WHERE modelid = 24399;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27202);
DELETE FROM creature_template_addon WHERE entry = 27202;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27202,0,0,1,1,0,0,48154);

DELETE FROM dbscripts_on_relay WHERE id IN (20167,20168,20169);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20167,0,34,20035,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of 27443 EAI: check if source is male'),
(20167,1,15,48763,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 27443 EAI: cast 48763'), -- male
(20167,2,15,48655,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 27202 EAI: Player - Force Cast "The Perfect Dissemblance: Summon Player\'s Footman & Credit Credit"'),
(20167,3,15,48654,1,0,0,0,0,0,0,0,0,0,0,0,0,'Part of 27202 EAI: source - Force Cast: "The Perfect Dissemblance: Summon Priest\'s Footman"'),
(20168,0,34,20034,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of 27443 EAI: check if source is female'),
(20168,1,15,48761,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 27443 EAI: cast 48761'), -- female
(20168,2,15,48655,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of 27202 EAI: Player - Force Cast: "The Perfect Dissemblance: Summon Player\'s Footman & Credit Credit"'),
(20168,3,15,48654,1,0,0,0,0,0,0,0,0,0,0,0,0,'Part of 27202 EAI: source - Force Cast: "The Perfect Dissemblance: Summon Priest\'s Footman"'),
(20169,0,31,27202,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of 27405 EAI: search for 27202'),
(20169,1,26,0,0,0,27202,21,1,0,0,0,0,0,0,0,0,'Part of 27405 EAI: attack start');
DELETE FROM conditions WHERE condition_entry IN (20034,20035);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20034, 41, 0, 0), -- check if male
(20035, 41, 1, 0); -- check if female
DELETE FROM dbscripts_on_quest_end WHERE id = 12260;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12260,0,14,48763,0,0,0,0,2,0,0,0,0,0,0,0,0,'Remove aura from Player'),
(12260,0,14,48761,0,0,0,0,2,0,0,0,0,0,0,0,0,'Remove aura from Player');
UPDATE quest_template SET CompleteScript = 12260 WHERE entry = 12260;
DELETE FROM spell_area WHERE spell IN (48763,48761);
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(48761,4180,0,0,0,0,0,0,2,0),
(48763,4180,0,0,0,0,0,0,2,0);
