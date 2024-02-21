
-- Orgrimmar
SET @OGUID := YYYYYYY;

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+51;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(@OGUID+0, 181015, 1, 1, 1, 1396.6319580078125, -4482.50537109375, 31.30389785766601562, 5.166176319122314453, 0, 0, -0.52991867065429687, 0.84804844856262207, 120, 120), -- Standing, Large - Val
(@OGUID+1, 181015, 1, 1, 1, 1397.5103759765625, -4487.90087890625, 32.60906982421875, 3.682650327682495117, 0, 0, -0.96362972259521484, 0.26724100112915039, 120, 120),
(@OGUID+2, 181015, 1, 1, 1, 1395.001708984375, -4487.11279296875, 31.41017341613769531, 3.874631166458129882, 0, 0, -0.93358039855957031, 0.358368009328842163, 120, 120),
(@OGUID+3, 181015, 1, 1, 1, 1392.9375, -4485.20166015625, 31.41420555114746093, 0, 0, 0, 0, 1, 120, 120),
(@OGUID+4, 181015, 1, 1, 1, 1653.6319580078125, -4437.62841796875, 19.31540870666503906, 0, 0, 0, 0, 1, 120, 120),
(@OGUID+5, 181015, 1, 1, 1, 1654.6285400390625, -4434.87841796875, 17.70419120788574218, 1.500982880592346191, 0, 0, 0.681998252868652343, 0.731353819370269775, 120, 120),
(@OGUID+6, 181015, 1, 1, 1, 1654.388916015625, -4437.63916015625, 18.07845878601074218, 4.59021615982055664, 0, 0, -0.74895572662353515, 0.662620067596435546, 120, 120),
(@OGUID+7, 181015, 1, 1, 1, 1652.8333740234375, -4437.38037109375, 18.07776260375976562, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222, 120, 120),
(@OGUID+8, 181015, 1, 1, 1, 1652.59375, -4434.8037109375, 17.62066078186035156, 1.640606880187988281, 0, 0, 0.731352806091308593, 0.6819993257522583, 120, 120),
(@OGUID+9, 201752, 1, 1, 1, 1393.3194580078125, -4486.796875, 31.43267440795898437, 4.101525306701660156, 0, 0, -0.88701057434082031, 0.461749136447906494, 120, 120), -- Large Crate
(@OGUID+10, 201752, 1, 1, 1, 1394.0416259765625, -4488.3974609375, 31.44910621643066406, 4.328419685363769531, 0, 0, -0.82903671264648437, 0.559194147586822509, 120, 120),
(@OGUID+11, 201752, 1, 1, 1, 1397.376708984375, -4488.02099609375, 33.84450149536132812, 0.15707901120185852, 0, 0, 0.078458786010742187, 0.996917366981506347, 120, 120),
(@OGUID+12, 201752, 1, 1, 1, 1394.4010009765625, -4485.6875, 31.39762115478515625, 5.916667938232421875, 0, 0, -0.18223476409912109, 0.98325502872467041, 120, 120),
(@OGUID+13, 201752, 1, 1, 1, 1396.4757080078125, -4482.71533203125, 32.546722412109375, 4.328419685363769531, 0, 0, -0.82903671264648437, 0.559194147586822509, 120, 120),
(@OGUID+14, 201752, 1, 1, 1, 1394.18408203125, -4484.10791015625, 31.37498283386230468, 4.328419685363769531, 0, 0, -0.82903671264648437, 0.559194147586822509, 120, 120),
(@OGUID+15, 201752, 1, 1, 1, 1397.5711669921875, -4487.939453125, 31.35843849182128906, 3.333590030670166015, 0, 0, -0.99539566040039062, 0.095851235091686248, 120, 120),
(@OGUID+16, 201752, 1, 1, 1, 1396.595458984375, -4486.0556640625, 31.35420417785644531, 4.328419685363769531, 0, 0, -0.82903671264648437, 0.559194147586822509, 120, 120),
(@OGUID+17, 201752, 1, 1, 1, 1395.8125, -4486.439453125, 32.66801834106445312, 1.710421562194824218, 0, 0, 0.754709243774414062, 0.656059443950653076, 120, 120),
(@OGUID+18, 201778, 1, 1, 1, 1394.2603759765625, -4484.3681640625, 32.621337890625, 5.148722648620605468, 0, 0, -0.53729915618896484, 0.843391716480255126, 120, 120), -- Crown Chemical Co. Supplies
(@OGUID+19, 201778, 1, 1, 1, 1393.6771240234375, -4486.033203125, 32.672271728515625, 0, 0, 0, 0, 1, 120, 120),
(@OGUID+20, 201940, 1, 1, 1, 1653.5625, -4435.20654296875, 17.64115524291992187, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849, 120, 120), -- Valentine Arch (x2.00)
(@OGUID+21, 202169, 1, 1, 1, 1343.85, -4638.26, 53.5286, 6.10878, 0, 0, 0.087091, -0.9962, 120, 120), -- Standing, Large - Val (custom) [shouldn't be visible without quest]
(@OGUID+22, 202169, 1, 1, 1, 1346.46, -4637.78, 53.5284, 4.98802, 0, 0, 0.603259, -0.797546, 120, 120),
(@OGUID+23, 202169, 1, 1, 1, 1346.35, -4637.53, 54.7716, 4.46652, 0, 0, 0.788479, -0.615062, 120, 120),
-- Thunder Bluff
(@OGUID+24, 181015, 1, 1, 1, -1215.1336669921875, 63.625, 129.957733154296875, 4.729844093322753906, 0, 0, -0.70090866088867187, 0.713251054286956787, 120, 120), -- Standing, Large - Val
(@OGUID+25, 181015, 1, 1, 1, -1218.12158203125, 61.67013931274414062, 129.6227569580078125, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293, 120, 120),
(@OGUID+26, 181015, 1, 1, 1, -1215.689208984375, 65.04340362548828125, 129.9542236328125, 0.401424884796142578, 0, 0, 0.199367523193359375, 0.979924798011779785, 120, 120),
(@OGUID+27, 181015, 1, 1, 1, -1215.4166259765625, 64.47916412353515625, 131.1912384033203125, 5.218535900115966796, 0, 0, -0.507537841796875, 0.861629426479339599, 120, 120),
(@OGUID+28, 181015, 1, 1, 1, -1218.8367919921875, 63.53819656372070312, 129.6519317626953125, 3.473210096359252929, 0, 0, -0.98628520965576171, 0.165049895644187927, 120, 120),
(@OGUID+29, 201940, 1, 1, 1, -1217.9444580078125, 62.78819656372070312, 129.7745819091796875, 3.508116960525512695, 0, 0, -0.98325443267822265, 0.182238012552261352, 120, 120), -- Valentine Arch (x2.00)
-- Undercity
(@OGUID+30, 181015, 0, 1, 1, 1630.0850830078125, 240.8697967529296875, 63.83428192138671875, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 120, 120), -- Standing, Large - Val
(@OGUID+31, 181015, 0, 1, 1, 1627.953125, 238.28125, 63.79163360595703125, 6.073746204376220703, 0, 0, -0.10452842712402343, 0.994521915912628173, 120, 120),
(@OGUID+32, 181015, 0, 1, 1, 1629.99658203125, 238.7777862548828125, 63.81675338745117187, 6.12610626220703125, 0, 0, -0.07845878601074218, 0.996917366981506347, 120, 120),
(@OGUID+33, 181015, 0, 1, 1, 1627.9583740234375, 238.3524322509765625, 65.02048492431640625, 0.069811686873435974, 0, 0, 0.034898757934570312, 0.999390840530395507, 120, 120),
(@OGUID+34, 181015, 0, 1, 1, 1627.6475830078125, 241.607635498046875, 63.7686920166015625, 4.904376029968261718, 0, 0, -0.636077880859375, 0.771624863147735595, 120, 120),
(@OGUID+35, 201940, 0, 1, 1, 1629.0191650390625, 239.795135498046875, 63.8515167236328125, 6.265733242034912109, 0, 0, -0.00872611999511718, 0.999961912631988525, 120, 120), -- Valentine Arch (x2.00)
-- Silvermoon
(@OGUID+36, 181015, 530, 1, 1, 9611.9267578125, -7184.97900390625, 15.52288532257080078, 4.502951622009277343, 0, 0, -0.7771453857421875, 0.629321098327636718, 120, 120), -- Standing, Large - Val
(@OGUID+37, 181015, 530, 1, 1, 9612.646484375, -7184.87841796875, 14.28442192077636718, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976, 120, 120),
(@OGUID+38, 181015, 530, 1, 1, 9610.5166015625, -7182.689453125, 14.28269481658935546, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087, 120, 120),
(@OGUID+39, 181015, 530, 1, 1, 9611.2021484375, -7185.080078125, 14.28158092498779296, 0, 0, 0, 0, 1, 120, 120),
(@OGUID+40, 181015, 530, 1, 1, 9612.5234375, -7182.32275390625, 14.28678226470947265, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544, 120, 120),
(@OGUID+41, 201940, 530, 1, 1, 9611.6396484375, -7183.14404296875, 14.28471183776855468, 1.745326757431030273, 0, 0, 0.766043663024902343, 0.642788589000701904, 120, 120), -- Valentine Arch (x2.00)
-- Chemical Wagon
(@OGUID+42, 201716, 0, 1, 1, -50.1909713745117187, 1150.404541015625, 66.00772857666015625, 0, 0, 0, 0, 1, 120, 120),
(@OGUID+43, 201716, 0, 1, 1, -406.282989501953125, 163.5868072509765625, 75.4813995361328125, 0, 0, 0, 0, 1, 120, 120),
(@OGUID+44, 201716, 0, 1, 1, 88.59375, -2477.99658203125, 124.779296875, 0, 0, 0, 0, 1, 120, 120),
(@OGUID+45, 201716, 0, 1, 1, -9454.0830078125, 522.8125, 55.8221435546875, 0, 0, 0, 0, 1, 120, 120),
(@OGUID+46, 201716, 1, 1, 1, -3370.9462890625, -4168.55712890625, 17.80469894409179687, 0, 0, 0, 0, 1, 120, 120),
(@OGUID+47, 201716, 530, 1, 1, -1808.5086669921875, 4844.5771484375, 1.868746042251586914, 0, 0, 0, 0, 1, 120, 120),
-- (@OGUID+0, 201716, 1, 1, 1, 6764.8193359375, -4905.126953125, 774.26409912109375, 0, 0, 0, 0, 1, 120, 120), -- Winterspring
-- missing added for Northrend - Crystalsong Forest (guesswork, no real data) [based on the spawnpoint of the Chemical Wagon NPC]
(@OGUID+48, 201716, 571, 1, 1, 5592.7099609375, 68.6267013549805, 148.610992431641, 0, 0, 0, 0, 1, 120, 120),
(@OGUID+49, 201716, 571, 1, 1, 5579.14013671875, 179.283004760742, 149.988006591797, 0, 0, 0, 0, 1, 120, 120),
(@OGUID+50, 201716, 571, 1, 1, 5576.52001953125, 124.319000244141, 150.787994384766, 0, 0, 0, 0, 1, 120, 120),
(@OGUID+51, 201716, 571, 1, 1, 5638.02001953125, 107.015998840332, 154.996002197266, 0, 0, 0, 0, 1, 120, 120);

-- ------------------------------------------------------------- --

SET @CGUID := XXXXXXX;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+49;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- Orgrimmar
(@CGUID+0, 37172, 1, 1, 1, 1657.9566650390625, -4391.67529296875, 23.60500526428222656, 4.939281940460205078, 120, 120, 0, 0), -- Detective Snap Snagglebolt
(@CGUID+1, 37671, 1, 1, 1, 1391.407958984375, -4486.05029296875, 31.53259086608886718, 3.211405754089355468, 120, 120, 0, 0), -- Crown Supply Guard
(@CGUID+2, 37671, 1, 1, 1, 1394.1978759765625, -4481.76025390625, 31.435821533203125, 2.199114799499511718, 120, 120, 0, 0),
(@CGUID+3, 37671, 1, 1, 1, 1394.99658203125, -4490.42529296875, 31.55467414855957031, 4.450589656829833984, 120, 120, 0, 0),
(@CGUID+4, 37674, 1, 1, 1, 1654.6961669921875, -4434.80224609375, 18.956024169921875, 1.623156189918518066, 120, 120, 0, 0), -- Lovely Merchant
(@CGUID+5, 37675, 1, 1, 1, 1652.5728759765625, -4434.78662109375, 18.872406005859375, 1.710422635078430175, 120, 120, 0, 0), -- Public Relations Agent
(@CGUID+6, 38042, 1, 1, 1, 1648.1822509765625, -4433.56591796875, 17.51409149169921875, 1.780235767364501953, 120, 120, 0, 0), -- Kwee Q. Peddlefeet
(@CGUID+7, 38328, 1, 1, 1, 1777.045166015625, -4507.6630859375, 27.82889175415039062, 0.663225114345550537, 120, 120, 0, 0), -- Roka
(@CGUID+8, 40438, 1, 1, 1, 1632.826416015625, -4412.923828125, 17.1526641845703125, 0.01745329238474369, 120, 120, 0, 0), -- Steamwheedle Shyster
(@CGUID+9, 38288, 1, 1, 1, 1629.7274169921875, -4373.93408203125, 31.63862228393554687, 0, 120, 120, 0, 0), -- Love Guard Perfume Bunny
(@CGUID+10, 38288, 1, 1, 1, 1894.0225830078125, -4506.9287109375, 26.41686248779296875, 0, 120, 120, 0, 0),
(@CGUID+11, 38288, 1, 1, 1, 2019.1961669921875, -4684.17041015625, 25.19248199462890625, 0, 120, 120, 0, 0),
(@CGUID+12, 38288, 1, 1, 1, 1930.7100830078125, -4287.09033203125, 27.8497161865234375, 0, 120, 120, 0, 0),
(@CGUID+13, 38288, 1, 1, 1, 1670.984375, -4095.390625, 35.69274520874023437, 0, 120, 120, 0, 0),
(@CGUID+14, 38340, 1, 1, 1, 1623.3802490234375, -4375.55908203125, 12.14622211456298828, 3.700439691543579101, 120, 120, 0, 0), -- [DND] Holiday - Love - Bank Bunny
(@CGUID+15, 38341, 1, 1, 1, 1674.46875, -4444.33154296875, 19.29609107971191406, 2.041608333587646484, 120, 120, 0, 0), -- [DND] Holiday - Love - AH Bunny
(@CGUID+16, 38342, 1, 1, 1, 1757.095458984375, -4348.68212890625, -7.73356962203979492, 0, 120, 120, 0, 0), -- [DND] Holiday - Love - Barber Bunny
(@CGUID+17, 37715, 1, 1, 1, 1345.64, -4639.36, 53.5286, 4.71077, 120, 120, 0, 0), -- Snivel Rustrocket (custom)
-- Thunder Bluff
(@CGUID+18, 38044, 1, 1, 1, -1216.001708984375, 57.39409637451171875, 130.0072784423828125, 3.769911050796508789, 120, 120, 0, 0), -- Kwee Q. Peddlefeet
(@CGUID+19, 37675, 1, 1, 1, -1218.1666259765625, 61.68402862548828125, 130.866973876953125, 3.665191411972045898, 120, 120, 0, 0), -- Public Relations Agent
(@CGUID+20, 37674, 1, 1, 1, -1218.8819580078125, 63.5868072509765625, 130.904083251953125, 3.455751895904541015, 120, 120, 0, 0), -- Lovely Merchant
(@CGUID+21, 38295, 1, 1, 1, -1238.6666259765625, 55.02777862548828125, 127.1610794067382812, 0.48869219422340393, 120, 120, 0, 0), -- Junior Detective
(@CGUID+22, 40438, 1, 1, 1, -1273.0242919921875, 71.2743072509765625, 128.0668182373046875, 5.8817596435546875, 120, 120, 0, 0), -- Steamwheedle Shyster
-- Undercity
(@CGUID+23, 37674, 0, 1, 1, 1630.03125, 238.782989501953125, 65.06574249267578125, 6.230825424194335937, 120, 120, 0, 0), -- Lovely Merchant
(@CGUID+24, 37675, 0, 1, 1, 1630.0555419921875, 240.8854217529296875, 65.06858062744140625, 0.436332315206527709, 120, 120, 0, 0), -- Public Relations Agent
(@CGUID+25, 38045, 0, 1, 1, 1630.888916015625, 234.814239501953125, 62.93344497680664062, 0.48869219422340393, 120, 120, 0, 0), -- Kwee Q. Peddlefeet
(@CGUID+26, 38295, 0, 1, 1, 1637.90625, 256.55035400390625, 62.677490234375, 4.223696708679199218, 120, 120, 0, 0), -- Junior Detective
(@CGUID+27, 40438, 0, 1, 1, 1637.60595703125, 239.5381927490234375, -43.0193977355957031, 3.106686115264892578, 120, 120, 0, 0), -- Steamwheedle Shyster
-- Silvermoon
(@CGUID+28, 37674, 530, 1, 1, 9612.5478515625, -7182.34033203125, 15.55144691467285156, 1.762782573699951171, 120, 120, 0, 0), -- Lovely Merchant
(@CGUID+29, 37675, 530, 1, 1, 9610.4931640625, -7182.67724609375, 15.5390472412109375, 1.850049018859863281, 120, 120, 0, 0), -- Public Relations Agent
(@CGUID+30, 38043, 530, 1, 1, 9616.9423828125, -7181.33154296875, 14.37929630279541015, 2.30383467674255371, 120, 120, 0, 0), -- Kwee Q. Peddlefeet
(@CGUID+31, 38295, 530, 1, 1, 9586.302734375, -7181.01416015625, 14.32426738739013671, 0, 120, 120, 0, 0), -- Junior Detective
(@CGUID+32, 40438, 530, 1, 1, 9683.4580078125, -7486.38720703125, 15.90762519836425781, 1.553343057632446289, 120, 120, 0, 0), -- Steamwheedle Shyster
(@CGUID+33, 40438, 530, 1, 1, 9549.4013671875, -7180.8056640625, 14.16619586944580078, 1.797689080238342285, 120, 120, 0, 0),
-- Exodar
(@CGUID+34, 38293, 530, 1, 1, -4015.30029296875, -11869.7080078125, 0.058880336582660675, 1.221730470657348632, 120, 120, 0, 0), -- Junior Inspector
(@CGUID+35, 40438, 530, 1, 1, -3934.50341796875, -11604.7568359375, -138.513031005859375, 4.764749050140380859, 120, 120, 0, 0), -- Steamwheedle Shyster
-- Ironforge
(@CGUID+36, 38293, 0, 1, 1, -4933.3349609375, -993.22222900390625, 501.527679443359375, 0.872664630413055419, 120, 120, 0, 0), -- Junior Inspector
-- (@CGUID+0, 40438, 0, 1, 1, 0.0000000, 0.0000000, 0.0000000, 0.0000000, 120, 120, 0, 0); -- Steamwheedle Shyster (there is none in Ironforge)
-- Stormwind
(@CGUID+37, 38288, 0, 1, 1, -8825.6044921875, 629.310791015625, 94.11373138427734375, 0, 120, 120, 0, 0), -- Love Guard Perfume Bunny
(@CGUID+38, 38288, 0, 1, 1, -8676.7236328125, 444.505218505859375, 99.73087310791015625, 0, 120, 120, 0, 0),
(@CGUID+39, 38288, 0, 1, 1, -8486.955078125, 390.513885498046875, 108.4688873291015625, 0, 120, 120, 0, 0),
(@CGUID+40, 38288, 0, 1, 1, -8433.189453125, 607.22052001953125, 95.1302490234375, 0, 120, 120, 0, 0),
(@CGUID+41, 38288, 0, 1, 1, -8625.0380859375, 780.07989501953125, 96.7339935302734375, 0, 120, 120, 0, 0),
(@CGUID+42, 38288, 0, 1, 1, -8737.654296875, 1051.88720703125, 90.88159942626953125, 0, 120, 120, 0, 0),
(@CGUID+43, 38288, 0, 1, 1, -8988.888671875, 849.4149169921875, 105.9424591064453125, 0, 120, 120, 0, 0),
-- Chemical Wagon (fast respawntime)
(@CGUID+44, 38035, 0, 1, 1, 88.58333587646484375, -2477.989501953125, 124.8402938842773437, 0, 1, 1, 0, 0), -- The Hinterlands
(@CGUID+45, 38035, 0, 1, 1, -50.1857643127441406, 1150.40283203125, 66.0908966064453125, 0, 1, 1, 0, 0), -- Silverpine Forest
(@CGUID+46, 38035, 0, 1, 1, -406.282989501953125, 163.5868072509765625, 75.5319976806640625, 0, 1, 1, 0, 0), -- Hillsbrad Foothills
(@CGUID+47, 38035, 0, 1, 1, -9454.0869140625, 522.810791015625, 55.90142440795898437, 0, 1, 1, 0, 0), -- Elwynn Forest
(@CGUID+48, 38035, 1, 1, 1, -3370.935791015625, -4168.5537109375, 17.8669586181640625, 0, 1, 1, 0, 0), -- Dustwallow Marsh
(@CGUID+49, 38035, 530, 1, 1, -1808.5399169921875, 4844.61279296875, 1.952302336692810058, 0, 1, 1, 0, 0), -- Terokkar Forest
-- (@CGUID+0, 38035, 1, 1, 1, 6764.822265625, -4905.1337890625, 774.3394775390625, 0, 1, 1, 0, 0); -- Winterspring
-- Shattrath
(@CGUID+50, 40438, 530, 1, 1, -1985.236083984375, 5377.0634765625, -12.3448219299316406, 0.209439516067504882, 120, 120, 0, 0), -- Steamwheedle Shyster
(@CGUID+51, 40438, 530, 1, 1, -1742.8541259765625, 5483.06103515625, -12.3448238372802734, 3.40339207649230957, 120, 120, 0, 0);

-- ------------------------------------------------------------- --

UPDATE `creature` SET `spawntimesecsmin` = 1, `spawntimesecsmax` = 1 WHERE `guid` IN (90188, 534450, 534451, 534452, 534453);

DELETE FROM `creature_template_addon` WHERE `entry` IN (37172, 37671, 37674, 37675, 38042, 38328, 40438, 38288, 38295, 38044, 38043, 38045, 38293, 38340, 38341, 38342);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `pvp_flags`, `emote`, `moveflags`, `auras`) VALUES
(37172, 0, 0, 1, 1, 0, 0, NULL), (37671, 0, 0, 1, 0, 0, 0, NULL), (37674, 0, 0, 1, 0, 0, 0, NULL),
(37675, 0, 0, 1, 0, 0, 0, NULL), (38042, 0, 0, 1, 0, 0, 0, NULL), (38328, 0, 0, 1, 0, 0, 0, NULL),
(40438, 0, 0, 1, 1, 0, 0, NULL), (38288, 0, 0, 1, 0, 0, 0, NULL), (38295, 0, 0, 1, 1, 0, 0, NULL),
(38044, 0, 0, 1, 0, 0, 0, NULL), (38043, 0, 0, 1, 0, 0, 0, NULL), (38045, 0, 0, 1, 0, 0, 0, NULL),
(38293, 0, 0, 1, 1, 0, 0, NULL), (38340, 0, 0, 1, 0, 0, 0, NULL), (38341, 0, 0, 1, 0, 0, 0, NULL),
(38342, 0, 0, 1, 0, 0, 0, NULL);

