-- Wrong Spell (Shadow Resistance (Racial Passive)) removed from Draenei Death Knight 
-- 59221 - SPELLFAMILY_WARRIOR
-- 59539 - SPELLFAMILY_DEATHKNIGHT - correct
DELETE FROM playercreateinfo_spell WHERE race = 11 AND class = 6 AND Spell = 59221;
