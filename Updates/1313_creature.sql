-- searing infernal, immune to fire, immune to fear
UPDATE creature_template SET SchoolImmuneMask=4,ResistanceFire=0,MechanicImmuneMask=16 WHERE entry IN(6073);
