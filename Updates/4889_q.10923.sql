-- q.10923 'Evil Draws Near' - fix
UPDATE quest_template SET SpecialFlags = 0, ReqSpellCast2 = 0 WHERE entry = 10923;
