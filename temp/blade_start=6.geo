//+
lc = DefineNumber[ 0.1, Name "Parameters/lc" ];
//+
hd = DefineNumber[ 0.2, Name "Parameters/hd" ];
//edge是平台宽度的一半
edge = 0.05;

//平台电极分段的中心位置start
start = 6.0;
//刀片平台的mesh size设的小一点，这样划分的网格更细.
//factor表示一维划分的网格的长度，当mesh size=0.5时，改点附近的网格长度是mesh size*factor=0.5
lce = 0.05;
gap = 0.05;
seg = 0.25;
Point(1) = {hd, edge, 0, lce};
Point(2) = {hd, edge, start-(2*gap+seg), lce};
Point(3) = {hd, edge, start-(gap+seg), lce};
Point(4) = {hd, edge, start-gap, lce};
Point(5) = {hd, edge, start, lce};
Point(6) = {hd, edge, start+seg, lce};
Point(7) = {hd, edge, start+gap+seg, lce};
Point(8) = {hd, edge, start+2*seg+gap, lce};
Point(9) = {hd, edge, start+2*seg+2*gap, lce};
Point(10) = {hd, edge, 12, lce};



Line(1) = {1,2} ;
Line(2) = {3,4} ;
Line(3) = {5,6} ;
Line(4) = {7,8} ;
Line(5) = {9,10} ;

Point(11) = {hd, -edge, 0, lce};
Point(12) = {hd, -edge, start-(2*gap+seg), lce};
Point(13) = {hd, -edge, start-(gap+seg), lce};
Point(14) = {hd, -edge, start-gap, lce};
Point(15) = {hd, -edge, start, lce};
Point(16) = {hd, -edge, start+seg, lce};
Point(17) = {hd, -edge, start+gap+seg, lce};
Point(18) = {hd, -edge, start+2*seg+gap, lce};
Point(19) = {hd, -edge, start+2*seg+2*gap, lce};
Point(20) = {hd, -edge, 12, lce};


Line(6) = {11,12} ;
Line(7) = {13,14} ;
Line(8) = {15,16} ;
Line(9) = {17,18} ;
Line(10) = {19,20} ;

//楔形边
lc2 = 1;
Point(21) = {hd+3.7, -1, 0, lc2};
Point(22) = {hd+3.7, -1, 2.4, lc2};
Point(23) = {hd+3.7, -1, 2.45, lc2};
Point(24) = {hd+3.7, -1, 4.8, lc2};
Point(25) = {hd+3.7, -1, 4.85, lc2};
Point(26) = {hd+3.7, -1, 7.2, lc2};
Point(27) = {hd+3.7, -1, 7.25, lc2};
Point(28) = {hd+3.7, -1, 9.6, lc2};
Point(29) = {hd+3.7, -1, 9.65, lc2};
Point(30) = {hd+3.7, -1, 12, lc2};

Point(31) = {hd+3.7, +1, 0, lc2};
Point(32) = {hd+3.7, +1, 2.4, lc2};
Point(33) = {hd+3.7, +1, 2.45, lc2};
Point(34) = {hd+3.7, +1, 4.8, lc2};
Point(35) = {hd+3.7, +1, 4.85, lc2};
Point(36) = {hd+3.7, +1, 7.2, lc2};
Point(37) = {hd+3.7, +1, 7.25, lc2};
Point(38) = {hd+3.7, +1, 9.6, lc2};
Point(39) = {hd+3.7, +1, 9.65, lc2};
Point(40) = {hd+3.7, +1, 12, lc2};

// 2*12
Point(41) = {hd+5.7, -1, 0, 1.0};
Point(42) = {hd+5.7, -1, 2.4, 1.0};
Point(43) = {hd+5.7, -1, 2.45, 1.0};
Point(44) = {hd+5.7, -1, 4.8, 1.0};
Point(45) = {hd+5.7, -1, 4.85, 1.0};
Point(46) = {hd+5.7, -1, 7.2, 1.0};
Point(47) = {hd+5.7, -1, 7.25, 1.0};
Point(48) = {hd+5.7, -1, 9.6, 1.0};
Point(49) = {hd+5.7, -1, 9.65, 1.0};
Point(50) = {hd+5.7, -1, 12, 1.0};

