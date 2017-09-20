-- Call of Fire
-- prevq 9462 not req. (player of can start from 9462 in Exodar) 
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 9464;

-- q.9625 'Elekks Are Serious Business'
-- misiing detailemotes added
UPDATE quest_template SET DetailsEmote1 = 5, DetailsEmote2 = 1, DetailsEmote3 = 1, DetailsEmoteDelay2 = 2000, DetailsEmoteDelay3 = 5000 WHERE entry = 9625;

-- Farii
-- position corrected
UPDATE creature SET position_x = -3780.448, position_y = -11540.6, position_z = -134.644, orientation = 2.234021 WHERE guid = 82941;
