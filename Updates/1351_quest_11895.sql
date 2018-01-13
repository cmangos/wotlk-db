-- q.11895 'Master the Storm'

-- fix spellclick
-- somehow using conditions wont activate npc (relog req.)
DELETE FROM npc_spellclick_spells WHERE npc_entry = 26048;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(26048,0,11895,1,11895,0,0);
DELETE FROM conditions WHERE condition_entry = 1228;

-- ELM General Purpose Bunny
-- missing added - WoTLK free guids reused
DELETE FROM creature_addon WHERE guid = 54130;
DELETE FROM creature_movement WHERE id = 54130;
DELETE FROM game_event_creature WHERE guid = 54130;
DELETE FROM game_event_creature_data WHERE guid = 54130;
DELETE FROM creature_battleground WHERE guid = 54130;
DELETE FROM creature_linking WHERE guid = 54130
OR master_guid = 54130;
DELETE FROM creature WHERE guid = 54130;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(54130,23837,571,1,1,0,0,3403.87,4133.03,18.0545,5.67232,300,300,0,0,42,0,0,0);
