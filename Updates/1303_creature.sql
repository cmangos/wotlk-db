 -- remove invis to enable seeing visual
UPDATE creature_template SET ExtraFlags=ExtraFlags&~128 WHERE entry IN(15384); 
