-- q.11721 'Gammothra the Tormentor' - UPDATE

-- Respawntime corrected for Gammothra the Tormentor
UPDATE creature SET spawntimesecsmin = 90, spawntimesecsmax = 90 WHERE id = 25789;

-- Weakened Magnataur Huntress & Weakened Gammothra
-- size corrected
UPDATE creature_template SET Scale = 0.5 WHERE entry IN (25788,25790);
