-- Various updates for vehicles

-- fix spawn health
UPDATE creature SET curhealth=0 WHERE id = 28781;
UPDATE creature SET curhealth=0 WHERE id = 27894;
UPDATE creature SET curhealth=0 WHERE id = 34944;

-- fix factions for glaive throwers
UPDATE creature_template SET Faction = 1732 WHERE entry IN (34802, 35419);
UPDATE creature_template SET Faction = 1735 WHERE entry IN (35273, 35421);

-- fix unit flag for SotA vehicles for lvl 80
UPDATE creature_template SET UnitFlags = UnitFlags|33554432, ExtraFlags = ExtraFlags|4096 WHERE entry=32796;
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096 WHERE entry=32795;

-- some vehicles are not marked as siege weapons, so the regen stats attribute has to be used)
UPDATE creature_template SET RegenerateStats=0 WHERE entry IN (34802,35273,34775,34944,34935,34929,28781,36838,36839);
-- Also for heroic difficulty entries
UPDATE creature_template SET RegenerateStats=0 WHERE entry IN (32796,35419,35421,35415,35429,35427,35410);
