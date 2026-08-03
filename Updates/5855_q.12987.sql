-- q.12987 'Mounting Hodir's Helm'

-- See Invis Tier 3 - Area added (helm)
DELETE FROM spell_area WHERE spell = 56773 AND area = 4438;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(56773,4438,0,0,0,21091,0,0,2,1);
DELETE FROM conditions WHERE condition_entry BETWEEN 21089 AND 21091;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(21089, 9, 12987, 2, 0, 0, 0), -- taken & completed
(21090, 8, 12987, 0, 0, 0, 0), -- rewarded
(21091, -2, 21090, 21089, 0, 0, 0);
-- o.192165 Northern Ice Spike Spell Focus
UPDATE gameobject SET PhaseMask = 4 WHERE id = 192165;
UPDATE `broadcast_text` SET `ChatTypeID` = 5 WHERE `id` IN (30906,30907);