-- ------------------------------------------------------------- --

-- DELETE FROM `npc_text` WHERE (`ID`=15280);
-- INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `prob0`) VALUES
-- (15280, 'No snooping around, friend.$B$BIf you''re looking to buy Crown holiday goods, you''ll have to do it at the Lovely Merchant in the city.', 'No snooping around, friend.$B$BIf you''re looking to buy Crown holiday goods, you''ll have to do it at the Lovely Merchant in the city.', 1);

-- Crown Supply Guard / Crown Supply Sentry
DELETE FROM `gossip_menu` WHERE (`entry`=10990);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10990, 15280, 0, 0);

DELETE FROM npc_text_broadcast_text WHERE Id = 15280;
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(15280,1,38021);

UPDATE `creature_template` SET `GossipMenuId` = 10990 WHERE `entry` IN (37671, 38065);
UPDATE `creature_template` SET `NpcFlags` = 1 WHERE `entry` = 37671;


-- DELETE FROM `npc_text` WHERE (`ID`=15857);
-- INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `prob0`) VALUES
-- (15857, 'Someone''s got to stop the Crown Chemical Co. I''d bet my gold-plated Nether-Rocket they''re cooking up the next big plague on the chocolate-crazed citizenry''s coin...$BIf only I could find someone to serve their apothecaries with court papers! Then we could put an end to it... and maybe seize all their assets, while we''re at it!', NULL, 1);

