-- Added script for Gordok Ogre Suit event in Dire Maul

-- -------------------------------------------
-- Captain Kromcrush
-- -------------------------------------------

-- Added specific condition for wearing Ogre Suit
DELETE FROM conditions WHERE condition_entry IN (4928);
INSERT INTO conditions VALUES
(4928, 1, 22736, 0, 'Has aura 22736'); -- (!!!classic-db 928 / tbc-db 750!!!) Gordok Ogre Suit
-- (3159, 1, 22799, 0, 'Player Has Aura: 22799, EffectIndex: 0'); -- 976
-- (3160, -3, 3159, 0, 'NOT (Player Has Aura: 22799, EffectIndex: 0)'), -- 977
-- (3161, 33, 7, 0, 'Source of Condition''s Last Waypoint == 7'), -- 978
-- (3162, -1, 3159, 3161, '(Player Has Aura: 22799, EffectIndex: 0 AND Source of Condition''s Last Waypoint == 7)'), -- 979

-- Made quest 1317 a 7703 (Unfinished Gordok Business) only available when player has King of the Gordok aura
UPDATE quest_template SET RequiredCondition=976 WHERE entry IN (1318, 7703);

-- Added conditions to make gossip related to King of the Gordok only display when aura is present
UPDATE gossip_menu SET condition_id=976 WHERE entry=5739 AND text_id=6914;
UPDATE gossip_menu_option SET condition_id=976 WHERE menu_id=5739 AND id=1;

-- Added missing gossip menus and options for Ogre Suit event
DELETE FROM gossip_menu WHERE entry=5738 OR (entry=5739 AND text_id=6913);
INSERT INTO gossip_menu VALUES
(5738, 6915, 0, 0),
(5739, 6913, 0, 4928);

DELETE FROM gossip_menu_option WHERE menu_id=5738 OR (menu_id=5739 AND id=0);
INSERT INTO gossip_menu_option VALUES
(5739, 0, 0, 'Um, I\'m taking some prisoners we found outside before the king for punishment.', 1, 1, 5738, 0, 0, 0, 0, '', 4928),
(5738, 0, 0, 'Er... that\'s how I found them.  I wanted to show the king that they were a threat!  Say Captain... I overheard Guard Fengus calling you a fat, useless gnoll lover!', 1, 1, -1, 0, 573801, 0, 0, '', 0);