Point(61) = {hd+5.7, +1, 0, 1.0};
Point(62) = {hd+5.7, +1, 2.4, 1.0};
Point(63) = {hd+5.7, +1, 2.45, 1.0};
Point(64) = {hd+5.7, +1, 4.8, 1.0};
Point(65) = {hd+5.7, +1, 4.85, 1.0};
Point(66) = {hd+5.7, +1, 7.2, 1.0};
Point(67) = {hd+5.7, +1, 7.25, 1.0};
Point(68) = {hd+5.7, +1, 9.6, 1.0};
Point(69) = {hd+5.7, +1, 9.65, 1.0};
Point(70) = {hd+5.7, +1, 12, 1.0};




//+
Line(11) = {1, 31};

//+
Line(12) = {2, 32};
//+
Line(13) = {3, 33};

//+
Line(14) = {4, 34};
//+
Line(15) = {35, 5};


//+
Line(16) = {10, 6};

//+
Recursive Delete {
  Curve{16}; 
}
//+
Line(16) = {6, 36};
//+
Line(17) = {37, 7};
//+
Line(18) = {8, 38};
//+
Line(19) = {39, 9};
//+
Line(20) = {10, 40};
//+
Line(21) = {31, 32};
//+
Line(22) = {33, 34};
//+
Line(23) = {35, 36};
//+
Line(24) = {37, 38};
//+
Line(25) = {39, 40};
//+
Line(26) = {20, 30};
//+
Line(27) = {19, 29};
//+
Line(28) = {28, 18};
//+
Line(29) = {17, 27};
//+
Line(30) = {16, 26};
//+
Line(31) = {15, 25};
//+
Line(32) = {24, 14};
//+
Line(33) = {13, 23};
//+
Line(34) = {22, 12};
//+
Line(35) = {21, 11};
//+
Line(36) = {21, 22};
//+
Line(37) = {23, 24};
//+
Line(38) = {25, 26};
//+
Line(39) = {27, 28};
//+
Line(40) = {29, 30};
//+
Line(41) = {50, 30};
//+
Line(42) = {49, 50};
//+
Line(43) = {49, 39};
//+
Line(44) = {38, 48};
//+
Recursive Delete {
  Curve{43}; Curve{44}; 
}
//+
Line(43) = {49, 29};
//+
Line(44) = {27, 47};
//+
Line(45) = {26, 46};
//+
Line(46) = {25, 45};
//+
Line(47) = {44, 24};
//+
Line(48) = {23, 43};
//+
Line(49) = {42, 22};
//+
Line(50) = {41, 42};
//+
Line(51) = {21, 41};
//+
Line(52) = {43, 44};
//+
Line(53) = {45, 46};
//+
Point(71) = {hd+5.7, -1, 9.6, 1.0};

//+
Line(54) = {28, 71};
//+
Line(55) = {47, 71};
//+
Line(56) = {50, 70};
//+
Line(57) = {40, 70};
//+
Line(58) = {69, 70};

//+
Line(59) = {49, 69};
//+
Line(60) = {68, 71};
//+
Line(61) = {47, 67};
//+
Line(62) = {68, 67};
//+
Line(63) = {66, 46};
//+
Line(64) = {45, 65};
//+
Line(65) = {66, 65};
//+
Line(66) = {64, 44};
//+
Line(67) = {63, 64};
//+
Line(68) = {43, 63};
//+
Line(69) = {42, 62};
//+
Line(70) = {61, 62};
//+
Line(71) = {41, 61};
//+
Line(72) = {61, 31};
//+
Line(73) = {62, 32};
//+
Line(74) = {33, 63};
//+
Line(75) = {64, 34};
//+
Line(76) = {35, 65};
//+
Line(77) = {66, 36};
//+
Line(78) = {36, 66};
//+
Line(79) = {67, 37};
//+
Line(80) = {38, 68};
//+
Line(81) = {69, 39};
//+
Line(82) = {20, 10};
//+
Line(83) = {9, 19};
//+
Line(84) = {18, 8};
//+
Line(85) = {17, 7};
//+
Line(86) = {16, 6};
//+
Line(87) = {15, 5};
//+
Line(88) = {4, 14};
//+
Line(89) = {13, 3};
//+
Line(90) = {2, 12};
//+
Line(91) = {1, 11};


//+
Curve Loop(2) = {26, -41, 56, -57, -20, -82};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {20, -25, 19, 5};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {57, -58, 81, 25};
//+
Plane Surface(4) = {4};
//+

