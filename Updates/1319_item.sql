-- remove mote of shadow drop from incandescent fel spark
DELETE FROM creature_loot_template WHERE entry IN(22323) AND item IN(22577);
