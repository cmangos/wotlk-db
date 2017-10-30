-- Add a pool for chests in Westfall (No pool existing at all)
 
-- Add template for battered chests for westfall.
DELETE FROM `pool_template` WHERE entry = 25882;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (25882, 3, 'Westfall - Battered Chest Pool');
 
-- Add all battered chests from westfall into the pool.
DELETE FROM `pool_gameobject` WHERE guid IN(42680,42681,42718,42719,42736,42738,42739,42749,42788,52747,52646,52667,52686,52693,52704,52710,52712,52730);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42680, 25882, 0, 'Westfall - Battered Chest Pool'),
(42681, 25882, 0, 'Westfall - Battered Chest Pool'),
(42718, 25882, 0, 'Westfall - Battered Chest Pool'),
(42719, 25882, 0, 'Westfall - Battered Chest Pool'),
(42736, 25882, 0, 'Westfall - Battered Chest Pool'),
(42738, 25882, 0, 'Westfall - Battered Chest Pool'),
(42739, 25882, 0, 'Westfall - Battered Chest Pool'),
(42749, 25882, 0, 'Westfall - Battered Chest Pool'),
(42788, 25882, 0, 'Westfall - Battered Chest Pool'),
(52747, 25882, 0, 'Westfall - Battered Chest Pool'),
(52646, 25882, 0, 'Westfall - Battered Chest Pool'),
(52667, 25882, 0, 'Westfall - Battered Chest Pool'),
(52686, 25882, 0, 'Westfall - Battered Chest Pool'),
(52693, 25882, 0, 'Westfall - Battered Chest Pool'),
(52704, 25882, 0, 'Westfall - Battered Chest Pool'),
(52710, 25882, 0, 'Westfall - Battered Chest Pool'),
(52712, 25882, 0, 'Westfall - Battered Chest Pool'),
(52730, 25882, 0, 'Westfall - Battered Chest Pool');
