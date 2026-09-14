-- q.11310 'Warning: Some Assembly Required' - fix
-- c.23575 Mindless Abomination
UPDATE creature_template SET unitFlags = 0 WHERE entry = 23575;