-- Steamwheedle Shyster
DELETE FROM `gossip_menu` WHERE (`entry`=11386);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(11386, 15857, 0, 0);

DELETE FROM npc_text_broadcast_text WHERE Id = 15857;
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(15857,1,40428);

UPDATE `creature_template` SET `NpcFlags` = 1, `GossipMenuId` = 11386 WHERE `entry` = 40438;

-- ------------------------------------------------------------- --

UPDATE `creature_template` SET `GossipMenuId` = 10948 WHERE `entry` IN (38040, 38042, 38043, 38044, 38045); -- Kwee Q. Peddlefeet
UPDATE `creature_template` SET `NpcFlags` = 3 WHERE `entry` IN (38043, 38044, 38045);

UPDATE `creature_template` SET `GossipMenuId` = 10976 WHERE `entry` = 37172; -- Detective Snap Snagglebolt

UPDATE `creature_template` SET `NpcFlags` = 3, `GossipMenuId` = 10991 WHERE `entry` = 38295; -- Junior Detective

-- ------------------------------------------------------------- --

-- some npc stats (they need more [accurate] stats)
UPDATE `creature_template` SET `MinLevel` = 80, `MaxLevel` = 80, `Expansion` = 2, `MinLevelHealth` = 12600, `MaxLevelHealth` = 12600, `MinMeleeDmg` = 422, `MaxMeleeDmg` = 586, `MinRangedDmg` = 345, `MaxRangedDmg` = 509, `Armor` = 9729, `MeleeAttackPower` = 642, `RangedAttackPower` = 103, `EquipmentTemplateId` = 1997 WHERE `entry` = 37671;
UPDATE `creature_template` SET `MinLevel` = 30, `MaxLevel` = 30, `Faction` = 1734, `UnitFlags` = 33280, `MinLevelHealth` = 955, `MaxLevelHealth` = 955, `MinMeleeDmg` = 42, `MaxMeleeDmg` = 56, `MinRangedDmg` = 29, `MaxRangedDmg` = 42, `Armor` = 1179, `MeleeAttackPower` = 102, `RangedAttackPower` = 9 WHERE `entry` = 38295;
UPDATE `creature_template` SET `MinLevel` = 30, `MaxLevel` = 30, `Faction` = 29, `MinLevelHealth` = 955, `MaxLevelHealth` = 955 WHERE `entry` = 38328;
UPDATE `creature_template` SET `MinLevel` = 16, `MaxLevel` = 17, `Faction` = 16, `MinLevelHealth` = 356, `MaxLevelHealth` = 386, `EquipmentTemplateId` = 1997 WHERE `entry` = 37917;
UPDATE `creature_template` SET `MinLevel` = 25, `MaxLevel` = 26, `Faction` = 16, `MinLevelHealth` = 699, `MaxLevelHealth` = 750, `EquipmentTemplateId` = 1997 WHERE `entry` = 37984;
UPDATE `creature_template` SET `MinLevel` = 33, `MaxLevel` = 34, `Faction` = 16, `MinLevelHealth` = 1110, `MaxLevelHealth` = 1163, `EquipmentTemplateId` = 1997 WHERE `entry` = 38006;
UPDATE `creature_template` SET `MinLevel` = 44, `MaxLevel` = 45, `Faction` = 16, `MinLevelHealth` = 1782, `MaxLevelHealth` = 1848, `EquipmentTemplateId` = 1997 WHERE `entry` = 38016;
UPDATE `creature_template` SET `MinLevel` = 63, `MaxLevel` = 64, `Faction` = 16, `MinLevelHealth` = 5527, `MaxLevelHealth` = 5715, `EquipmentTemplateId` = 1997 WHERE `entry` = 38030;
UPDATE `creature_template` SET `MinLevel` = 30, `MaxLevel` = 30, `MinLevelHealth` = 1003, `MaxLevelHealth` = 1003 WHERE `entry` IN (38334, 38335, 38336, 38337, 38338, 38339);

