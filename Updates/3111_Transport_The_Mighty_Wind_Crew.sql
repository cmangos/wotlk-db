-- Transport 'The Mighty Wind'
-- Durotar <--> Borean Tundra
SET @CGUID := 534539;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+10;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
-- Zeppelin Controls 25075
(@CGUID+0,25075,613,0,1,0,0,9.44542,-7.849475,-16.60061,0.05235988,300,300,0,0,0,0,0),
-- Crewman Shubbscoop 31720
(@CGUID+1,31720,613,0,1,0,0,-16.56853,-5.083331,-15.94212,1.989675,300,300,0,0,0,0,0),
-- Crewman Barrowswizzle 31723
(@CGUID+2,31723,613,0,1,0,0,-10.75516,-12.81286,-16.77452,4.537856,300,300,0,0,0,0,0),
-- Crewman Paltertop 31724
(@CGUID+3,31724,613,0,1,0,0,5.77627,-2.004689,-17.72185,1.64061,300,300,0,0,0,0,0),
-- Sky-Captain LaFontaine 31725
(@CGUID+4,31725,613,0,1,0,0,10.69841,-7.821921,-16.60061,3.281219,300,300,0,0,0,0,0),
-- Grunt Gritch 31726
(@CGUID+5,31726,613,0,1,0,0,-3.453068,-13.78959,-17.61107,1.43117,300,300,0,0,0,0,0),
-- Grunt Grikee 31727
(@CGUID+6,31727,613,0,1,0,0,-3.383076,-1.913925,-17.6198,4.729842,300,300,0,0,0,0,0);
