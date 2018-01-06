-- Correct flags of some creatures in Lower City
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN(21411);
UPDATE creature_template SET UnitFlags=512 WHERE entry IN(19185);
UPDATE creature_template SET UnitFlags=768 WHERE entry IN(21434);
UPDATE creature_template SET UnitFlags=33024 WHERE entry IN(19170);
