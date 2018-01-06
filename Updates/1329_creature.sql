-- remove custom scale from entries
UPDATE creature_template SET Scale=0 WHERE entry IN(4324,10182);
