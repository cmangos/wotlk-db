-- Use proper Totem Models for Horde Totems. 
DELETE FROM creature_model_race WHERE modelid IN (19071,19073,19074,19075); 
INSERT INTO creature_model_race (modelid,racemask,creature_entry,modelid_racial) VALUES  
(19071, 690, 0, 4590),
(19073, 690, 0, 4588),
(19074, 690, 0, 4589),
(19075, 690, 0, 4587);