-- ------------------------------------------------------------- --

-- NYI: riding a boat, you should receive spell:69341 (a heart above your head) [maybe only if 2 chars using the same boat]
-- sometimes a newly spawned boat from UC are going nuts and fly away, if you ride them your journey will end in Alterac Valley....
-- same for a boat in SW, if you ride them your journey will end in "in the middle of nowhere"....
-- Boats from Darnassus works flawlessly

-- The Love Boats are ready for passengers
UPDATE `creature_ai_scripts` SET `event_inverse_phase_mask` = 0, `event_flags` = 1, `event_param1` = 1000, `event_param2` = 1000, `event_param3` = 23000, `event_param4` = 23000 WHERE `id` IN (3681701, 3796401, 3798101);
-- UPDATE `creature_ai_scripts` SET `event_inverse_phase_mask` = 0, `event_flags` = 1, `event_param3` = 23000, `event_param4` = 23000 WHERE `id` IN (3681701, 3796401, 3798101);

-- [DND] Love Boat Summoner 02 (updated values)
DELETE FROM `creature_template` WHERE (`entry`=37964);
INSERT INTO `creature_template` VALUES
(37964, '[DND] Love Boat Summoner 02', '', '', 80, 80, 0, 0, 0, 21955, 16925, 0, 0, 35, 1, 0, 10, 7, 14, 0, 0, 33587456, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.992063, 1, 20, 0, 15000, 0, 0, 2, 0, 2, 15, 20, 1, 1, 1, 1, 189000, 189000, 79880, 79880, 417, 582, 341, 506, 9706, 608, 80, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 'EventAI', '');

