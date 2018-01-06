-- Sprok data fixes and gossip
UPDATE creature_template SET FactionAlliance=120,FactionHorde=120,GossipMenuId=12741,NpcFlags=1 WHERE entry=8320;

DELETE FROM gossip_menu WHERE entry=12741;
INSERT INTO gossip_menu VALUES
('12741', '17880', '0', '0');

DELETE FROM npc_text WHERE id IN(17880);
INSERT INTO npc_text VALUES
('17880', 'This teleporter will transport you to Grom''gol in Northern Stranglethorn.$B$BUsually.$B$BI mean, sometimes it''ll just disintegrate you, or reduce all your soft tissues into a greenish, foul-smelling mist, but mostly it''s safe!$B$B...mostly.', '', '0', '100', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
