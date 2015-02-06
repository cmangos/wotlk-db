-- r3046
UPDATE creature_template SET ScriptName='npc_darkness' WHERE entry=25879;
UPDATE creature_template SET ScriptName='npc_singularity' WHERE entry=25855;
UPDATE creature_template SET ScriptName='' WHERE entry=25782;

-- r3048
UPDATE creature_template SET ScriptName='npc_flame_breath_trigger' WHERE entry=28351;

-- r3050
UPDATE creature_template SET ScriptName='npc_dimensius' WHERE entry=19554;

-- r3051
UPDATE creature_template SET ScriptName='npc_glob_of_viscidus' WHERE entry=15667;

-- r3054
UPDATE creature_template SET ScriptName='npc_magister_aledis' WHERE entry=20159;

-- r3055
UPDATE creature_template SET ScriptName='npc_emily' WHERE entry=26588;

-- r3059
UPDATE creature_template SET ScriptName='npc_saronite_vapor' WHERE entry=33488;

-- r3060
UPDATE creature_template SET ScriptName='npc_arthas' WHERE entry=26499;

-- r3064
UPDATE creature_template SET ScriptName='npc_spell_dummy_crusader_strike' WHERE entry IN (28167,28169);

-- r3068
UPDATE instance_template SET ScriptName='instance_trial_of_the_champion' WHERE map=650;
UPDATE creature_template SET ScriptName='npc_toc_herald' WHERE entry IN (35004, 35005);

-- r3070
DELETE FROM scripted_areatrigger WHERE entry=3587;
INSERT INTO scripted_areatrigger VALUES
(3587,'at_ancient_leaf');

-- r3071
UPDATE gameobject_template SET ScriptName='go_fathom_stone' WHERE entry=177964;

-- r3075
UPDATE creature_template SET ScriptName='boss_champion_warrior' WHERE entry IN (34705,35572);
UPDATE creature_template SET ScriptName='boss_champion_mage' WHERE entry IN (34702,35569);
UPDATE creature_template SET ScriptName='boss_champion_shaman' WHERE entry IN (34701,35571);
UPDATE creature_template SET ScriptName='boss_champion_hunter' WHERE entry IN (34657,35570);
UPDATE creature_template SET ScriptName='boss_champion_rogue' WHERE entry IN (34703,35617);
UPDATE creature_template SET ScriptName='npc_champion_mount' WHERE entry IN (35644,36559,35637,35633,35768,34658,35636,35638,35635,35640,35641,35634);

-- r3091
UPDATE creature_template SET ScriptName='npc_trial_grand_champion' WHERE entry IN (35328,35331,35330,35332,35329,35314,35326,35325,35323,35327);

-- r3096
UPDATE instance_template SET ScriptName='instance_razorfen_downs' WHERE map=129;
DELETE FROM scripted_event_id WHERE id=3130;
INSERT INTO scripted_event_id VALUES (3130, 'event_go_tutenkash_gong');
