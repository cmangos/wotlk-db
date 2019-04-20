-- *****
-- Various instance script fixes
-- *****

-- Violet Hold - boss replacements need to have immunity flags
UPDATE creature_template SET UnitFlags=UnitFlags|768 WHERE entry IN (32226, 32228, 32230, 32231, 32234, 32235, 32237, 32550, 32549, 32555, 32552, 32554, 32551, 32553);

-- Update replacement bosses; they need to have exactly the same stats as the main boss
-- Arakkoa Windwalker
UPDATE creature_template SET Faction=16,MinLevel=77,MaxLevel=77,MinLevelHealth=136548,MaxLevelHealth=136548,MinLevelMana=74500,MaxLevelMana=74500,DamageMultiplier=7.5,
    MinMeleeDmg=367,MaxMeleeDmg=519,MinRangedDmg=311,MaxRangedDmg=463,MeleeAttackPower=452,RangedAttackPower=62,SpeedWalk=1.6,SpeedRun=1.42857,Armor=8803,MechanicImmuneMask=617299839 WHERE entry=32226;
UPDATE creature_template SET Faction=16,MinLevel=82,MaxLevel=82,MinLevelHealth=431392,MaxLevelHealth=431392,MinLevelMana=83380,MaxLevelMana=83380,DamageMultiplier=13,
    MinMeleeDmg=463,MaxMeleeDmg=640,MinRangedDmg=311,MaxRangedDmg=360,MeleeAttackPower=726,RangedAttackPower=91,SpeedWalk=1.6,SpeedRun=1.42857,Armor=10253,MechanicImmuneMask=617299839 WHERE entry=32550;
-- Arakkoa Talon Guard
UPDATE creature_template SET Faction=16,MinLevel=76,MaxLevel=76,MinLevelHealth=44004,MaxLevelHealth=44004,MinLevelMana=0,MaxLevelMana=0,DamageMultiplier=7.5,
    MinMeleeDmg=356,MaxMeleeDmg=503,MinRangedDmg=305,MaxRangedDmg=452,MeleeAttackPower=432,RangedAttackPower=74,SpeedWalk=1.6,SpeedRun=1.42857,Armor=8520,MechanicImmuneMask=0 WHERE entry=32228;
UPDATE creature_template SET Faction=16,MinLevel=82,MaxLevel=82,MinLevelHealth=63000,MaxLevelHealth=63000,MinLevelMana=0,MaxLevelMana=0,DamageMultiplier=13,
    MinMeleeDmg=422,MaxMeleeDmg=586,MinRangedDmg=345,MaxRangedDmg=509,MeleeAttackPower=642,RangedAttackPower=103,SpeedWalk=1.6,SpeedRun=1.42857,Armor=9729,MechanicImmuneMask=0 WHERE entry=32549;
-- Chaos Watcher
UPDATE creature_template SET Faction=16,MinLevel=77,MaxLevel=77,MinLevelHealth=227580,MaxLevelHealth=227580,MinLevelMana=0,MaxLevelMana=0,DamageMultiplier=7.5,
    MinMeleeDmg=371,MaxMeleeDmg=522,MinRangedDmg=314,MaxRangedDmg=466,MeleeAttackPower=478,RangedAttackPower=81,SpeedWalk=1.6,SpeedRun=1.71429,Armor=8822,MechanicImmuneMask=617299839 WHERE entry=32235;
UPDATE creature_template SET Faction=16,MinLevel=82,MaxLevel=82,MinLevelHealth=431392,MaxLevelHealth=431392,MinLevelMana=0,MaxLevelMana=0,DamageMultiplier=13,
    MinMeleeDmg=488,MaxMeleeDmg=642,MinRangedDmg=363,MaxRangedDmg=521,MeleeAttackPower=782,RangedAttackPower=121,SpeedWalk=1.6,SpeedRun=1.71429,Armor=10356,MechanicImmuneMask=617299839 WHERE entry=32551;
-- Void Lord
UPDATE creature_template SET Faction=16,MinLevel=77,MaxLevel=77,MinLevelHealth=227580,MaxLevelHealth=227580,MinLevelMana=0,MaxLevelMana=0,DamageMultiplier=7.5,
    MinMeleeDmg=371,MaxMeleeDmg=522,MinRangedDmg=314,MaxRangedDmg=466,MeleeAttackPower=478,RangedAttackPower=81,SpeedWalk=1.6,SpeedRun=1.71429,Armor=8822,MechanicImmuneMask=617299839 WHERE entry=32230;
UPDATE creature_template SET Faction=16,MinLevel=82,MaxLevel=82,MinLevelHealth=431392,MaxLevelHealth=431392,MinLevelMana=0,MaxLevelMana=0,DamageMultiplier=13,
    MinMeleeDmg=488,MaxMeleeDmg=642,MinRangedDmg=363,MaxRangedDmg=521,MeleeAttackPower=782,RangedAttackPower=121,SpeedWalk=1.6,SpeedRun=1.71429,Armor=10356,MechanicImmuneMask=617299839 WHERE entry=32555;
-- Ethereal
UPDATE creature_template SET Faction=16,MinLevel=77,MaxLevel=77,MinLevelHealth=227580,MaxLevelHealth=227580,MinLevelMana=0,MaxLevelMana=0,DamageMultiplier=7.5,
    MinMeleeDmg=371,MaxMeleeDmg=522,MinRangedDmg=314,MaxRangedDmg=466,MeleeAttackPower=478,RangedAttackPower=81,SpeedWalk=1.6,SpeedRun=1.71429,Armor=8822,MechanicImmuneMask=617299839 WHERE entry=32231;
