-- q.11310 'Warning: Some Assembly Required'
-- Abominations Remains
-- These objects are not static spawns
DELETE FROM gameobject WHERE guid = 40145;
DELETE FROM game_event_gameobject WHERE guid = 40145;
DELETE FROM gameobject_battleground WHERE guid = 40145;
-- Size for Abomination Remains (camera wont stuck inside)
UPDATE gameobject_template SET size = 1 WHERE entry = 186258;

-- Part for Mindless Abomination Control
-- Mindless Abomination
UPDATE creature_template SET MechanicImmuneMask = 8388624, Expansion = 2, UnitClass = 1, MinLevelHealth = 4645, MaxLevelHealth = 4645, RangedBaseAttackTime = 2000, MeleeAttackPower = 308, RangedAttackPower = 48, DamageMultiplier = 0.8, MinMeleeDmg = 171, MaxMeleeDmg = 235, MinRangedDmg = 130, MaxRangedDmg = 194, Armor = 7018 WHERE entry = 23575;
DELETE FROM creature_template_spells WHERE entry = 23575;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(23575, 42166, 61359, 0, 0); 
-- Player casts this on his summon
DELETE FROM dbscripts_on_spell WHERE id = 43393;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(43393,0,15,42168,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
-- spell must have a target
DELETE FROM spell_script_target WHERE entry = 42168;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(42168, 1, 23575, 6);

-- Part for quest credit
-- this will kill our summon
DELETE FROM dbscripts_on_spell WHERE id = 42268;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(42268,0,15,42266,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42267,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42266,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42267,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42266,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42267,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42266,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42267,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42266,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42267,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42266,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42267,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42266,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42267,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42266,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42267,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42266,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42267,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42266,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,0,15,42267,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(42268,4,14,42168,0,0,0,0,0,0,0,0,0,0,0,0,''),
(42268,5,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
-- missing server side spell
DELETE FROM spell_template WHERE id = 43388;
INSERT INTO spell_template (id, attr, attr_ex, attr_ex2, attr_ex3, proc_flags, proc_chance, duration_index, effect0, effect0_implicit_target_a, effect0_implicit_target_b, effect0_radius_idx, effect0_apply_aura_name, effect0_misc_value, effect0_misc_value_b, effect0_trigger_spell, comments) VALUES
(43388, 150995328, 32, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Suicide, No Blood, No Logging');
DELETE FROM spell_script_target WHERE entry = 42166;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(42166, 1, 23575, 1), -- without effect0
(42166, 1, 23564, 6), -- without effect1 and effect2 -- Plagued Dragonflayer Tribesman
(42166, 1, 24198, 6), -- without effect1 and effect2 -- Plagued Dragonflayer Rune-Caster
(42166, 1, 24199, 6); -- without effect1 and effect2 -- Plagued Dragonflayer Handler
-- Quest credit
DELETE FROM dbscripts_on_creature_death WHERE id IN (23564,24198,24199);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23564, 0, 31, 23575, 30,0,0,0,0,0,0,0,0,0,0,0,'search for 23575'),
(23564, 1, 15, 43399, 0, 23575, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(24198, 0, 31, 23575, 30,0,0,0,0,0,0,0,0,0,0,0,'search for 23575'),
(24198, 1, 15, 43399, 0, 23575, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(24199, 0, 31, 23575, 30,0,0,0,0,0,0,0,0,0,0,0,'search for 23575'),
(24199, 1, 15, 43399, 0, 23575, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');
