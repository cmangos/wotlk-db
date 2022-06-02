-- missing texts added
DELETE FROM `npc_text_broadcast_text` WHERE Id IN (8482,8483,8554,8593,8594);
INSERT INTO `npc_text_broadcast_text` (`Id`, `Prob0`, `Prob1`, `Prob2`, `Prob3`, `Prob4`, `Prob5`, `Prob6`, `Prob7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`) VALUES
('8482','1','0','0','0','0','0','0','0','12202','0','0','0','0','0','0','0'),
('8483','1','0','0','0','0','0','0','0','12204','0','0','0','0','0','0','0'),
('8554','1','0','0','0','0','0','0','0','12402','0','0','0','0','0','0','0'),
('8593','1','0','0','0','0','0','0','0','12474','0','0','0','0','0','0','0'),
('8594','1','0','0','0','0','0','0','0','12475','0','0','0','0','0','0','0');

-- Table `npc_vendor` has data for creature (Entry: 16786) without vendor flag, ignoring
UPDATE creature_template SET NpcFlags = 130 WHERE Entry = 16786;

-- Table `creature` have creature (GUID: 52033 Entry: 37964) with `MovementType`=0 (idle) have `spawndist`<>0, set to 0.
UPDATE creature SET MovementType =0, spawndist = 0 WHERE guid = 52033;
