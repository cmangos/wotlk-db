-- The Battle For The Undercity - Pre-Chain
-- Players who will start it .. will move to Phase 64(Horde) 128(Alliance)

-- Horde:
-- q.13242 'Darkness Stirs' 
-- q.13257 'Herald of War'
-- q.13266 'A Life Without Regret'
-- q.13267 'The Battle For The Undercity'
DELETE FROM spell_area WHERE spell = 59062;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(59062,14,0,0,0,20090,0,0,2,1), -- Durotar
(59062,85,0,0,0,20090,0,0,2,1), -- Trisfal Glades
(59062,153,0,0,0,20090,0,0,2,1), -- Ruins of Lordaeron
(59062,1497,0,0,0,20090,0,0,2,1), -- Undercity
(59062,1637,0,0,0,20090,0,0,2,1); -- Orgrimmar
DELETE FROM conditions WHERE condition_entry IN (20088,20089,20090);
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20088, 8, 13242, 0, 0),
(20089, 8, 13267, 0, 1),
(20090, -1, 20089, 20088, 0);

-- Alliance
-- q.13347 'Reborn From The Ashes'
-- q.13369 'Fate, Up Against Your Will'
-- q.13370 'A Royal Coup'
-- q.13371 'The Killing Time'
-- q.13377 'The Battle For The Undercity'
DELETE FROM spell_area WHERE spell = 60815;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(60815,14,0,0,0,20093,0,0,2,1), -- Durotar
(60815,85,0,0,0,20093,0,0,2,1), -- Trisfal Glades
(60815,153,0,0,0,20093,0,0,2,1), -- Ruins of Lordaeron
(60815,1497,0,0,0,20093,0,0,2,1), -- Undercity
(60815,1637,0,0,0,20093,0,0,2,1); -- Orgrimmar
DELETE FROM conditions WHERE condition_entry IN (20091,20092,20093);
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20091, 8, 13347, 0, 0),
(20092, 8, 13377, 0, 1),
(20093, -1, 20092, 20091, 0);
