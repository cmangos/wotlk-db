-- =======================================
-- Fix Terrorclaw Respawn Time (Quest NPC)
-- =======================================
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE id = 20477;
