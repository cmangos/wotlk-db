-- Nightbane not tauntable
UPDATE creature_template SET ExtraFlags=ExtraFlags|256 WHERE entry=17225;
