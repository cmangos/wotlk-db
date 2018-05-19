-- correct flags for snake trap snakes
UPDATE creature_template SET UnitFlags=0x00008000 WHERE entry IN(19921,19833);
