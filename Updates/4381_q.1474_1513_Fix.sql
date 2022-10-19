-- q.1474 'The Binding'
-- Spell entry 9223, effect 1 has EffectImplicitTargetA/EffectImplicitTargetB = TARGET_GAMEOBJECT_SCRIPT_NEAR_CASTER, but gameobject are not defined in `spell_script_target`
DELETE FROM spell_script_target WHERE entry IN (9223);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(9223,0,37097,0);
-- q.1513 'The Binding'
-- Spell entry 9224, effect 1 has EffectImplicitTargetA/EffectImplicitTargetB = TARGET_GAMEOBJECT_SCRIPT_NEAR_CASTER, but gameobject are not defined in `spell_script_target`
DELETE FROM spell_script_target WHERE entry IN (9224);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(9224,0,105576,0);
