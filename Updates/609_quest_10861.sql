-- q.10861 'Veil Lithic: Preemptive Strike'
-- Server side spells added
DELETE FROM spell_template WHERE id IN (38854,38865);
INSERT INTO spell_template (id, attr, attr_ex, attr_ex2, attr_ex3, proc_flags, proc_chance, duration_index, effect0, effect0_implicit_target_a, effect0_implicit_target_b, effect0_radius_idx, effect0_apply_aura_name, effect0_misc_value, effect0_misc_value_b, effect0_trigger_spell, comments) VALUES
(38854, 384, 0, 0, 0, 0, 101, 3, 28, 18, 0, 0, 0, 22339, 64, 0, 'summon Redeemet Hatchling'),
(38865, 384, 0, 0, 0, 0, 101, 3, 28, 18, 0, 0, 0, 22337, 64, 0, 'summon Malevolent Hatchling');
-- old scripts removed
DELETE FROM dbscripts_on_go_template_use WHERE id IN (185208,185212);

-- Redeemet Hatchling
-- should fly up into the sky
UPDATE creature_template SET Inhabittype = 4, MovementType = 2 WHERE Entry = 22339;
DELETE FROM creature_movement_template WHERE entry = 22339;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(22339, 1, -3636.85,5767.76,191.548, 5000, 0, 1.89967, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2233901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2233901,0,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp self');
