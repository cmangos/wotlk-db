-- zeppelinMasters must be ACTIVe to transports work correctly
UPDATE creature_template SET ExtraFlags = ExtraFlags | 4096 WHERE entry IN (23823,26537,26538,26539,26540,34765,34766);
