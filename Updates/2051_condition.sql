-- missing condition for [2021] added
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 3169 AND 3170;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(3169, 9, 1886, 0),
(3170, -1, 345, 3169);
