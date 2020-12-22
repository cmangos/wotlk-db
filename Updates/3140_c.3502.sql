-- Ratchet Bruiser 3502
-- no gossip flag in 3.3.5 sniffs
UPDATE creature_template SET NpcFlags = 0 WHERE Entry = 3502;
