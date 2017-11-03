-- Fix factions for Snake trap snakes
UPDATE creature_template SET FactionAlliance=1629 WHERE entry IN(19921,19833);

