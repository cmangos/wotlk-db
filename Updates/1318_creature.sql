-- Nightbane immune to interrupt and silence
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(33554432+256) WHERE entry=17225;
