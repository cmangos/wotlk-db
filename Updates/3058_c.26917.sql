-- Alexstrasza the Life-Binder 26917
-- missing gossip added
DELETE FROM npc_gossip WHERE npc_guid = 516031;
DELETE FROM gossip_menu WHERE entry = 9253;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9253, 12566, 0, 179), -- temp ... will be corrected later
(9253, 12591, 0, 179), -- temp ... will be corrected later
(9253, 12592, 0, 179), -- temp ... will be corrected later
(9253, 14138, 0, 0); -- default
UPDATE gossip_menu_option SET condition_id = 179 WHERE menu_id = 9253; -- temp ... will be corrected later
/* not sure yet when these are used
9253 12566 Focus your mind, mortal. This is the front line of a war unlike any you've witnessed.$b$bYou'll need full command of your faculties if you are to be of any use.
9253 12591 We're making progress, $r, but far too slowly.
9253 12592 We must succceed! Azeroth's fate lies in the balance....
*/
