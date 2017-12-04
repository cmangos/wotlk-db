-- TBC fields corrected for WOTLK
-- UNIT_FIELD_FLAGS = (59-WoTLK) (46-TBC) 
UPDATE dbscripts_on_creature_death SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58); 
UPDATE dbscripts_on_creature_movement SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58); 
UPDATE dbscripts_on_event SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58); 
UPDATE dbscripts_on_go_use SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58); 
UPDATE dbscripts_on_go_template_use SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58); 
UPDATE dbscripts_on_gossip SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58); 
UPDATE dbscripts_on_quest_end SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58); 
UPDATE dbscripts_on_quest_start SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58); 
UPDATE dbscripts_on_spell SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58); 
UPDATE dbscripts_on_relay SET datalong = 59 WHERE command IN (2,4,5) AND datalong IN (46,58); 
