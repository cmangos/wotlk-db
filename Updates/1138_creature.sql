-- make evergrove druid not invisible
UPDATE creature_template SET ExtraFlags= ExtraFlags&~128, MovementType = 0 WHERE entry = 22423;
