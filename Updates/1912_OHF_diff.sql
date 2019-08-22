-- Resolve DBScript Diff for Old Hillsbrad Foothills

-- Delete dbscripts_on_creature_movement replaced by generic one
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1876401,1876501);

