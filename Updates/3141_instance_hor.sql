
-- Make Wall target active
UPDATE creature_template SET ExtraFlags=ExtraFlags|4096 WHERE entry=37014;