-- correct duration index
DELETE FROM spell_template WHERE id IN (39240,39241);
INSERT INTO spell_template (id, attr, attr_ex, attr_ex2, attr_ex3, proc_flags, proc_chance, duration_index, effect0, effect0_implicit_target_a, effect0_implicit_target_b, effect0_radius_idx, effect0_apply_aura_name, effect0_misc_value, effect0_misc_value_b, effect0_trigger_spell, comments) VALUES
(39240,0,0,0,0,0,101,4,28,41,0,8,0,22483,64,0,'Summon Summon Sand Gnome front of the caster'),
(39241,0,0,0,0,0,101,4,28,41,0,8,0,22482,64,0,'Summon Mature Bone Sifter front of the caster');
