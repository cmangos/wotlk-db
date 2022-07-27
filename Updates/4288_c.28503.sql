-- Overlord Drakuru 28503 
-- quests 'Reunited' 12663 & 'Dark Horizon' 12664
-- only one can be obtained - depend if player finished q.12238 or NOT
UPDATE quest_template SET RequiredCondition = 60 WHERE entry = 12663;
UPDATE quest_template SET RequiredCondition = 59 WHERE entry = 12664;
-- also options req conditions
UPDATE gossip_menu_option SET condition_id=20424 WHERE menu_id=9731 AND id=4; -- 12710 taken and completed
UPDATE gossip_menu_option SET action_script_id = 973101, condition_id=99 WHERE menu_id=9731 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=9731 AND id=6; -- fake
UPDATE dbscripts_on_gossip SET id = 973101 WHERE id = 9731;
DELETE FROM conditions WHERE condition_entry = 20424;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, value4, flags, comments) VALUES
(20424, 9, 12710, 2, 0, 0, 0, '12710 taken and completed');
DELETE FROM npc_text WHERE id IN (13324,13325,13348,13422);
DELETE FROM npc_text_broadcast_text WHERE Id IN (13324,13325,13348,13422);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(13324, 0, 28644),
(13325, 0, 28645),
(13348, 0, 28801),
(13422, 0, 29181);
