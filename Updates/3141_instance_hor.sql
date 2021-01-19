
-- Make Wall target active
UPDATE creature_template SET ExtraFlags=ExtraFlags|4096 WHERE entry=37014;

-- Delete texts after migration to instance file
DELETE FROM dbscript_string WHERE entry BETWEEN 2000005824 AND 2000005866;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3722103,3722301,3758201);
