
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
('1299', '8', '4004', '0', 'Quest ID 4004 Rewarded'),
('1300', '8', '4363', '0', 'Quest ID 4363 Rewarded'),
('1301', '-2', '1299', '1300', '(Quest ID 4004 OR Quest ID 4363 Rewarded)');

UPDATE `creature_loot_template` SET `condition_id` = '1301' WHERE (`entry` = '8929') and (`item` IN ('12553', '12554', '12556', '12557'));