Curve Loop(5) = {-56, 58, 59, -42};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {82, -5, 83, 10};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {-10, 27, 40, -26};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {41, -40, -43, 42};
//+
Plane Surface(8) = {8};
//+
Line(92) = {39, 29};
//+
Line(93) = {28, 38};
//+
Line(94) = {27, 37};
//+
Line(95) = {36, 26};
//+
Line(96) = {25, 35};
//+
Line(97) = {24, 34};
//+
Line(98) = {23, 33};
//+
Line(99) = {32, 22};
//+
Curve Loop(9) = {-83, -19, 92, -27};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {-81, -59, 43, -92};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {61, -62, 60, -55};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {44, 55, -54, -39};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {39, 28, -9, 29};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {93, -18, -84, -28};
//+
Plane Surface(14) = {14};
//+
Curve Loop(15) = {9, 84, -4, -85};
//+
Plane Surface(15) = {15};
//+
Curve Loop(16) = {17, 4, 18, -24};
//+
Plane Surface(16) = {16};
//+
Curve Loop(17) = {24, 80, 62, 79};
//+
Plane Surface(17) = {17};
//+
Curve Loop(18) = {-93, 54, -60, -80};
//+
Plane Surface(18) = {18};
//+
Curve Loop(19) = {-61, -44, 94, -79};
//+
Plane Surface(19) = {19};
//+
Curve Loop(20) = {-94, -29, 85, -17};
//+
Plane Surface(20) = {20};
//+
Curve Loop(21) = {31, 38, -30, -8};
//+
Plane Surface(21) = {21};
//+
Curve Loop(22) = {46, 53, -45, -38};
//+
Plane Surface(22) = {22};
//+
Curve Loop(23) = {64, -65, 63, -53};
//+
Plane Surface(23) = {23};
//+
Curve Loop(24) = {23, -77, 65, -76};
//+
Plane Surface(24) = {24};
//+
Curve Loop(25) = {15, 3, 16, -23};
//+
Plane Surface(25) = {25};
//+
Curve Loop(26) = {8, 86, -3, -87};
//+
Plane Surface(26) = {26};
//+
Curve Loop(27) = {30, -95, -16, -86};
//+
Plane Surface(27) = {27};
//+
Curve Loop(28) = {77, 95, 45, -63};
//+
Plane Surface(28) = {28};
//+
Curve Loop(29) = {-46, 96, 76, -64};
//+
Plane Surface(29) = {29};
//+
Curve Loop(30) = {87, -15, -96, -31};
//+
Plane Surface(30) = {30};
//+
Curve Loop(31) = {-2, -89, 7, -88};
//+
Plane Surface(31) = {31};
//+
Curve Loop(32) = {33, 37, 32, -7};
//+
Plane Surface(32) = {32};
//+
Curve Loop(33) = {47, -37, 48, 52};
//+
Plane Surface(33) = {33};
//+
Curve Loop(34) = {66, -52, 68, 67};
//+
Plane Surface(34) = {34};
//+
Curve Loop(35) = {-67, -74, 22, -75};
//+
Plane Surface(35) = {35};
//+
Curve Loop(36) = {2, 14, -22, -13};
//+
Plane Surface(36) = {36};
//+
Curve Loop(37) = {88, -32, 97, -14};
//+
Plane Surface(37) = {37};
//+
Curve Loop(38) = {-47, -66, 75, -97};
//+
Plane Surface(38) = {38};
//+
Curve Loop(39) = {98, 74, -68, -48};
//+
Plane Surface(39) = {39};
//+
Curve Loop(40) = {89, 13, -98, -33};
//+
Plane Surface(40) = {40};
//+
Curve Loop(41) = {90, -34, -99, -12};
//+
Plane Surface(41) = {41};
//+
Curve Loop(42) = {73, 99, -49, 69};
//+
Plane Surface(42) = {42};
//+
Curve Loop(43) = {-1, 91, 6, -90};
//+
Plane Surface(43) = {43};
//+
Curve Loop(44) = {1, 12, -21, -11};
//+
Plane Surface(44) = {44};
//+
Curve Loop(45) = {72, 21, -73, -70};
//+
Plane Surface(45) = {45};
//+
Curve Loop(46) = {11, -72, -71, -51, 35, -91};
//+
Plane Surface(46) = {46};
//+
Curve Loop(47) = {-35, 36, 34, -6};
//+
Plane Surface(47) = {47};
//+
Curve Loop(48) = {51, 50, 49, -36};
//+
Plane Surface(48) = {48};
//+
Curve Loop(49) = {70, -69, -50, 71};
//+
Plane Surface(49) = {49};

