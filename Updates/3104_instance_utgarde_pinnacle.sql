
-- Utgarde pinnalce

-- Gauntlet script targets
DELETE FROM spell_script_target WHERE entry = 49308;
INSERT INTO spell_script_target VALUES
(49308,1,28351,0);

-- Fix gauntlet waypoints
DELETE FROM creature_movement_template WHERE entry IN (26690,26691,26692);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation) VALUES
(26690,1,477.580,-484.558,104.738,4.759),
(26690,2,478.309,-511.049,104.724,3.180),
(26690,3,311.576,-509.201,104.407,3.180),
(26691,1,477.580,-484.558,104.738,4.759),
(26691,2,478.309,-511.049,104.724,3.180),
(26691,3,311.576,-509.201,104.407,3.180),
(26692,1,477.580,-484.558,104.738,4.759),
(26692,2,478.309,-511.049,104.724,3.180),
(26692,3,311.576,-509.201,104.407,3.180);