-- Undercity Love Boat (updated values)
DELETE FROM `creature_template` WHERE (`entry`=37966);
INSERT INTO `creature_template` VALUES
(37966, 'Undercity Love Boat', '', '', 1, 1, 0, 0, 0, 30852, 0, 0, 0, 35, 1, 0, 10, 7, 14, 0, 0, 32768, 0, 0, 0, 1048576, 0, 0, 0, 0, 1, 1, 1, 20, 0, 15000, 0, 0, 1, 0, 2, 1, 1, 1, 1, 1, 1, 42, 42, 0, 0, 2, 2, 1, 1, 7, 24, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 616, 0, -1, 0, 0, 0, 0, '', '');

-- Undercity Love Boat
UPDATE `creature_movement_template` SET `WaitTime` = 5000, `Orientation` = 0.837758 WHERE `Entry` = 37966 AND `PathId` = 0 AND `Point` = 1;
UPDATE `creature_movement_template` SET `WaitTime` = 3000  WHERE `Entry` = 37966 AND `PathId` = 0 AND `Point` = 31;

-- Stormwind Love Boat
UPDATE `creature_movement_template` SET `WaitTime` = 5000, `Orientation` = 0.080203 WHERE `Entry` = 36812 AND `PathId` = 0 AND `Point` = 1;
UPDATE `creature_movement_template` SET `WaitTime` = 3000, `Orientation` = 0.208465 WHERE `Entry` = 36812 AND `PathId` = 0 AND `Point` = 21;

