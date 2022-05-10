/*
Table `npc_gossip` have nonexistent creature (GUID: 91117) entry, ignore. 
Table `npc_gossip` have nonexistent creature (GUID: 91118) entry, ignore. 
Table `npc_gossip` have nonexistent creature (GUID: 91750) entry, ignore.
*/
DELETE FROM npc_gossip WHERE npc_guid IN (91117,91118,91750);
