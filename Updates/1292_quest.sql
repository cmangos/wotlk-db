-- quest is rewarded using spells and not with this outdated mechanic
UPDATE quest_template SET ReqSpellCast1=0,ReqSpellCast2=0,ReqSpellCast3=0 WHERE entry IN(10720);
