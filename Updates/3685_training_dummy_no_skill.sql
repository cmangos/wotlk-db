UPDATE creature_template SET ExtraFlags=ExtraFlags|0x01000000 WHERE entry IN(31144,31146,32666,32667,30527,31143);
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x01000000 WHERE entry IN(32541,32542,32543,32545,32546);

-- Blasted Lands Npcs (Servant of Sevine, Allistarj, Grol, Razelikh) dont give weapon skillup in wotlk anymore (the bossmobs do though)
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x01000000 WHERE entry IN(7671,7670,7669,7668);

