-- Torek's Assault
-- quest should possibly be ported from SD2 to dbscripts (npc_torek)
DELETE FROM creature_linking WHERE guid IN (32378,32380,32379);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(32378, 32373, 8192+512+128+2+1),
(32379, 32373, 8192+512+128+2+1),
(32380, 32373, 8192+512+128+2+1);
