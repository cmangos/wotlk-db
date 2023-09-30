-- Frenzyheart/Oracle Tribe Updates

-- See all invisible foR both Tribes
DELETE FROM spell_area WHERE spell = 52217;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(52217,4288,0,0,0,20629,0,0,2,1), -- oracles
(52217,4306,0,0,0,20629,0,0,2,1), -- oracles
(52217,4287,0,0,0,20576,0,0,2,1); -- frenzyheart

-- Rejek 29043
UPDATE creature_template SET GossipMenuId=9766 WHERE entry IN (29043);
DELETE FROM gossip_menu WHERE entry IN (9766);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9766, 13438, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(13438);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(13438,1,29414);
DELETE FROM npc_text WHERE id=13438;

-- Vekgar 29146
UPDATE creature_template SET GossipMenuId=9774 WHERE entry IN (29146);
DELETE FROM gossip_menu WHERE entry IN (9774);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9774, 13451, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(13451);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(13451,1,29486);
DELETE FROM npc_text WHERE id=13451;

-- Shaman Jakjek 28106
UPDATE creature_template SET GossipMenuId=9745 WHERE entry IN (28106);
DELETE FROM gossip_menu WHERE entry IN (9745);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9745, 13364, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(13364);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(13364,1,28889);
DELETE FROM npc_text WHERE id=13364;
