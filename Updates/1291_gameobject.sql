-- Waterlogged Letter (2656) should only contain Waterlogged Envelope
DELETE FROM gameobject_loot_template WHERE entry=2117 AND item != 4433;
-- Decrease respawn time of Waterlogged Letter (was 2 hours)
UPDATE gameobject SET spawntimesecsmin=300, spawntimesecsmax=300 WHERE id=2656;
