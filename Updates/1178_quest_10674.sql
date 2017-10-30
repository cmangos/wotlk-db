-- q.10674 tweaks
UPDATE gameobject_template SET flags=flags|16 WHERE entry=185011; -- make GO not usable

UPDATE creature_template SET MovementType=0,UnitFlags=512 WHERE entry=21760;
UPDATE creature_template SET UnitFlags=0 WHERe entry=21796;

DELETE FROM creature_template_addon WHERE entry=21760;
INSERT INTO creature_template_addon(entry,auras) VALUES(21760,'37418');
