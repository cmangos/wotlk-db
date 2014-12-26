-- q.12711 'Abandoned Mail'
-- only template.. core still needed to send this mail to player after q. completed. 
DELETE FROM mail_loot_template WHERE entry = 236;
INSERT INTO mail_loot_template VALUES (236, 39317, 100, 0, 1, 1, 0);
