UPDATE creature_template SET MinLevel=80,MaxLevel=80,HealthMultiplier=0.301265,UnitFlags=UnitFlags|2 WHERE entry IN(24207);

UPDATE creature_template SET SpellList=2420701 WHERE entry IN(24207);
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2420701, 'DK - Army of the dead Ghoul', 0, 0);
REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2420701, 0, 47468, 0, 1, 0, 100, 1, 3000, 5000,4000, 6000, 'DK - Army of the dead Ghoul - Claw on Current');




