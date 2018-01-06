-- give proper rep reward normal 12 up to honored, hc 15
UPDATE creature_onkill_reputation SET RewOnKillRepValue1=12, MaxStanding1=5 WHERE creature_id=18797;
UPDATE creature_onkill_reputation SET RewOnKillRepValue1=15 WHERE creature_id=20662;
