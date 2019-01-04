-- q.11895 'Master the Storm'

-- fix spellclick
-- somehow using conditions wont activate npc (relog req.)
DELETE FROM npc_spellclick_spells WHERE npc_entry = 26048;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(26048,0,11895,1,11895,0,0);
DELETE FROM conditions WHERE condition_entry = 1228;

-- ELM General Purpose Bunny
-- missing added - WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid = 5710302;
DELETE FROM creature_movement WHERE id = 5710302;
DELETE FROM game_event_creature WHERE guid = 5710302;
DELETE FROM game_event_creature_data WHERE guid = 5710302;
DELETE FROM creature_battleground WHERE guid = 5710302;
DELETE FROM creature_linking WHERE guid = 5710302
OR master_guid = 5710302;
DELETE FROM creature WHERE guid = 5710302;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(5710302,23837,571,1,1,0,0,3403.87,4133.03,18.0545,5.67232,300,300,0,0,42,0,0,0);

-- Storm Tempest
DELETE FROM dbscripts_on_creature_death WHERE id = 26045;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(26045,0,15,46424,0,0,0,0,6,0,0,0,0,0,0,0,0,0);
