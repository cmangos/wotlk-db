-- Ebon Hold: Chapter II, Skybox
-- aura present for whole Chapter II and readded after Chapter III started
-- must finish before Chapter IV (Epilogue)
UPDATE spell_area SET quest_start = 0, quest_end = 0, condition_id = 20204 WHERE spell = 52598;
DELETE FROM conditions WHERE condition_entry BETWEEN 20196 AND 20204;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
-- 1st set
(20196,9,12706,0,0,0,0),
(20197,8,12706,0,0,0,0),
(20198,-2,20197,20196,0,0,0),
(20199,8,12757,0,0,0,1), -- not rewarded yet
(20200,-1,20199,20198,0,0,0),
-- 2nd set
(20201,1,53107,0,0,0,0), -- Player must have this aura
(20202,8,12779,0,0,0,1), -- not rewarded yet
(20203,-1,20202,20201,0,0,0),
-- 1st or 2nd
(20204,-2,20203,20200,0,0,0);
