-- Update data and add missing spawns of 4 invisible triggers in Blade's Edge Mountains (all spawns were missing)
UPDATE creature_template SET SpeedWalk=2.5/2.5, SpeedRun=8/7, Minlevel=1, Maxlevel=1, InhabitType=4, UnitFlags=33555200, MovementType=0 WHERE entry=20003; -- Blade's Edge Kneel Target 01
UPDATE creature_template SET SpeedWalk=2.5/2.5, SpeedRun=8/7, Minlevel=1, Maxlevel=1, InhabitType=4, UnitFlags=33555200, MovementType=0 WHERE entry=20023; -- Blade's Edge Kneel Target 02
UPDATE creature_template SET SpeedWalk=2.5/2.5, SpeedRun=8/7, Minlevel=1, Maxlevel=1, InhabitType=4, UnitFlags=33555200, MovementType=0 WHERE entry=20024; -- Blade's Edge Kneel Target 03
UPDATE creature_template SET SpeedWalk=2.5/2.5, SpeedRun=8/7, Minlevel=1, Maxlevel=1, InhabitType=4, UnitFlags=33555200, MovementType=0 WHERE entry=20093; -- Blade's Edge - Arakkoa Spell Origin
