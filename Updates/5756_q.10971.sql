-- q.10971 'Ethereum Secrets' - Fix
-- fixing despawning issue. (quest handled via sd2)
DELETE FROM dbscripts_on_go_template_use WHERE Id IN (184418,184419,184420,184421,184422,184424);
