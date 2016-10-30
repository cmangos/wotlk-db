-- q.11892 'The Assassination of Harold Lane'
DELETE FROM dbscripts_on_event WHERE id = 17302; 
INSERT INTO dbscripts_on_event VALUES 
(17302,1,10,25988,12000,0,0,0x08,1,0,0,0,3295.1,5646.41,52.6516,1.27236,'summon'),
(17302,1,10,25989,12000,0,0,0x08,1,0,0,0,3296.9,5642.64,52.6999,1.27236,'summon'),
(17302,1,10,25989,12000,0,0,0x08,1,0,0,0,3297.05,5645.42,52.8009,1.27236,'summon'),
(17302,1,10,25989,12000,0,0,0x08,1,0,0,0,3293.62,5643.99,52.2276,1.27236,'summon'),
(17302,1,10,25989,12000,0,0,0x08,1,0,0,0,3292.89,5647.54,52.7194,1.27236,'summon'),
(17302,1,10,25989,12000,0,0,0x08,1,0,0,0,3291.37,5644.77,52.0913,1.27236,'summon'),
(17302,1,10,25990,12000,0,0,0x08,1,0,0,0,3295.35,5646.84,52.7206,1.27236,'summon'),
(17302,1,10,25990,12000,0,0,0x08,1,0,0,0,3299.1,5646.58,53.0973,1.27236,'summon'),
(17302,1,10,25990,12000,0,0,0x08,1,0,0,0,3293.75,5650.01,53.1164,1.27236,'summon'),
(17302,3,37,0,0,25988,200,3,0,0,0,0,0,0,0,0,'Lets buddy find his target'),
(17302,8,3,0,0,25988,200,7,0,0,0,0,3304.7,5761.84,51.8281,100,'run to final point');
DELETE FROM creature_template_addon WHERE entry IN (25988,25989,25990);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25988, 0, 0, 1, 0, 0, 0, 46384),
(25989, 0, 0, 1, 0, 0, 0, 46384),
(25990, 0, 0, 1, 0, 0, 0, 46384);
DELETE FROM creature_linking_template WHERE entry IN (25989,25990);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(25989, 571, 25988, 512, 100),
(25990, 571, 25988, 512, 100);
-- correct target for spell 46385
DELETE FROM spell_script_target WHERE entry = 46385;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(46385, 1, 25804, 0);

-- Bear Trap (Harold Lane - abilities)
-- These objects are not static spawns
DELETE FROM gameobject WHERE guid IN (92635,92636,92637,92638);
DELETE FROM game_event_gameobject WHERE guid IN (92635,92636,92637,92638);
DELETE FROM gameobject_battleground WHERE guid IN (92635,92636,92637,92638);
