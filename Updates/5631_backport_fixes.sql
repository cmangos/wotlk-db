-- Table `npc_text_broadcast_text` has record in `npc_text` (ID 8447) as well. Overwriting.
-- Table `npc_text_broadcast_text` has record in `npc_text` (ID 8492) as well. Overwriting.
-- Table `npc_text_broadcast_text` has record in `npc_text` (ID 9005) as well. Overwriting.
-- Table `npc_text_broadcast_text` has record in `npc_text` (ID 8617) as well. Overwriting.
DELETE FROM npc_text WHERE id IN (8447,8492,9005,8617); 
-- Table `npc_vendor_template` has vendor template 512 not used by any vendors 
-- Table `npc_vendor_template` has vendor template 513 not used by any vendors
UPDATE creature_template SET VendorTemplateId = 512 WHERE Entry IN (13216,13217);
UPDATE creature_template SET VendorTemplateId = 513 WHERE Entry IN (13218,13219);
-- Table creature_movement contain path for creature guid 55584, but this creature guid does not exist. Skipping.
DELETE FROM creature_movement WHERE Id = 55584;
-- Table `dbscripts_on_creature_movement` contain unused script, id 1378.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1849301.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1855602.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1855603.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1855604.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1855605.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1855606.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1855607.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1855608.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1855609.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1855610.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1855611.
-- Table `dbscripts_on_creature_movement` contain unused script, id 1855612.
DELETE FROM dbscripts_on_creature_movement WHERE Id IN (1378,1849301,1855602,1855603,1855604,1855605,1855606,1855607,1855608,1855609,1855610,1855611,1855612);
-- Event 1879402 Action 3 references invalid dbscript_on_relay id 1879401
-- Event 1879403 Action 3 references invalid dbscript_on_relay id 1879402
-- Event 1879404 Action 2 references invalid dbscript_on_relay id 1879403
DELETE FROM dbscripts_on_relay WHERE id IN (1879401,1879402,1879403);
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1879401,0,0,42,0,0,0,0,0,0,12421,0,0,0,0,0,0,0,0,0,0,'Cabal Ritualist - Equip Staff 1'),
(1879402,0,0,42,0,0,0,0,0,0,14618,0,0,0,0,0,0,0,0,0,0,'Cabal Ritualist - Equip Staff 2'),
(1879403,0,0,42,0,0,0,0,0,0,13718,0,0,0,0,0,0,0,0,0,0,'Cabal Ritualist - Equip Sword');