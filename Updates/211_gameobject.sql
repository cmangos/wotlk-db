-- DK zone - Phases: more objects corrected

-- Gameobjects
-- duplicates removed
DELETE FROM gameobject WHERE guid IN (66336,66508,66521,66350,66491,66320,66337,66509,66484,66314,66327,66499,66505,66333);

-- Phase: 1+4+64+128
UPDATE gameobject SET phaseMask = 197 WHERE guid IN (66021,66039,65983,66023,65971,66006,66016);
