-- Administer Antidote - quest should complete on dreadtusk kill not on spellcast of Administer Antidote
UPDATE quest_template SET ReqSpellCast1=0,ReqCreatureOrGOId1=16992 WHERE entry IN(10255);
