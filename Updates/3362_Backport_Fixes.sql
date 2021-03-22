-- missing relays added
-- TBC range used
DELETE FROM dbscripts_on_relay WHERE id IN (19990,19991,19992);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(19990,0,42,0,0,0,0,0,0,12421,0,0,0,0,0,0,0,'Cabal Ritualist - Equip Staff 1'),
(19991,0,42,0,0,0,0,0,0,14618,0,0,0,0,0,0,0,'Cabal Ritualist - Equip Staff 2'),
(19992,0,42,0,0,0,0,0,0,13718,0,0,0,0,0,0,0,'Cabal Ritualist - Equip Sword');

-- missing c_t_s added
DELETE FROM creature_template_spells WHERE entry = 18794;
INSERT INTO creature_template_spells (entry,setId,spell1,spell2,spell3,spell4,spell5,spell6) VALUES
(18794,0,0,0,0,0,12540,0),
(18794,1,0,0,0,9574,20795,0),
(18794,2,0,0,0,15497,15532,0),
(18794,3,0,0,0,33487,33832,0);

-- belong to another pool now
DELETE FROM pool_gameobject WHERE guid IN (1332,86243);

-- clean up
DELETE FROM npc_gossip WHERE npc_guid IN (11001,11002,11003,11004);
-- redone using TBC guids
DELETE FROM `creature_movement` WHERE id IN (97066,97020,97021,97067,97068,97069);
DELETE FROM creature_addon WHERE guid IN (97064);
