-- Fiendish Portal
-- should have UNIT_FLAG_PASSIVE and UNIT_FLAG_OOC_NOT_ATTACKABLE according to sniff
UPDATE creature_template SET UnitFlags=UnitFlags|512|256 WHERE entry=17265;
