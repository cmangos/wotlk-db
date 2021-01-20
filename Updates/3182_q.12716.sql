-- q.12716 'The Plaguebringer's Request'
-- Cauldron should becomes visible after quest completed
DELETE FROM dbscripts_on_quest_end WHERE id = 12716;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12716,0,0,0,0,0,0,0,0,2000020747,0,0,0,0,0,0,0,''),
(12716,1000,15,52706,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Create Plague Cauldron'),
(12716,2500,15,52707,0,0,0,0,6,0,0,0,0,0,0,0,0,'Player Cast: See Noth Invisibility');
-- moved to wotlk section
UPDATE dbscript_string SET entry = 2000020747 WHERE entry = 2000000431;
UPDATE dbscript_string SET sound = 8849 WHERE entry = 2000020747;
-- removed
DELETE FROM spell_area WHERE spell = 52707;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES 
(52707,4298,0,0,0,0,0,0,2,0);
