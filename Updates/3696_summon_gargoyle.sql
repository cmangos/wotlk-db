UPDATE creature_template SET CreatureTypeFlags=12288,HealthMultiplier=1,Expansion=2,MaxLevel=80 WHERE entry IN(27829);
UPDATE creature_template SET SpellList=2782901 WHERE entry IN(27829);
REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2782901, 'DK - Gargoyle', 0, 75);
REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2782901, 0, 51963, 2, 1, 0, 100, 1, 0, 0,0, 0, 'DK - Gargoyle - Gargoyle Strike on Current');


