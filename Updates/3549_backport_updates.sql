-- missing wps added
-- Table `dbscripts_on_creature_movement` contain unused script, id 855301.
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (91940,91946,92235,92264);
DELETE FROM creature_movement WHERE id IN (91940,91946,92235,92264);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(91940,1,2814.52,-3757.79,122.507,3.35103,10000,855301),
(91946,1,2855.31,-3232.34,134.27,6.26573,10000,855301),
(92235,1,3135.96,-3867.93,135.447,3.33358,10000,855301),
(92264,1,3185.53,-3456.8,165.529,4.13643,10000,855301);
