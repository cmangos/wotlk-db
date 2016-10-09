-- q.5168 'Heroes of Darrowshire'

-- Darrowshire Poltergeist
-- stats & equipment
UPDATE creature_template SET UnitClass = 1, Expansion = 0, equipmentTemplateid = 223 WHERE Entry = 11296;

-- Serverside spell added
-- Player from time to time will summon ghost of Darrowshire Poltergeist
DELETE FROM spell_template WHERE id = 17694;
INSERT INTO spell_template (id, attr, attr_ex, attr_ex2, attr_ex3, proc_flags, proc_chance, duration_index, effect0, effect0_implicit_target_a, effect0_implicit_target_b, effect0_radius_idx, effect0_apply_aura_name, effect0_misc_value, effect0_misc_value_b, effect0_trigger_spell, comments) VALUES
(17694, 256, 268435456, 0, 0, 0, 101, 4, 28, 47, 0, 9, 0, 11296, 61, 0, 'Summon Darrowshire Poltergeist (DND)');
