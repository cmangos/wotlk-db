-- Devilsaur 6498
-- WotlkDB ONLY - need to free guid to sync with TBC (TDB guid used)
UPDATE creature set guid = 160670 WHERE guid = 21565;
UPDATE creature_movement set id = 160670 WHERE id = 21565;

-- Riznek 6495
-- missing added -- exists in TDB and Classic (same guid used). Still worth to check if wps are right for TDB & Classic
DELETE FROM creature_addon WHERE guid IN (21565);
DELETE FROM creature_movement WHERE id IN (21565);
DELETE FROM game_event_creature WHERE guid IN (21565);
DELETE FROM game_event_creature_data WHERE guid IN (21565);
DELETE FROM creature_battleground WHERE guid IN (21565);
DELETE FROM creature_linking WHERE guid IN (21565);
DELETE FROM creature where guid IN (21565);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(21565,6495,1,1,1,-6157.8613,-3917.6775,-58.996204,6.279,300,300,0,2);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 6495;
DELETE FROM creature_movement_template WHERE entry = 6495;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- waypoints corrected
(6495,1 ,-6157.8613,-3917.6775,-58.996204,100,10000,0),
(6495,2 ,-6183.7324,-3917.6758,-58.781975,100,0,0),
(6495,3 ,-6187.9785,-3936.4387,-58.625053,100,0,0),
(6495,4 ,-6199.4155,-3951.8706,-58.625053,100,0,0),
(6495,5 ,-6204.5225,-3955.7505,-58.625053,100,0,0),
(6495,6 ,-6210.6216,-3961.941,-58.625053 ,100,0,0),
(6495,7 ,-6209.6235,-3972.9622,-58.625034,100,0,0),
(6495,8 ,-6206.8066,-3982.4932,-58.625034,100,0,0),
(6495,9 ,-6206.8066,-3982.4932,-58.625034,100,0,0),
(6495,10,-6202.8516,-3991.9407,-58.625034,100,0,0),
(6495,11,-6245.983,-3997.02,-58.625034,100,10000,0),
(6495,12,-6201.7134,-3981.1985,-58.625034,100,0,0),
(6495,13,-6208.6953,-3966.7495,-58.625034,100,0,0),
(6495,14,-6209.497,-3958.7869,-58.625053 ,100,0,0),
(6495,15,-6199.3447,-3951.8486,-58.625053,100,0,0),
(6495,16,-6186.81,-3940.9854,-58.625053  ,100,0,0),
(6495,17,-6185.051,-3928.509,-58.656975  ,100,0,0),
(6495,18,-6183.9663,-3917.9463,-58.781975,100,0,0);