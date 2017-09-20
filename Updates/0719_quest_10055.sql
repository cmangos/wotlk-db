-- make gameobject disappear after looting, quest 10055 Waste not Want not
UPDATE gameobject_template SET data3 = 0 WHERE entry IN (182797,182798,182936,182799); 
