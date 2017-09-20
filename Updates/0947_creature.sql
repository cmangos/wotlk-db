-- Marsh Caribou
-- missing link added
DELETE FROM creature_linking WHERE master_guid = 132656;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(133079, 132656, 1+512),
(133062, 132656, 1+512);