-- Darnassus Love Boat
UPDATE `creature_movement_template` SET `WaitTime` = 5000, `Orientation` = 5.5676 WHERE `Entry` = 37980 AND `PathId` = 0 AND `Point` = 1;
UPDATE `creature_movement_template` SET `WaitTime` = 3000, `Orientation` = 3.860946 WHERE `Entry` = 37980 AND `PathId` = 0 AND `Point` = 60;

-- added Undercity Love Boat Summoner 02 to event
DELETE FROM `game_event_creature` WHERE (`guid`=52033);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(52033, 8);

-- Summoner and Boats should be active all the time to work correctly
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096 WHERE entry IN (36817, 36812, 37964, 37966, 37981, 37980);

-- -------------------------------------------------- --

-- https://www.wowhead.com/wotlk/item=50130
-- Snagglebolt's Khorium Bomb can now destroy a Chemical Wagon
-- something with the distance should be tweaked...
-- if you throw the bomb from max distance you will get only the error message 'Invalid target' and your bomb is gone, if you are closer and everything works
DELETE FROM spell_script_target WHERE entry IN (71024, 71599);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`) VALUES
(71024, 0, 201716),
(71599, 1, 38035);

-- -------------------------------------------------- --

-- https://www.wowhead.com/wotlk/spell=71520/heavily-perfumed-pulse
-- https://www.wowhead.com/wotlk/spell=71507/heavily-perfumed

-- GUESSWORK !!! I have absolutely no idea whether this is correct or not! But it works.
-- Caster is 'Love Guard Perfume Bunny'
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=38288);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param3`) VALUES
(3828801, 38288, 29, 1, 1000, 1000, 360000, 360000, 11, 71520, 0);
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 38288;

-- spell needs a range limitation ??
-- Spell will effect only Guards (maybe random?) in Stormwind and Orgrimmer [List still needs to be expanded]
DELETE FROM `spell_script_target` WHERE (`entry`=71520);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(71520, 1, 68),
(71520, 1, 1423),
(71520, 1, 1756),
(71520, 1, 1976),
(71520, 1, 3296),
(71520, 1, 31416),
(71520, 1, 12480),
(71520, 1, 12481);

-- -------------------------------------------------- --


