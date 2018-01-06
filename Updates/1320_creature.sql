-- make Lupos much rarer
UPDATE creature SET spawntimesecsmin = 28800, spawntimesecsmax = 28800 WHERE id IN(521); 