//+
Surface Loop(1) = {3, 2, 7, 8, 10, 9, 6, 5, 4};
//+
Volume(1) = {1};
//+
Surface Loop(2) = {16, 20, 15, 13, 12, 19, 17, 18, 11, 14};
//+
Volume(2) = {2};
//+
Surface Loop(3) = {25, 30, 21, 26, 27, 28, 23, 29, 24, 22};
//+
Volume(3) = {3};
//+
Surface Loop(4) = {36, 40, 32, 33, 38, 37, 31, 35, 39, 34};
//+
Volume(4) = {4};
//+
Surface Loop(5) = {47, 43, 41, 44, 45, 49, 42, 48, 46};
//+
Volume(5) = {5};


//+
Rotate {{0, 0, 10}, {0, 0, 0}, Pi} {
  Duplicata { Volume{5}; }
}
//+
Rotate {{0, 0, 10}, {0, 0, 0}, Pi} {
  Duplicata { Volume{4}; Volume{3}; Volume{2}; Volume{1}; }
}
////这里可以改变旋转角度
//+
Rotate {{0, 0, 10}, {0, 0, 0}, Pi/2} {
  Duplicata { Curve{41}; Curve{26}; Curve{20}; Curve{57}; Curve{56}; Surface{2}; Curve{82}; }
}
//这里可以改变旋转角度
//+
Rotate {{0, 0, 10}, {0, 0, 0}, -Pi/2} {
  Duplicata { Curve{57}; Curve{20}; Curve{26}; Curve{41}; Curve{56}; Curve{82}; Surface{2}; }
}

//+
Point(743) = {1, -hd-5.7, 0, 1.0};
//+
Point(744) = {-1, -5.7-hd, 0, 1.0};
Point(745) = {edge, -hd, 0, lce};
Point(746) = {-edge, -hd, 0, lce};
Point(747) = {1, -hd-3.7, 0, 1.0};
Point(748) = {-1, -hd-3.7, 0, 1.0};

//+
Line(357) = {745, 747};
//+
Line(358) = {743, 747};
//+
Line(359) = {748, 746};
//+
Line(360) = {748, 744};
//+
Line(361) = {743, 744};
//+
Line(362) = {743, 731};
//+
Line(363) = {742, 744};
//+
Line(364) = {730, 747};
//+
Line(365) = {739, 748};
//+
Line(366) = {734, 745};
//+
Line(367) = {746, 738};
//+
Curve Loop(50) = {363, -361, 362, -355};
//+
Plane Surface(358) = {50};
//+
Curve Loop(51) = {358, -364, 351, -362};
//+
Plane Surface(359) = {51};
//+
Curve Loop(52) = {360, -363, 354, 365};
//+
Plane Surface(360) = {52};
//+
Curve Loop(53) = {-365, -353, -367, -359};
//+
Plane Surface(361) = {53};
//+
Curve Loop(54) = {352, 364, -357, -366};
//+
Plane Surface(362) = {54};
//+
Line(368) = {745, 746};
//+
Curve Loop(55) = {357, -358, 361, -360, 359, -368};
//+
Plane Surface(363) = {55};
//+
Curve Loop(56) = {366, 368, 367, 356};
//+
Plane Surface(364) = {56};
//+
Recursive Delete {
  Curve{340}; Curve{339}; Curve{343}; Curve{341}; Curve{342}; Surface{344}; 
}
//+
Surface Loop(6) = {363, 362, 357, 361, 360, 358, 359, 364};
//+
Volume(296) = {6};
//+
Rotate {{0, 0, 1}, {0, 0, 0}, Pi} {
  Duplicata { Volume{296}; }
}


//电极表面


//RF刀片1
Physical Surface("1") = {363, 361, 362, 359, 360, 357, 358, 364};
//RF刀片2
Physical Surface("2") = {394, 382, 389, 370, 399, 404, 377, 409};

//DC刀片1

Physical Surface("3") = {7, 3, 8, 4, 6, 2, 5, 9, 10};

Physical Surface("4") = {15, 17, 12, 16, 13, 11, 14, 18, 19, 20};

Physical Surface("5") = {21, 22, 24, 25, 26, 30, 29, 23, 28, 27};

Physical Surface("6") = {31, 32, 33, 35, 36, 37, 38, 34, 39, 40};

Physical Surface("7") = {43, 44, 45, 47, 48, 46, 49, 42, 41};

//DC刀片2

Physical Surface("8") = {338, 296, 308, 313, 328, 301, 333, 318, 323};

Physical Surface("9") = {275, 265, 245, 260, 255, 270, 285, 280, 290, 250};
Physical Surface("10") = {234, 239, 194, 204, 209, 219, 224, 229, 199, 214};
Physical Surface("11") = {158, 178, 143, 173, 153, 148, 188, 163, 168, 183};

Physical Surface("12") = {121, 136, 116, 101, 106, 111, 141, 126, 131};





