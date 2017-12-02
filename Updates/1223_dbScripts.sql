-- TBC fields corrected for WOTLK
-- UNIT_FIELD_FLAGS = (58-WoTLK) (46-TBC) 
UPDATE dbscripts_on_creature_death SET datalong = 58 WHERE command IN (4,5) AND datalong = 46; 
UPDATE dbscripts_on_creature_movement SET datalong = 58 WHERE command IN (4,5) AND datalong = 46;
UPDATE dbscripts_on_event SET datalong = 58 WHERE command IN (4,5) AND datalong = 46;
UPDATE dbscripts_on_go_use SET datalong = 58 WHERE command IN (4,5) AND datalong = 46;
UPDATE dbscripts_on_go_template_use SET datalong = 58 WHERE command IN (4,5) AND datalong = 46;
UPDATE dbscripts_on_gossip SET datalong = 58 WHERE command IN (4,5) AND datalong = 46;
UPDATE dbscripts_on_quest_end SET datalong = 58 WHERE command IN (4,5) AND datalong = 46;
UPDATE dbscripts_on_quest_start SET datalong = 58 WHERE command IN (4,5) AND datalong = 46;
UPDATE dbscripts_on_spell SET datalong = 58 WHERE command IN (4,5) AND datalong = 46;
UPDATE dbscripts_on_relay SET datalong = 58 WHERE command IN (4,5) AND datalong = 46;
