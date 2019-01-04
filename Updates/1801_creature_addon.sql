-- creature_addon - updates
-- console errors related to guid relocation - fixed
-- they're already added in 571x range
DELETE FROM creature_addon WHERE guid = 116177;
DELETE FROM creature_addon WHERE guid BETWEEN 137020 AND 137024;
DELETE FROM creature_addon WHERE guid BETWEEN 137600 AND 137610;
DELETE FROM creature_addon WHERE guid = 138014;
DELETE FROM creature_addon WHERE guid = 138035;
