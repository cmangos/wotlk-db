-- Apexis Guardians had no static spawns after patch 2.1
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 22275);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 22275);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 22275);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 22275);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 22275);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 22275) 
OR master_guid IN (SELECT guid FROM creature WHERE id = 22275);
DELETE FROM creature WHERE id = 22275;

-- Terrordar the Tormentor - removed after 2.1
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 22385);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 22385);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 22385);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 22385);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 22385);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 22385) 
OR master_guid IN (SELECT guid FROM creature WHERE id = 22385);
DELETE FROM creature WHERE id = 22385;

-- The Woodland Protector quest text fix
UPDATE `quest_template` SET `OfferRewardText`='Your service to the creatures of Shadowglen is worthy of reward, $N.$b$bYou confirmed my fears, however. If the grells have become tainted by the Fel Moss, one can only imagine what has become of the Gnarlpine tribe of furbolgs who once lived here.$b$bShould you find yourself in Dolanaar, able $C, seek out the knowledgeable druid, Athridas Bearmantle. He shares our concern for the well being of the forest.' WHERE `entry`=459;
