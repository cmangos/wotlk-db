-- Lou the Cabin Boy
-- Req for vehicle to swim in water
UPDATE creature_template SET ExtraFlags = 16384 WHERE entry = 27923;
UPDATE creature_movement_template SET position_z = -0.015943 WHERE entry = 27923; -- corrected value from .dbc taxi
 