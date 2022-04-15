-- Fix faction and flags for creatures involved in quest To Serve Kum'isha
-- based on https://github.com/cmangos/classic-db/commit/e4913cc23d13cc7a86731baf41dafa8d24876565
-- and AnonXS comment
UPDATE creature_template SET MinLevel=60, MaxLevel=60, Faction=35, ExtraFlags=64 WHERE Entry =7364;
UPDATE creature_template SET MinLevel=40, MaxLevel=40, Faction=35, ExtraFlags=64 WHERE Entry =7365;
UPDATE creature_template SET MinLevel=1, MaxLevel=1, Faction=14, ExtraFlags=64 WHERE Entry =7409;
