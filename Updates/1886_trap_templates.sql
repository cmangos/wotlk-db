-- Add several missing trap gameobjects from Trinitycore DB
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `faction`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`) VALUES
(4, 6, 0, 'Bonfire Damage', '', '', 14, 1, 0, 1, 3, 7902, 0, 0),
(129, 6, 0, 'Naxx Teleporter trap', '', '', 0, 1, 0, 1, 0, 64446, 0, 0),
(128972, 6, 327, 'Shallow Grave TRAP', '', '', 0, 1, 0, 0, 0, 10247, 0, 0),
(160462, 6, 2770, 'Mystical Portal', '', '', 0, 1, 0, 1, 20, 13461, 0, 0),
(160842, 6, 2770, 'Gor\'tesh\'s Lopped Off Head', '', '', 0, 1, 0, 0, 50, 13488, 0, 0),
(175328, 6, 2770, 'Vaelan Spawn Node', '', '', 0, 0.5, 0, 50, 50, 10387, 0, 0),
(175590, 6, 0, 'Spire Spider Egg Trap', '', '', 0, 1, 0, 0, 0, 16453, 0, 0),
(176592, 6, 327, 'Shellfish Trap', '', '', 0, 1, 0, 0, 0, 17679, 0, 0),
(177493, 6, 327, 'Fire of Elune (Trap', '', '', 0, 1, 0, 0, 0, 18955, 0, 0),
(177529, 6, 327, 'Altar of Elune (Trap', '', '', 0, 1, 0, 0, 0, 18993, 0, 0),
(178124, 6, 327, 'Resonite Crystal (Trap', '', '', 0, 1, 0, 0, 5, 20492, 0, 0),
(178248, 6, 327, 'Naga Brazier (trap', '', '', 0, 1, 0, 0, 0, 20863, 0, 0),
(178644, 6, 0, 'Ryson\'s All Seeing Eye Trap', '', '', 0, 1, 95, 200, 0, 21546, 0, 0),
(178673, 6, 5752, 'Consuming Flames Trap', '', '', 0, 1.2, 95, 60, 20, 21650, 0, 0),
(178963, 6, 2770, 'Incantion of Celebras Trap', '', '', 0, 1, 0, 0, 0, 21917, 0, 0),
(180525, 6, 6424, 'Tonk Control Console Trap', '', '', 0, 1, 0, 0, 0, 24935, 0, 0),
(181214, 6, 327, 'Necropolis critter spawner', '', '', 0, 1, 0, 0, 0, 27866, 0, 0),
(181290, 6, 0, 'Midsummer Bonfire Spawn Trap', '', '', 0, 1, 0, 0, 0, 28784, 0, 0),
(181375, 6, 0, 'Midsummer Bonfire Spawn Trap 2', '', '', 0, 1, 0, 0, 0, 29114, 0, 0),
(181604, 6, 6771, 'TEST Ribbon Pole TRAP', '', '', 0, 1, 0, 0, 0, 29708, 0, 0),
(181831, 6, 2770, 'Sealed Tome', '', '', 0, 1.01, 0, 0, 0, 30765, 0, 0),
(181838, 6, 2770, 'Sealed Tome', '', '', 0, 1.01, 0, 0, 0, 30762, 0, 0),
(181840, 6, 2770, 'Sealed Tome', '', '', 0, 1.01, 0, 0, 0, 30764, 0, 0),
(181842, 6, 2770, 'Sealed Tome', '', '', 0, 1.01, 0, 0, 0, 30763, 0, 0),
(181844, 6, 2770, 'Sealed Tome', '', '', 0, 1.01, 0, 0, 0, 30766, 0, 0),
(184910, 6, 2373, 'Power Converter', '', '', 0, 0.5, 0, 0, 0, 37278, 0, 0),
(184958, 6, 7247, 'Nether Drake Egg', '', '', 0, 1.5, 0, 0, 0, 37574, 0, 0),
(185305, 6, 7298, 'Fumper Trap', '', '', 0, 1, 0, 0, 0, 39217, 0, 0),
(185297, 6, 1310, 'Lianthe\'s Strongbox', '', '', 0, 2, 0, 0, 0, 0, 0, 0),
(185862, 6, 0, 'Fel Cannonball Stack Trap', '', '', 0, 1, 0, 0, 0, 40181, 0, 0),
(186471, 6, 2770, 'Holiday - Brewfest - Dark Iron - Mug Trap', '', '', 0, 1, 0, 0, 3, 42696, 0, 0),
(188509, 6, 1287, 'Dark Iron Mole Machine (Minion Summoner Trap)', '', '', 0, 1, 0, 0, 0, 47375, 2, 0);
DELETE FROM `gameobject_template` WHERE `entry` = 188187;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `faction`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`) VALUES
(188187, 6, 5333, 'Snow Pile', '', '', 0, 4, 0, 0, 0, 46961, 0, 65000);