UPDATE creature_template SET Faction=16,MinLevel=82,MaxLevel=82,MinLevelHealth=431392,MaxLevelHealth=431392,MinLevelMana=0,MaxLevelMana=0,DamageMultiplier=13,
    MinMeleeDmg=488,MaxMeleeDmg=642,MinRangedDmg=363,MaxRangedDmg=521,MeleeAttackPower=782,RangedAttackPower=121,SpeedWalk=1.6,SpeedRun=1.71429,Armor=10356,MechanicImmuneMask=617299839 WHERE entry=32552;
-- Water Revenant
UPDATE creature_template SET Faction=16,MinLevel=77,MaxLevel=77,MinLevelHealth=227580,MaxLevelHealth=227580,MinLevelMana=69658,MaxLevelMana=69658,DamageMultiplier=7.5,
    MinMeleeDmg=367,MaxMeleeDmg=519,MinRangedDmg=311,MaxRangedDmg=463,MeleeAttackPower=452,RangedAttackPower=62,SpeedWalk=1.6,SpeedRun=1.71429,Armor=8803,MechanicImmuneMask=617299839 WHERE entry=32234;
UPDATE creature_template SET Faction=16,MinLevel=82,MaxLevel=82,MinLevelHealth=431392,MaxLevelHealth=431392,MinLevelMana=77960,MaxLevelMana=77960,DamageMultiplier=13,
    MinMeleeDmg=463,MaxMeleeDmg=640,MinRangedDmg=360,MaxRangedDmg=520,MeleeAttackPower=726,RangedAttackPower=91,SpeedWalk=1.6,SpeedRun=1.71429,Armor=10253,MechanicImmuneMask=617299839 WHERE entry=32554;
-- Lava Hound
UPDATE creature_template SET Faction=16,MinLevel=77,MaxLevel=77,MinLevelHealth=227580,MaxLevelHealth=227580,MinLevelMana=0,MaxLevelMana=0,DamageMultiplier=7.5,
    MinMeleeDmg=371,MaxMeleeDmg=522,MinRangedDmg=314,MaxRangedDmg=466,MeleeAttackPower=478,RangedAttackPower=81,SpeedWalk=1.6,SpeedRun=1.71429,Armor=8822,MechanicImmuneMask=617299839 WHERE entry=32237;
UPDATE creature_template SET Faction=16,MinLevel=82,MaxLevel=82,MinLevelHealth=431392,MaxLevelHealth=431392,MinLevelMana=0,MaxLevelMana=0,DamageMultiplier=13,
    MinMeleeDmg=488,MaxMeleeDmg=642,MinRangedDmg=363,MaxRangedDmg=521,MeleeAttackPower=782,RangedAttackPower=121,SpeedWalk=1.6,SpeedRun=1.71429,Armor=10356,MechanicImmuneMask=617299839 WHERE entry=32553;


-- Halls of Lightning - fix Brittle golem
UPDATE creature_template SET Faction=16,MinLevel=80,MaxLevel=80,UnitFlags=UnitFlags|33587200,MaxLevelHealth=12600 WHERE entry=28681;


-- Gundrak - fix Rhino riders
UPDATE creature SET MovementType=2, spawndist=0 WHERE id IN (29982,29836);

-- Accessories removed; npc spawned manually and boarded the vehicle by script
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (29931,29838);

-- Workaround for vehicle boarding
DELETE FROM creature_movement WHERE id IN (127002,127003,127004,127107,127108,127109);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUE
-- Three trolls on one rhino
(127002, 0, 1866.69, 742.798, 141.193, 3.14159, 0, 2998201,''),
(127003, 0, 1864.14, 742.741, 139.512, 3.14159, 0, 2998201,''),
(127004, 0, 1862.14, 742.741, 138.012, 3.14159, 0, 2998201,''),
-- Three rhinos, each with one troll
(127107, 0, 1882.21, 757.363, 140.96, 3.54302, 0, 2983601,''),
(127108, 0, 1889.19, 742.839, 140.976, 3.10669, 0, 2983601,''),
(127109, 0, 1882.84, 727.995, 140.986, 2.79253, 0, 2983601,'');

DELETE FROM dbscripts_on_creature_movement WHERE id IN (2998201,2983601);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, comments) VALUES
(2998201,5,15,46598,0,29931,10,1,'Drakkari Battle Rider cast Ride Vehicle Hardcoded on Drakkari Rhino'),
(2983601,5,15,46598,0,29838,10,1,'Drakkari Battle Rider cast Ride Vehicle Hardcoded on Drakkari Rhino');


-- Azjol-Nerub - spawn the invisible triggers with proper spawn mask
UPDATE creature SET spawnMask=3 WHERE id=22515 AND map=601;


-- DTK - Novos creature linking
DELETE FROM creature_linking_template WHERE entry IN (26627,27597,27598,27600,32786);
INSERT INTO creature_linking_template VALUES
(26627,600,26631,4096,0),
(27597,600,26631,4096,0),
(27598,600,26631,4096,0),
(27600,600,26631,4096,0),
(32786,600,26631,4096,0);
