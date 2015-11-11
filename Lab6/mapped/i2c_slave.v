
module fiforam ( wclk, wenable, waddr, raddr, wdata, rdata );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wenable;
  wire   \fiforeg[0][7] , \fiforeg[0][6] , \fiforeg[0][5] , \fiforeg[0][4] ,
         \fiforeg[0][3] , \fiforeg[0][2] , \fiforeg[0][1] , \fiforeg[0][0] ,
         \fiforeg[1][7] , \fiforeg[1][6] , \fiforeg[1][5] , \fiforeg[1][4] ,
         \fiforeg[1][3] , \fiforeg[1][2] , \fiforeg[1][1] , \fiforeg[1][0] ,
         \fiforeg[2][7] , \fiforeg[2][6] , \fiforeg[2][5] , \fiforeg[2][4] ,
         \fiforeg[2][3] , \fiforeg[2][2] , \fiforeg[2][1] , \fiforeg[2][0] ,
         \fiforeg[3][7] , \fiforeg[3][6] , \fiforeg[3][5] , \fiforeg[3][4] ,
         \fiforeg[3][3] , \fiforeg[3][2] , \fiforeg[3][1] , \fiforeg[3][0] ,
         \fiforeg[4][7] , \fiforeg[4][6] , \fiforeg[4][5] , \fiforeg[4][4] ,
         \fiforeg[4][3] , \fiforeg[4][2] , \fiforeg[4][1] , \fiforeg[4][0] ,
         \fiforeg[5][7] , \fiforeg[5][6] , \fiforeg[5][5] , \fiforeg[5][4] ,
         \fiforeg[5][3] , \fiforeg[5][2] , \fiforeg[5][1] , \fiforeg[5][0] ,
         \fiforeg[6][7] , \fiforeg[6][6] , \fiforeg[6][5] , \fiforeg[6][4] ,
         \fiforeg[6][3] , \fiforeg[6][2] , \fiforeg[6][1] , \fiforeg[6][0] ,
         \fiforeg[7][7] , \fiforeg[7][6] , \fiforeg[7][5] , \fiforeg[7][4] ,
         \fiforeg[7][3] , \fiforeg[7][2] , \fiforeg[7][1] , \fiforeg[7][0] ,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338;

  DFFPOSX1 \fiforeg_reg[7][7]  ( .D(n212), .CLK(wclk), .Q(\fiforeg[7][7] ) );
  DFFPOSX1 \fiforeg_reg[6][7]  ( .D(n213), .CLK(wclk), .Q(\fiforeg[6][7] ) );
  DFFPOSX1 \fiforeg_reg[5][7]  ( .D(n214), .CLK(wclk), .Q(\fiforeg[5][7] ) );
  DFFPOSX1 \fiforeg_reg[4][7]  ( .D(n215), .CLK(wclk), .Q(\fiforeg[4][7] ) );
  DFFPOSX1 \fiforeg_reg[3][7]  ( .D(n216), .CLK(wclk), .Q(\fiforeg[3][7] ) );
  DFFPOSX1 \fiforeg_reg[2][7]  ( .D(n217), .CLK(wclk), .Q(\fiforeg[2][7] ) );
  DFFPOSX1 \fiforeg_reg[1][7]  ( .D(n218), .CLK(wclk), .Q(\fiforeg[1][7] ) );
  DFFPOSX1 \fiforeg_reg[0][7]  ( .D(n219), .CLK(wclk), .Q(\fiforeg[0][7] ) );
  DFFPOSX1 \fiforeg_reg[7][6]  ( .D(n220), .CLK(wclk), .Q(\fiforeg[7][6] ) );
  DFFPOSX1 \fiforeg_reg[6][6]  ( .D(n221), .CLK(wclk), .Q(\fiforeg[6][6] ) );
  DFFPOSX1 \fiforeg_reg[5][6]  ( .D(n222), .CLK(wclk), .Q(\fiforeg[5][6] ) );
  DFFPOSX1 \fiforeg_reg[4][6]  ( .D(n223), .CLK(wclk), .Q(\fiforeg[4][6] ) );
  DFFPOSX1 \fiforeg_reg[3][6]  ( .D(n224), .CLK(wclk), .Q(\fiforeg[3][6] ) );
  DFFPOSX1 \fiforeg_reg[2][6]  ( .D(n225), .CLK(wclk), .Q(\fiforeg[2][6] ) );
  DFFPOSX1 \fiforeg_reg[1][6]  ( .D(n226), .CLK(wclk), .Q(\fiforeg[1][6] ) );
  DFFPOSX1 \fiforeg_reg[0][6]  ( .D(n227), .CLK(wclk), .Q(\fiforeg[0][6] ) );
  DFFPOSX1 \fiforeg_reg[7][5]  ( .D(n228), .CLK(wclk), .Q(\fiforeg[7][5] ) );
  DFFPOSX1 \fiforeg_reg[6][5]  ( .D(n229), .CLK(wclk), .Q(\fiforeg[6][5] ) );
  DFFPOSX1 \fiforeg_reg[5][5]  ( .D(n230), .CLK(wclk), .Q(\fiforeg[5][5] ) );
  DFFPOSX1 \fiforeg_reg[4][5]  ( .D(n231), .CLK(wclk), .Q(\fiforeg[4][5] ) );
  DFFPOSX1 \fiforeg_reg[3][5]  ( .D(n232), .CLK(wclk), .Q(\fiforeg[3][5] ) );
  DFFPOSX1 \fiforeg_reg[2][5]  ( .D(n233), .CLK(wclk), .Q(\fiforeg[2][5] ) );
  DFFPOSX1 \fiforeg_reg[1][5]  ( .D(n234), .CLK(wclk), .Q(\fiforeg[1][5] ) );
  DFFPOSX1 \fiforeg_reg[0][5]  ( .D(n235), .CLK(wclk), .Q(\fiforeg[0][5] ) );
  DFFPOSX1 \fiforeg_reg[7][4]  ( .D(n236), .CLK(wclk), .Q(\fiforeg[7][4] ) );
  DFFPOSX1 \fiforeg_reg[6][4]  ( .D(n237), .CLK(wclk), .Q(\fiforeg[6][4] ) );
  DFFPOSX1 \fiforeg_reg[5][4]  ( .D(n238), .CLK(wclk), .Q(\fiforeg[5][4] ) );
  DFFPOSX1 \fiforeg_reg[4][4]  ( .D(n239), .CLK(wclk), .Q(\fiforeg[4][4] ) );
  DFFPOSX1 \fiforeg_reg[3][4]  ( .D(n240), .CLK(wclk), .Q(\fiforeg[3][4] ) );
  DFFPOSX1 \fiforeg_reg[2][4]  ( .D(n241), .CLK(wclk), .Q(\fiforeg[2][4] ) );
  DFFPOSX1 \fiforeg_reg[1][4]  ( .D(n242), .CLK(wclk), .Q(\fiforeg[1][4] ) );
  DFFPOSX1 \fiforeg_reg[0][4]  ( .D(n243), .CLK(wclk), .Q(\fiforeg[0][4] ) );
  DFFPOSX1 \fiforeg_reg[7][3]  ( .D(n244), .CLK(wclk), .Q(\fiforeg[7][3] ) );
  DFFPOSX1 \fiforeg_reg[6][3]  ( .D(n245), .CLK(wclk), .Q(\fiforeg[6][3] ) );
  DFFPOSX1 \fiforeg_reg[5][3]  ( .D(n246), .CLK(wclk), .Q(\fiforeg[5][3] ) );
  DFFPOSX1 \fiforeg_reg[4][3]  ( .D(n247), .CLK(wclk), .Q(\fiforeg[4][3] ) );
  DFFPOSX1 \fiforeg_reg[3][3]  ( .D(n248), .CLK(wclk), .Q(\fiforeg[3][3] ) );
  DFFPOSX1 \fiforeg_reg[2][3]  ( .D(n249), .CLK(wclk), .Q(\fiforeg[2][3] ) );
  DFFPOSX1 \fiforeg_reg[1][3]  ( .D(n250), .CLK(wclk), .Q(\fiforeg[1][3] ) );
  DFFPOSX1 \fiforeg_reg[0][3]  ( .D(n251), .CLK(wclk), .Q(\fiforeg[0][3] ) );
  DFFPOSX1 \fiforeg_reg[7][2]  ( .D(n252), .CLK(wclk), .Q(\fiforeg[7][2] ) );
  DFFPOSX1 \fiforeg_reg[6][2]  ( .D(n253), .CLK(wclk), .Q(\fiforeg[6][2] ) );
  DFFPOSX1 \fiforeg_reg[5][2]  ( .D(n254), .CLK(wclk), .Q(\fiforeg[5][2] ) );
  DFFPOSX1 \fiforeg_reg[4][2]  ( .D(n255), .CLK(wclk), .Q(\fiforeg[4][2] ) );
  DFFPOSX1 \fiforeg_reg[3][2]  ( .D(n256), .CLK(wclk), .Q(\fiforeg[3][2] ) );
  DFFPOSX1 \fiforeg_reg[2][2]  ( .D(n257), .CLK(wclk), .Q(\fiforeg[2][2] ) );
  DFFPOSX1 \fiforeg_reg[1][2]  ( .D(n258), .CLK(wclk), .Q(\fiforeg[1][2] ) );
  DFFPOSX1 \fiforeg_reg[0][2]  ( .D(n259), .CLK(wclk), .Q(\fiforeg[0][2] ) );
  DFFPOSX1 \fiforeg_reg[7][1]  ( .D(n260), .CLK(wclk), .Q(\fiforeg[7][1] ) );
  DFFPOSX1 \fiforeg_reg[6][1]  ( .D(n261), .CLK(wclk), .Q(\fiforeg[6][1] ) );
  DFFPOSX1 \fiforeg_reg[5][1]  ( .D(n262), .CLK(wclk), .Q(\fiforeg[5][1] ) );
  DFFPOSX1 \fiforeg_reg[4][1]  ( .D(n263), .CLK(wclk), .Q(\fiforeg[4][1] ) );
  DFFPOSX1 \fiforeg_reg[3][1]  ( .D(n264), .CLK(wclk), .Q(\fiforeg[3][1] ) );
  DFFPOSX1 \fiforeg_reg[2][1]  ( .D(n265), .CLK(wclk), .Q(\fiforeg[2][1] ) );
  DFFPOSX1 \fiforeg_reg[1][1]  ( .D(n266), .CLK(wclk), .Q(\fiforeg[1][1] ) );
  DFFPOSX1 \fiforeg_reg[0][1]  ( .D(n267), .CLK(wclk), .Q(\fiforeg[0][1] ) );
  DFFPOSX1 \fiforeg_reg[7][0]  ( .D(n275), .CLK(wclk), .Q(\fiforeg[7][0] ) );
  DFFPOSX1 \fiforeg_reg[6][0]  ( .D(n268), .CLK(wclk), .Q(\fiforeg[6][0] ) );
  DFFPOSX1 \fiforeg_reg[5][0]  ( .D(n269), .CLK(wclk), .Q(\fiforeg[5][0] ) );
  DFFPOSX1 \fiforeg_reg[4][0]  ( .D(n270), .CLK(wclk), .Q(\fiforeg[4][0] ) );
  DFFPOSX1 \fiforeg_reg[3][0]  ( .D(n271), .CLK(wclk), .Q(\fiforeg[3][0] ) );
  DFFPOSX1 \fiforeg_reg[2][0]  ( .D(n272), .CLK(wclk), .Q(\fiforeg[2][0] ) );
  DFFPOSX1 \fiforeg_reg[1][0]  ( .D(n273), .CLK(wclk), .Q(\fiforeg[1][0] ) );
  DFFPOSX1 \fiforeg_reg[0][0]  ( .D(n274), .CLK(wclk), .Q(\fiforeg[0][0] ) );
  NAND3X1 U93 ( .A(n92), .B(n93), .C(n94), .Y(rdata[7]) );
  NOR2X1 U94 ( .A(n95), .B(n96), .Y(n94) );
  NAND3X1 U99 ( .A(n101), .B(n102), .C(n103), .Y(rdata[6]) );
  NOR2X1 U100 ( .A(n104), .B(n105), .Y(n103) );
  NAND3X1 U105 ( .A(n106), .B(n107), .C(n108), .Y(rdata[5]) );
  NOR2X1 U106 ( .A(n109), .B(n110), .Y(n108) );
  NAND3X1 U111 ( .A(n111), .B(n112), .C(n113), .Y(rdata[4]) );
  NOR2X1 U112 ( .A(n114), .B(n115), .Y(n113) );
  NAND3X1 U117 ( .A(n116), .B(n117), .C(n118), .Y(rdata[3]) );
  NOR2X1 U118 ( .A(n119), .B(n120), .Y(n118) );
  NAND3X1 U123 ( .A(n121), .B(n122), .C(n123), .Y(rdata[2]) );
  NOR2X1 U124 ( .A(n124), .B(n125), .Y(n123) );
  NAND3X1 U129 ( .A(n126), .B(n127), .C(n128), .Y(rdata[1]) );
  NOR2X1 U130 ( .A(n129), .B(n130), .Y(n128) );
  NAND3X1 U135 ( .A(n131), .B(n132), .C(n133), .Y(rdata[0]) );
  NOR2X1 U136 ( .A(n134), .B(n135), .Y(n133) );
  NAND3X1 U138 ( .A(n5), .B(n337), .C(raddr[2]), .Y(n98) );
  NAND3X1 U139 ( .A(n337), .B(n338), .C(raddr[2]), .Y(n97) );
  NAND3X1 U141 ( .A(raddr[1]), .B(n5), .C(raddr[2]), .Y(n100) );
  NAND3X1 U142 ( .A(raddr[1]), .B(n338), .C(raddr[2]), .Y(n99) );
  NAND3X1 U144 ( .A(n338), .B(n336), .C(raddr[1]), .Y(n136) );
  NAND3X1 U145 ( .A(n5), .B(n336), .C(raddr[1]), .Y(n137) );
  NAND3X1 U147 ( .A(n337), .B(n336), .C(n338), .Y(n138) );
  NAND3X1 U148 ( .A(n337), .B(n336), .C(n5), .Y(n139) );
  INVX4 U2 ( .A(n302), .Y(n58) );
  INVX1 U3 ( .A(wenable), .Y(n1) );
  NOR2X1 U4 ( .A(n306), .B(n307), .Y(n2) );
  INVX1 U5 ( .A(n54), .Y(n3) );
  INVX2 U6 ( .A(n54), .Y(n4) );
  INVX1 U7 ( .A(n54), .Y(n72) );
  BUFX4 U8 ( .A(raddr[0]), .Y(n5) );
  INVX4 U9 ( .A(n58), .Y(n6) );
  INVX4 U10 ( .A(n58), .Y(n59) );
  NAND3X1 U11 ( .A(n312), .B(n311), .C(n310), .Y(n7) );
  NOR2X1 U12 ( .A(n286), .B(n285), .Y(n8) );
  NOR2X1 U13 ( .A(n188), .B(n187), .Y(n9) );
  NAND3X1 U14 ( .A(n290), .B(n288), .C(n289), .Y(n10) );
  NAND3X1 U15 ( .A(n209), .B(n207), .C(n208), .Y(n11) );
  NAND3X1 U16 ( .A(n191), .B(n190), .C(n192), .Y(n12) );
  NAND3X1 U17 ( .A(n175), .B(n173), .C(n174), .Y(n13) );
  NAND2X1 U18 ( .A(n7), .B(n314), .Y(n14) );
  NAND2X1 U19 ( .A(n315), .B(n314), .Y(n15) );
  NAND2X1 U20 ( .A(n53), .B(n70), .Y(n16) );
  INVX4 U21 ( .A(n51), .Y(n70) );
  INVX1 U22 ( .A(n68), .Y(n17) );
  INVX4 U23 ( .A(n68), .Y(n316) );
  NAND2X1 U24 ( .A(n161), .B(n160), .Y(n18) );
  NAND2X1 U25 ( .A(n161), .B(n160), .Y(n19) );
  NAND2X1 U26 ( .A(n144), .B(n143), .Y(n20) );
  NAND2X1 U27 ( .A(n144), .B(n143), .Y(n21) );
  NAND2X1 U28 ( .A(n79), .B(n78), .Y(n22) );
  NAND2X1 U29 ( .A(n79), .B(n78), .Y(n23) );
  NAND2X1 U30 ( .A(n10), .B(n292), .Y(n24) );
  NAND2X1 U31 ( .A(n293), .B(n292), .Y(n25) );
  NAND2X1 U32 ( .A(n11), .B(n211), .Y(n26) );
  NAND2X1 U33 ( .A(n276), .B(n211), .Y(n27) );
  NAND2X1 U34 ( .A(n12), .B(n194), .Y(n28) );
  NAND2X1 U35 ( .A(n195), .B(n194), .Y(n29) );
  NAND2X1 U36 ( .A(n13), .B(n177), .Y(n30) );
  NAND2X1 U37 ( .A(n178), .B(n177), .Y(n31) );
  NAND2X1 U38 ( .A(n7), .B(n314), .Y(n32) );
  NAND2X1 U39 ( .A(n315), .B(n314), .Y(n33) );
  INVX2 U40 ( .A(n67), .Y(n34) );
  INVX4 U41 ( .A(n34), .Y(n35) );
  NAND2X1 U42 ( .A(n10), .B(n292), .Y(n36) );
  NAND2X1 U43 ( .A(n293), .B(n292), .Y(n37) );
  NAND2X1 U44 ( .A(n11), .B(n211), .Y(n38) );
  NAND2X1 U45 ( .A(n276), .B(n211), .Y(n39) );
  NAND2X1 U46 ( .A(n12), .B(n194), .Y(n40) );
  NAND2X1 U47 ( .A(n195), .B(n194), .Y(n41) );
  NAND2X1 U48 ( .A(n13), .B(n177), .Y(n42) );
  NAND2X1 U49 ( .A(n178), .B(n177), .Y(n43) );
  NAND2X1 U50 ( .A(n161), .B(n160), .Y(n44) );
  NAND2X1 U51 ( .A(n161), .B(n160), .Y(n45) );
  NAND2X1 U52 ( .A(n144), .B(n143), .Y(n46) );
  NAND2X1 U53 ( .A(n144), .B(n143), .Y(n47) );
  NAND2X1 U54 ( .A(n79), .B(n78), .Y(n48) );
  NAND2X1 U55 ( .A(n79), .B(n78), .Y(n49) );
  INVX4 U56 ( .A(n62), .Y(n50) );
  INVX8 U57 ( .A(n35), .Y(n318) );
  INVX1 U58 ( .A(waddr[1]), .Y(n71) );
  BUFX4 U59 ( .A(waddr[2]), .Y(n51) );
  BUFX4 U60 ( .A(waddr[1]), .Y(n55) );
  NAND2X1 U61 ( .A(n54), .B(n55), .Y(n52) );
  AND2X2 U62 ( .A(n53), .B(n70), .Y(n62) );
  INVX2 U63 ( .A(n52), .Y(n53) );
  INVX4 U64 ( .A(n305), .Y(n60) );
  INVX4 U65 ( .A(n308), .Y(n63) );
  INVX2 U66 ( .A(n303), .Y(n56) );
  BUFX4 U67 ( .A(waddr[0]), .Y(n54) );
  INVX8 U68 ( .A(n56), .Y(n57) );
  INVX8 U69 ( .A(n60), .Y(n61) );
  INVX4 U70 ( .A(n69), .Y(n320) );
  INVX8 U71 ( .A(n63), .Y(n64) );
  INVX2 U72 ( .A(\fiforeg[1][0] ), .Y(n80) );
  NAND3X1 U73 ( .A(n51), .B(n54), .C(n71), .Y(n303) );
  INVX2 U74 ( .A(\fiforeg[5][0] ), .Y(n86) );
  NAND3X1 U75 ( .A(n51), .B(n55), .C(n3), .Y(n302) );
  INVX2 U76 ( .A(\fiforeg[6][0] ), .Y(n85) );
  OAI22X1 U77 ( .A(n57), .B(n86), .C(n6), .D(n85), .Y(n66) );
  NAND3X1 U78 ( .A(n54), .B(n55), .C(n51), .Y(n305) );
  INVX2 U79 ( .A(\fiforeg[7][0] ), .Y(n84) );
  INVX2 U80 ( .A(wenable), .Y(n304) );
  OAI21X1 U81 ( .A(n61), .B(n84), .C(n304), .Y(n65) );
  NOR2X1 U82 ( .A(n65), .B(n66), .Y(n76) );
  NAND3X1 U83 ( .A(n72), .B(n70), .C(n71), .Y(n67) );
  NAND3X1 U84 ( .A(n54), .B(n71), .C(n70), .Y(n68) );
  AOI22X1 U85 ( .A(\fiforeg[0][0] ), .B(n318), .C(\fiforeg[1][0] ), .D(n316), 
        .Y(n75) );
  NAND3X1 U86 ( .A(n55), .B(n4), .C(n70), .Y(n69) );
  INVX2 U87 ( .A(\fiforeg[3][0] ), .Y(n83) );
  NAND3X1 U88 ( .A(n51), .B(n4), .C(n71), .Y(n308) );
  INVX2 U89 ( .A(\fiforeg[4][0] ), .Y(n87) );
  OAI22X1 U90 ( .A(n16), .B(n83), .C(n64), .D(n87), .Y(n73) );
  AOI21X1 U91 ( .A(\fiforeg[2][0] ), .B(n320), .C(n73), .Y(n74) );
  NAND3X1 U92 ( .A(n76), .B(n75), .C(n74), .Y(n79) );
  INVX2 U95 ( .A(wdata[0]), .Y(n77) );
  NAND2X1 U96 ( .A(wenable), .B(n77), .Y(n78) );
  MUX2X1 U97 ( .B(n80), .A(n23), .S(n316), .Y(n273) );
  INVX2 U98 ( .A(\fiforeg[0][0] ), .Y(n81) );
  MUX2X1 U101 ( .B(n81), .A(n49), .S(n318), .Y(n274) );
  INVX2 U102 ( .A(\fiforeg[2][0] ), .Y(n82) );
  MUX2X1 U103 ( .B(n82), .A(n22), .S(n320), .Y(n272) );
  INVX2 U104 ( .A(n64), .Y(n322) );
  MUX2X1 U107 ( .B(n87), .A(n23), .S(n322), .Y(n270) );
  INVX2 U108 ( .A(n50), .Y(n323) );
  MUX2X1 U109 ( .B(n83), .A(n48), .S(n323), .Y(n271) );
  INVX2 U110 ( .A(n61), .Y(n325) );
  MUX2X1 U113 ( .B(n84), .A(n22), .S(n325), .Y(n275) );
  INVX2 U114 ( .A(n57), .Y(n326) );
  MUX2X1 U115 ( .B(n86), .A(n49), .S(n326), .Y(n269) );
  INVX2 U116 ( .A(n6), .Y(n327) );
  MUX2X1 U119 ( .B(n85), .A(n48), .S(n327), .Y(n268) );
  OAI22X1 U120 ( .A(n99), .B(n85), .C(n100), .D(n84), .Y(n134) );
  OAI22X1 U121 ( .A(n97), .B(n87), .C(n98), .D(n86), .Y(n135) );
  AOI22X1 U122 ( .A(\fiforeg[0][0] ), .B(n333), .C(\fiforeg[1][0] ), .D(n332), 
        .Y(n131) );
  AOI22X1 U125 ( .A(\fiforeg[2][0] ), .B(n335), .C(\fiforeg[3][0] ), .D(n334), 
        .Y(n132) );
  INVX2 U126 ( .A(\fiforeg[1][1] ), .Y(n145) );
  INVX2 U127 ( .A(\fiforeg[5][1] ), .Y(n151) );
  INVX2 U128 ( .A(\fiforeg[6][1] ), .Y(n150) );
  OAI22X1 U131 ( .A(n57), .B(n151), .C(n6), .D(n150), .Y(n89) );
  INVX2 U132 ( .A(\fiforeg[7][1] ), .Y(n149) );
  OAI21X1 U133 ( .A(n61), .B(n149), .C(n1), .Y(n88) );
  NOR2X1 U134 ( .A(n88), .B(n89), .Y(n141) );
  AOI22X1 U137 ( .A(\fiforeg[0][1] ), .B(n318), .C(\fiforeg[1][1] ), .D(n316), 
        .Y(n140) );
  INVX2 U140 ( .A(\fiforeg[3][1] ), .Y(n148) );
  INVX2 U143 ( .A(\fiforeg[4][1] ), .Y(n152) );
  OAI22X1 U146 ( .A(n16), .B(n148), .C(n64), .D(n152), .Y(n90) );
  AOI21X1 U149 ( .A(\fiforeg[2][1] ), .B(n320), .C(n90), .Y(n91) );
  NAND3X1 U150 ( .A(n141), .B(n140), .C(n91), .Y(n144) );
  INVX2 U151 ( .A(wdata[1]), .Y(n142) );
  NAND2X1 U152 ( .A(wenable), .B(n142), .Y(n143) );
  MUX2X1 U153 ( .B(n145), .A(n21), .S(n316), .Y(n266) );
  INVX2 U154 ( .A(\fiforeg[0][1] ), .Y(n146) );
  MUX2X1 U155 ( .B(n146), .A(n21), .S(n318), .Y(n267) );
  INVX2 U156 ( .A(\fiforeg[2][1] ), .Y(n147) );
  MUX2X1 U157 ( .B(n147), .A(n20), .S(n320), .Y(n265) );
  MUX2X1 U158 ( .B(n152), .A(n20), .S(n322), .Y(n263) );
  MUX2X1 U159 ( .B(n148), .A(n46), .S(n323), .Y(n264) );
  MUX2X1 U160 ( .B(n149), .A(n46), .S(n325), .Y(n260) );
  MUX2X1 U161 ( .B(n151), .A(n47), .S(n326), .Y(n262) );
  MUX2X1 U162 ( .B(n150), .A(n47), .S(n327), .Y(n261) );
  OAI22X1 U163 ( .A(n99), .B(n150), .C(n100), .D(n149), .Y(n129) );
  OAI22X1 U164 ( .A(n97), .B(n152), .C(n98), .D(n151), .Y(n130) );
  AOI22X1 U165 ( .A(\fiforeg[0][1] ), .B(n333), .C(\fiforeg[1][1] ), .D(n332), 
        .Y(n126) );
  AOI22X1 U166 ( .A(\fiforeg[2][1] ), .B(n335), .C(\fiforeg[3][1] ), .D(n334), 
        .Y(n127) );
  INVX2 U167 ( .A(\fiforeg[1][2] ), .Y(n162) );
  INVX2 U168 ( .A(\fiforeg[5][2] ), .Y(n168) );
  INVX2 U169 ( .A(\fiforeg[6][2] ), .Y(n167) );
  OAI22X1 U170 ( .A(n57), .B(n168), .C(n6), .D(n167), .Y(n154) );
  INVX2 U171 ( .A(\fiforeg[7][2] ), .Y(n166) );
  OAI21X1 U172 ( .A(n61), .B(n166), .C(n304), .Y(n153) );
  NOR2X1 U173 ( .A(n153), .B(n154), .Y(n158) );
  AOI22X1 U174 ( .A(\fiforeg[0][2] ), .B(n318), .C(\fiforeg[1][2] ), .D(n316), 
        .Y(n157) );
  INVX2 U175 ( .A(\fiforeg[3][2] ), .Y(n165) );
  INVX2 U176 ( .A(\fiforeg[4][2] ), .Y(n169) );
  OAI22X1 U177 ( .A(n16), .B(n165), .C(n64), .D(n169), .Y(n155) );
  AOI21X1 U178 ( .A(\fiforeg[2][2] ), .B(n320), .C(n155), .Y(n156) );
  NAND3X1 U179 ( .A(n158), .B(n157), .C(n156), .Y(n161) );
  INVX2 U180 ( .A(wdata[2]), .Y(n159) );
  NAND2X1 U181 ( .A(wenable), .B(n159), .Y(n160) );
  MUX2X1 U182 ( .B(n162), .A(n19), .S(n316), .Y(n258) );
  INVX2 U183 ( .A(\fiforeg[0][2] ), .Y(n163) );
  MUX2X1 U184 ( .B(n163), .A(n44), .S(n318), .Y(n259) );
  INVX2 U185 ( .A(\fiforeg[2][2] ), .Y(n164) );
  MUX2X1 U186 ( .B(n164), .A(n19), .S(n320), .Y(n257) );
  MUX2X1 U187 ( .B(n169), .A(n18), .S(n322), .Y(n255) );
  MUX2X1 U188 ( .B(n165), .A(n18), .S(n323), .Y(n256) );
  MUX2X1 U189 ( .B(n166), .A(n45), .S(n325), .Y(n252) );
  MUX2X1 U190 ( .B(n168), .A(n45), .S(n326), .Y(n254) );
  MUX2X1 U191 ( .B(n167), .A(n44), .S(n327), .Y(n253) );
  OAI22X1 U192 ( .A(n99), .B(n167), .C(n100), .D(n166), .Y(n124) );
  OAI22X1 U193 ( .A(n97), .B(n169), .C(n98), .D(n168), .Y(n125) );
  AOI22X1 U194 ( .A(\fiforeg[0][2] ), .B(n333), .C(\fiforeg[1][2] ), .D(n332), 
        .Y(n121) );
  AOI22X1 U195 ( .A(\fiforeg[2][2] ), .B(n335), .C(\fiforeg[3][2] ), .D(n334), 
        .Y(n122) );
  INVX2 U196 ( .A(\fiforeg[1][3] ), .Y(n179) );
  INVX2 U197 ( .A(\fiforeg[5][3] ), .Y(n185) );
  INVX2 U198 ( .A(\fiforeg[6][3] ), .Y(n184) );
  OAI22X1 U199 ( .A(n57), .B(n185), .C(n59), .D(n184), .Y(n171) );
  INVX2 U200 ( .A(\fiforeg[7][3] ), .Y(n183) );
  OAI21X1 U201 ( .A(n61), .B(n183), .C(n304), .Y(n170) );
  NOR2X1 U202 ( .A(n170), .B(n171), .Y(n175) );
  AOI22X1 U203 ( .A(\fiforeg[0][3] ), .B(n318), .C(\fiforeg[1][3] ), .D(n316), 
        .Y(n174) );
  INVX2 U204 ( .A(\fiforeg[3][3] ), .Y(n182) );
  INVX2 U205 ( .A(\fiforeg[4][3] ), .Y(n186) );
  OAI22X1 U206 ( .A(n50), .B(n182), .C(n64), .D(n186), .Y(n172) );
  AOI21X1 U207 ( .A(\fiforeg[2][3] ), .B(n320), .C(n172), .Y(n173) );
  NAND3X1 U208 ( .A(n175), .B(n173), .C(n174), .Y(n178) );
  INVX2 U209 ( .A(wdata[3]), .Y(n176) );
  NAND2X1 U210 ( .A(wenable), .B(n176), .Y(n177) );
  MUX2X1 U211 ( .B(n179), .A(n31), .S(n17), .Y(n250) );
  INVX2 U212 ( .A(\fiforeg[0][3] ), .Y(n180) );
  MUX2X1 U213 ( .B(n180), .A(n43), .S(n318), .Y(n251) );
  INVX2 U214 ( .A(\fiforeg[2][3] ), .Y(n181) );
  MUX2X1 U215 ( .B(n181), .A(n30), .S(n320), .Y(n249) );
  MUX2X1 U216 ( .B(n186), .A(n31), .S(n322), .Y(n247) );
  MUX2X1 U217 ( .B(n182), .A(n42), .S(n323), .Y(n248) );
  MUX2X1 U218 ( .B(n183), .A(n30), .S(n325), .Y(n244) );
  MUX2X1 U219 ( .B(n185), .A(n43), .S(n326), .Y(n246) );
  MUX2X1 U220 ( .B(n184), .A(n42), .S(n327), .Y(n245) );
  OAI22X1 U221 ( .A(n99), .B(n184), .C(n100), .D(n183), .Y(n119) );
  OAI22X1 U222 ( .A(n97), .B(n186), .C(n98), .D(n185), .Y(n120) );
  AOI22X1 U223 ( .A(\fiforeg[0][3] ), .B(n333), .C(\fiforeg[1][3] ), .D(n332), 
        .Y(n116) );
  AOI22X1 U224 ( .A(\fiforeg[2][3] ), .B(n335), .C(\fiforeg[3][3] ), .D(n334), 
        .Y(n117) );
  INVX2 U225 ( .A(\fiforeg[1][4] ), .Y(n196) );
  INVX2 U226 ( .A(\fiforeg[5][4] ), .Y(n202) );
  INVX2 U227 ( .A(\fiforeg[6][4] ), .Y(n201) );
  OAI22X1 U228 ( .A(n57), .B(n202), .C(n6), .D(n201), .Y(n188) );
  INVX2 U229 ( .A(\fiforeg[7][4] ), .Y(n200) );
  OAI21X1 U230 ( .A(n61), .B(n200), .C(n1), .Y(n187) );
  NOR2X1 U231 ( .A(n188), .B(n187), .Y(n192) );
  AOI22X1 U232 ( .A(\fiforeg[0][4] ), .B(n318), .C(\fiforeg[1][4] ), .D(n316), 
        .Y(n191) );
  INVX2 U233 ( .A(\fiforeg[3][4] ), .Y(n199) );
  INVX2 U234 ( .A(\fiforeg[4][4] ), .Y(n203) );
  OAI22X1 U235 ( .A(n50), .B(n199), .C(n64), .D(n203), .Y(n189) );
  AOI21X1 U236 ( .A(\fiforeg[2][4] ), .B(n320), .C(n189), .Y(n190) );
  NAND3X1 U237 ( .A(n191), .B(n190), .C(n9), .Y(n195) );
  INVX2 U238 ( .A(wdata[4]), .Y(n193) );
  NAND2X1 U239 ( .A(wenable), .B(n193), .Y(n194) );
  MUX2X1 U240 ( .B(n196), .A(n29), .S(n17), .Y(n242) );
  INVX2 U241 ( .A(\fiforeg[0][4] ), .Y(n197) );
  MUX2X1 U242 ( .B(n197), .A(n29), .S(n318), .Y(n243) );
  INVX2 U243 ( .A(\fiforeg[2][4] ), .Y(n198) );
  MUX2X1 U244 ( .B(n198), .A(n28), .S(n320), .Y(n241) );
  MUX2X1 U245 ( .B(n203), .A(n28), .S(n322), .Y(n239) );
  MUX2X1 U246 ( .B(n199), .A(n41), .S(n323), .Y(n240) );
  MUX2X1 U247 ( .B(n200), .A(n41), .S(n325), .Y(n236) );
  MUX2X1 U248 ( .B(n202), .A(n40), .S(n326), .Y(n238) );
  MUX2X1 U249 ( .B(n201), .A(n40), .S(n327), .Y(n237) );
  OAI22X1 U250 ( .A(n99), .B(n201), .C(n100), .D(n200), .Y(n114) );
  OAI22X1 U251 ( .A(n97), .B(n203), .C(n98), .D(n202), .Y(n115) );
  AOI22X1 U252 ( .A(\fiforeg[0][4] ), .B(n333), .C(\fiforeg[1][4] ), .D(n332), 
        .Y(n111) );
  AOI22X1 U253 ( .A(\fiforeg[2][4] ), .B(n335), .C(\fiforeg[3][4] ), .D(n334), 
        .Y(n112) );
  INVX2 U254 ( .A(\fiforeg[1][5] ), .Y(n277) );
  INVX2 U255 ( .A(\fiforeg[5][5] ), .Y(n283) );
  INVX2 U256 ( .A(\fiforeg[6][5] ), .Y(n282) );
  OAI22X1 U257 ( .A(n57), .B(n283), .C(n59), .D(n282), .Y(n205) );
  INVX2 U258 ( .A(\fiforeg[7][5] ), .Y(n281) );
  OAI21X1 U259 ( .A(n61), .B(n281), .C(n304), .Y(n204) );
  NOR2X1 U260 ( .A(n204), .B(n205), .Y(n209) );
  AOI22X1 U261 ( .A(\fiforeg[0][5] ), .B(n318), .C(\fiforeg[1][5] ), .D(n316), 
        .Y(n208) );
  INVX2 U262 ( .A(\fiforeg[3][5] ), .Y(n280) );
  INVX2 U263 ( .A(\fiforeg[4][5] ), .Y(n284) );
  OAI22X1 U264 ( .A(n50), .B(n280), .C(n64), .D(n284), .Y(n206) );
  AOI21X1 U265 ( .A(\fiforeg[2][5] ), .B(n320), .C(n206), .Y(n207) );
  NAND3X1 U266 ( .A(n209), .B(n207), .C(n208), .Y(n276) );
  INVX2 U267 ( .A(wdata[5]), .Y(n210) );
  NAND2X1 U268 ( .A(wenable), .B(n210), .Y(n211) );
  MUX2X1 U269 ( .B(n277), .A(n27), .S(n17), .Y(n234) );
  INVX2 U270 ( .A(\fiforeg[0][5] ), .Y(n278) );
  MUX2X1 U271 ( .B(n278), .A(n39), .S(n318), .Y(n235) );
  INVX2 U272 ( .A(\fiforeg[2][5] ), .Y(n279) );
  MUX2X1 U273 ( .B(n279), .A(n26), .S(n320), .Y(n233) );
  MUX2X1 U274 ( .B(n284), .A(n27), .S(n322), .Y(n231) );
  MUX2X1 U275 ( .B(n280), .A(n38), .S(n323), .Y(n232) );
  MUX2X1 U276 ( .B(n281), .A(n26), .S(n325), .Y(n228) );
  MUX2X1 U277 ( .B(n283), .A(n39), .S(n326), .Y(n230) );
  MUX2X1 U278 ( .B(n282), .A(n38), .S(n327), .Y(n229) );
  OAI22X1 U279 ( .A(n99), .B(n282), .C(n100), .D(n281), .Y(n109) );
  OAI22X1 U280 ( .A(n97), .B(n284), .C(n98), .D(n283), .Y(n110) );
  AOI22X1 U281 ( .A(\fiforeg[0][5] ), .B(n333), .C(\fiforeg[1][5] ), .D(n332), 
        .Y(n106) );
  AOI22X1 U282 ( .A(\fiforeg[2][5] ), .B(n335), .C(\fiforeg[3][5] ), .D(n334), 
        .Y(n107) );
  INVX2 U283 ( .A(\fiforeg[1][6] ), .Y(n294) );
  INVX2 U284 ( .A(\fiforeg[5][6] ), .Y(n300) );
  INVX2 U285 ( .A(\fiforeg[6][6] ), .Y(n299) );
  OAI22X1 U286 ( .A(n57), .B(n300), .C(n299), .D(n59), .Y(n286) );
  INVX2 U287 ( .A(\fiforeg[7][6] ), .Y(n298) );
  OAI21X1 U288 ( .A(n61), .B(n298), .C(n1), .Y(n285) );
  NOR2X1 U289 ( .A(n286), .B(n285), .Y(n290) );
  AOI22X1 U290 ( .A(\fiforeg[0][6] ), .B(n318), .C(\fiforeg[1][6] ), .D(n316), 
        .Y(n289) );
  INVX2 U291 ( .A(\fiforeg[3][6] ), .Y(n297) );
  INVX2 U292 ( .A(\fiforeg[4][6] ), .Y(n301) );
  OAI22X1 U293 ( .A(n50), .B(n297), .C(n64), .D(n301), .Y(n287) );
  AOI21X1 U294 ( .A(\fiforeg[2][6] ), .B(n320), .C(n287), .Y(n288) );
  NAND3X1 U295 ( .A(n8), .B(n288), .C(n289), .Y(n293) );
  INVX2 U296 ( .A(wdata[6]), .Y(n291) );
  NAND2X1 U297 ( .A(wenable), .B(n291), .Y(n292) );
  MUX2X1 U298 ( .B(n294), .A(n25), .S(n17), .Y(n226) );
  INVX2 U299 ( .A(\fiforeg[0][6] ), .Y(n295) );
  MUX2X1 U300 ( .B(n295), .A(n25), .S(n318), .Y(n227) );
  INVX2 U301 ( .A(\fiforeg[2][6] ), .Y(n296) );
  MUX2X1 U302 ( .B(n296), .A(n24), .S(n320), .Y(n225) );
  MUX2X1 U303 ( .B(n301), .A(n24), .S(n322), .Y(n223) );
  MUX2X1 U304 ( .B(n297), .A(n37), .S(n323), .Y(n224) );
  MUX2X1 U305 ( .B(n298), .A(n37), .S(n325), .Y(n220) );
  MUX2X1 U306 ( .B(n300), .A(n36), .S(n326), .Y(n222) );
  MUX2X1 U307 ( .B(n299), .A(n36), .S(n327), .Y(n221) );
  OAI22X1 U308 ( .A(n99), .B(n299), .C(n100), .D(n298), .Y(n104) );
  OAI22X1 U309 ( .A(n97), .B(n301), .C(n98), .D(n300), .Y(n105) );
  AOI22X1 U310 ( .A(\fiforeg[0][6] ), .B(n333), .C(\fiforeg[1][6] ), .D(n332), 
        .Y(n101) );
  AOI22X1 U311 ( .A(\fiforeg[2][6] ), .B(n335), .C(\fiforeg[3][6] ), .D(n334), 
        .Y(n102) );
  INVX2 U312 ( .A(\fiforeg[1][7] ), .Y(n317) );
  INVX2 U313 ( .A(\fiforeg[5][7] ), .Y(n330) );
  INVX2 U314 ( .A(\fiforeg[6][7] ), .Y(n329) );
  OAI22X1 U315 ( .A(n330), .B(n57), .C(n329), .D(n59), .Y(n307) );
  INVX2 U316 ( .A(\fiforeg[7][7] ), .Y(n328) );
  OAI21X1 U317 ( .A(n328), .B(n61), .C(n304), .Y(n306) );
  NOR2X1 U318 ( .A(n306), .B(n307), .Y(n312) );
  AOI22X1 U319 ( .A(n318), .B(\fiforeg[0][7] ), .C(n316), .D(\fiforeg[1][7] ), 
        .Y(n311) );
  INVX2 U320 ( .A(\fiforeg[3][7] ), .Y(n324) );
  INVX2 U321 ( .A(\fiforeg[4][7] ), .Y(n331) );
  OAI22X1 U322 ( .A(n324), .B(n50), .C(n64), .D(n331), .Y(n309) );
  AOI21X1 U323 ( .A(n320), .B(\fiforeg[2][7] ), .C(n309), .Y(n310) );
  NAND3X1 U324 ( .A(n2), .B(n311), .C(n310), .Y(n315) );
  INVX2 U325 ( .A(wdata[7]), .Y(n313) );
  NAND2X1 U326 ( .A(wenable), .B(n313), .Y(n314) );
  MUX2X1 U327 ( .B(n317), .A(n15), .S(n316), .Y(n218) );
  INVX2 U328 ( .A(\fiforeg[0][7] ), .Y(n319) );
  MUX2X1 U329 ( .B(n319), .A(n15), .S(n318), .Y(n219) );
  INVX2 U330 ( .A(\fiforeg[2][7] ), .Y(n321) );
  MUX2X1 U331 ( .B(n321), .A(n14), .S(n320), .Y(n217) );
  MUX2X1 U332 ( .B(n331), .A(n14), .S(n322), .Y(n215) );
  MUX2X1 U333 ( .B(n324), .A(n32), .S(n323), .Y(n216) );
  MUX2X1 U334 ( .B(n328), .A(n32), .S(n325), .Y(n212) );
  MUX2X1 U335 ( .B(n330), .A(n33), .S(n326), .Y(n214) );
  MUX2X1 U336 ( .B(n329), .A(n33), .S(n327), .Y(n213) );
  OAI22X1 U337 ( .A(n99), .B(n329), .C(n100), .D(n328), .Y(n95) );
  OAI22X1 U338 ( .A(n97), .B(n331), .C(n98), .D(n330), .Y(n96) );
  AOI22X1 U339 ( .A(\fiforeg[0][7] ), .B(n333), .C(\fiforeg[1][7] ), .D(n332), 
        .Y(n92) );
  AOI22X1 U340 ( .A(\fiforeg[2][7] ), .B(n335), .C(\fiforeg[3][7] ), .D(n334), 
        .Y(n93) );
  INVX2 U341 ( .A(n139), .Y(n332) );
  INVX2 U342 ( .A(n138), .Y(n333) );
  INVX2 U343 ( .A(n137), .Y(n334) );
  INVX2 U344 ( .A(n136), .Y(n335) );
  INVX2 U345 ( .A(raddr[2]), .Y(n336) );
  INVX2 U346 ( .A(raddr[1]), .Y(n337) );
  INVX2 U347 ( .A(raddr[0]), .Y(n338) );
endmodule


module write_ptr ( wclk, rst_n, wenable, wptr, wptr_nxt );
  output [3:0] wptr;
  output [3:0] wptr_nxt;
  input wclk, rst_n, wenable;
  wire   n2, n3, n9, n13, n14, n15, n16, n17, n18, n19, n20, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42;
  wire   [2:0] binary_nxt;
  wire   [3:0] binary_r;

  DFFSR \binary_r_reg[0]  ( .D(n24), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        binary_r[0]) );
  DFFSR \binary_r_reg[1]  ( .D(binary_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[1]) );
  DFFSR \binary_r_reg[2]  ( .D(binary_nxt[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[2]) );
  DFFSR \binary_r_reg[3]  ( .D(wptr_nxt[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[3]) );
  DFFSR \gray_r_reg[3]  ( .D(wptr_nxt[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[3]) );
  DFFSR \gray_r_reg[0]  ( .D(n14), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(wptr[0]) );
  DFFSR \gray_r_reg[2]  ( .D(wptr_nxt[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[2]) );
  DFFSR \gray_r_reg[1]  ( .D(wptr_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[1]) );
  XOR2X1 U4 ( .A(binary_r[3]), .B(n35), .Y(n2) );
  INVX4 U5 ( .A(n2), .Y(wptr_nxt[3]) );
  INVX2 U11 ( .A(n24), .Y(n18) );
  AND2X1 U12 ( .A(n39), .B(n17), .Y(n3) );
  AND2X1 U13 ( .A(n36), .B(binary_r[3]), .Y(n9) );
  INVX1 U14 ( .A(n38), .Y(n27) );
  BUFX2 U15 ( .A(binary_r[0]), .Y(n19) );
  INVX2 U16 ( .A(wenable), .Y(n30) );
  INVX1 U19 ( .A(wptr_nxt[0]), .Y(n13) );
  INVX1 U20 ( .A(n13), .Y(n14) );
  OAI21X1 U21 ( .A(n17), .B(n19), .C(n28), .Y(n15) );
  INVX2 U22 ( .A(binary_r[1]), .Y(n16) );
  INVX4 U23 ( .A(n16), .Y(n17) );
  XOR2X1 U24 ( .A(n29), .B(n18), .Y(wptr_nxt[0]) );
  XOR2X1 U25 ( .A(n34), .B(n15), .Y(wptr_nxt[1]) );
  INVX1 U26 ( .A(n29), .Y(binary_nxt[1]) );
  NAND2X1 U27 ( .A(binary_r[1]), .B(binary_r[0]), .Y(n20) );
  NAND2X1 U28 ( .A(n25), .B(n3), .Y(n40) );
  INVX1 U29 ( .A(binary_r[3]), .Y(n39) );
  NAND2X1 U30 ( .A(n30), .B(n9), .Y(n42) );
  AND2X2 U31 ( .A(wenable), .B(n27), .Y(n23) );
  XOR2X1 U32 ( .A(n19), .B(wenable), .Y(n24) );
  AND2X2 U33 ( .A(wenable), .B(binary_r[0]), .Y(n25) );
  BUFX4 U34 ( .A(binary_r[2]), .Y(n26) );
  NAND2X1 U35 ( .A(binary_r[1]), .B(binary_r[0]), .Y(n38) );
  AOI21X1 U36 ( .A(n30), .B(n16), .C(n23), .Y(n28) );
  OAI21X1 U37 ( .A(n17), .B(n19), .C(n28), .Y(n29) );
  NAND3X1 U38 ( .A(n26), .B(n17), .C(n25), .Y(n33) );
  INVX2 U39 ( .A(n26), .Y(n36) );
  NAND2X1 U40 ( .A(n20), .B(n36), .Y(n32) );
  NAND2X1 U41 ( .A(n30), .B(n36), .Y(n31) );
  NAND3X1 U42 ( .A(n33), .B(n32), .C(n31), .Y(n34) );
  INVX2 U43 ( .A(n34), .Y(binary_nxt[2]) );
  NAND2X1 U44 ( .A(n26), .B(n23), .Y(n35) );
  XOR2X1 U45 ( .A(binary_r[3]), .B(n26), .Y(n37) );
  OAI21X1 U46 ( .A(n26), .B(n20), .C(n37), .Y(n41) );
  NAND3X1 U47 ( .A(n42), .B(n41), .C(n40), .Y(wptr_nxt[2]) );
endmodule


module write_fifo_ctrl ( wclk, rst_n, wenable, rptr, wenable_fifo, wptr, waddr, 
        full_flag );
  input [3:0] rptr;
  output [3:0] wptr;
  output [2:0] waddr;
  input wclk, rst_n, wenable;
  output wenable_fifo, full_flag;
  wire   \gray_wptr[2] , N5, n1, n3, n16, n17, n18, n19, n20, n21, n22;
  wire   [3:0] wptr_nxt;
  wire   [3:0] wrptr_r2;
  wire   [3:0] wrptr_r1;

  DFFSR full_flag_r_reg ( .D(N5), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        full_flag) );
  DFFSR \waddr_reg[2]  ( .D(\gray_wptr[2] ), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(waddr[2]) );
  DFFSR \waddr_reg[1]  ( .D(wptr_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        waddr[1]) );
  DFFSR \waddr_reg[0]  ( .D(wptr_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        waddr[0]) );
  write_ptr WPU1 ( .wclk(wclk), .rst_n(rst_n), .wenable(n1), .wptr(wptr), 
        .wptr_nxt(wptr_nxt) );
  DFFSR \wrptr_r2_reg[3]  ( .D(wrptr_r1[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[3]) );
  DFFSR \wrptr_r2_reg[2]  ( .D(wrptr_r1[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[2]) );
  DFFSR \wrptr_r2_reg[1]  ( .D(wrptr_r1[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[1]) );
  DFFSR \wrptr_r2_reg[0]  ( .D(wrptr_r1[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[0]) );
  DFFSR \wrptr_r1_reg[3]  ( .D(rptr[3]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[3]) );
  DFFSR \wrptr_r1_reg[2]  ( .D(rptr[2]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[2]) );
  DFFSR \wrptr_r1_reg[1]  ( .D(rptr[1]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[1]) );
  DFFSR \wrptr_r1_reg[0]  ( .D(rptr[0]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[0]) );
  AND2X2 U7 ( .A(n22), .B(wenable), .Y(n1) );
  AND2X2 U8 ( .A(wenable), .B(n22), .Y(wenable_fifo) );
  XOR2X1 U9 ( .A(wptr_nxt[3]), .B(wrptr_r2[3]), .Y(n19) );
  XOR2X1 U10 ( .A(wptr_nxt[3]), .B(n3), .Y(n18) );
  XNOR2X1 U11 ( .A(wptr_nxt[2]), .B(n16), .Y(n3) );
  XOR2X1 U20 ( .A(wrptr_r2[3]), .B(wrptr_r2[2]), .Y(n16) );
  INVX1 U21 ( .A(full_flag), .Y(n22) );
  XOR2X1 U22 ( .A(wptr_nxt[1]), .B(wrptr_r2[1]), .Y(n21) );
  XNOR2X1 U23 ( .A(wptr_nxt[0]), .B(wrptr_r2[0]), .Y(n17) );
  NAND3X1 U24 ( .A(n17), .B(n18), .C(n19), .Y(n20) );
  NOR2X1 U25 ( .A(n21), .B(n20), .Y(N5) );
  XOR2X1 U26 ( .A(wptr_nxt[2]), .B(wptr_nxt[3]), .Y(\gray_wptr[2] ) );
endmodule


module read_ptr ( rclk, rst_n, renable, rptr, rptr_nxt );
  output [3:0] rptr;
  output [3:0] rptr_nxt;
  input rclk, rst_n, renable;
  wire   \binary_nxt[0] , n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n60;
  wire   [3:0] binary_r;

  DFFSR \binary_r_reg[0]  ( .D(\binary_nxt[0] ), .CLK(rclk), .R(rst_n), .S(
        1'b1), .Q(binary_r[0]) );
  DFFSR \binary_r_reg[1]  ( .D(n60), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        binary_r[1]) );
  DFFSR \binary_r_reg[2]  ( .D(n58), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        binary_r[2]) );
  DFFSR \binary_r_reg[3]  ( .D(rptr_nxt[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[3]) );
  DFFSR \gray_r_reg[3]  ( .D(rptr_nxt[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[3]) );
  DFFSR \gray_r_reg[2]  ( .D(rptr_nxt[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[2]) );
  DFFSR \gray_r_reg[1]  ( .D(rptr_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[1]) );
  DFFSR \gray_r_reg[0]  ( .D(n19), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(rptr[0]) );
  INVX2 U11 ( .A(n20), .Y(n23) );
  BUFX2 U12 ( .A(renable), .Y(n9) );
  INVX1 U13 ( .A(renable), .Y(n20) );
  INVX2 U14 ( .A(n11), .Y(n12) );
  INVX2 U15 ( .A(n12), .Y(n10) );
  INVX2 U16 ( .A(binary_r[2]), .Y(n52) );
  INVX1 U17 ( .A(n51), .Y(n11) );
  INVX1 U18 ( .A(renable), .Y(n51) );
  NAND2X1 U19 ( .A(binary_r[3]), .B(n52), .Y(n13) );
  NAND2X1 U20 ( .A(n24), .B(n14), .Y(n56) );
  INVX2 U21 ( .A(n13), .Y(n14) );
  INVX2 U22 ( .A(n35), .Y(n15) );
  INVX2 U23 ( .A(binary_r[1]), .Y(n35) );
  INVX4 U24 ( .A(n52), .Y(n16) );
  AND2X2 U25 ( .A(binary_r[1]), .B(binary_r[0]), .Y(n17) );
  INVX1 U26 ( .A(n17), .Y(n33) );
  INVX1 U27 ( .A(rptr_nxt[0]), .Y(n18) );
  INVX1 U28 ( .A(n18), .Y(n19) );
  INVX1 U29 ( .A(n36), .Y(n27) );
  INVX1 U30 ( .A(renable), .Y(n24) );
  BUFX2 U31 ( .A(n46), .Y(n21) );
  INVX4 U32 ( .A(n28), .Y(n22) );
  INVX1 U33 ( .A(n24), .Y(n25) );
  XOR2X1 U34 ( .A(n10), .B(n22), .Y(\binary_nxt[0] ) );
  INVX2 U35 ( .A(binary_r[0]), .Y(n28) );
  NAND2X1 U36 ( .A(n28), .B(n35), .Y(n36) );
  NAND2X1 U37 ( .A(binary_r[1]), .B(n22), .Y(n54) );
  OAI22X1 U38 ( .A(n12), .B(n54), .C(n15), .D(n10), .Y(n26) );
  NOR2X1 U39 ( .A(n27), .B(n26), .Y(n60) );
  AOI22X1 U40 ( .A(n28), .B(n35), .C(n15), .D(n22), .Y(n31) );
  NAND2X1 U41 ( .A(n36), .B(n54), .Y(n40) );
  OAI21X1 U42 ( .A(n22), .B(n40), .C(n54), .Y(n29) );
  NAND2X1 U43 ( .A(n29), .B(n9), .Y(n30) );
  OAI21X1 U44 ( .A(n31), .B(n23), .C(n30), .Y(n32) );
  INVX2 U45 ( .A(n32), .Y(rptr_nxt[0]) );
  NAND2X1 U46 ( .A(n33), .B(n52), .Y(n39) );
  NAND2X1 U47 ( .A(n16), .B(n17), .Y(n46) );
  OAI22X1 U48 ( .A(n16), .B(n10), .C(n12), .D(n21), .Y(n34) );
  NOR2X1 U49 ( .A(n41), .B(n34), .Y(n58) );
  OAI22X1 U50 ( .A(n35), .B(n52), .C(n16), .D(n15), .Y(n38) );
  NOR2X1 U51 ( .A(n36), .B(n39), .Y(n37) );
  AOI21X1 U52 ( .A(n38), .B(n51), .C(n37), .Y(n44) );
  INVX2 U53 ( .A(n39), .Y(n41) );
  OAI21X1 U54 ( .A(n41), .B(n40), .C(n21), .Y(n42) );
  NAND2X1 U55 ( .A(n42), .B(n25), .Y(n43) );
  AND2X2 U56 ( .A(n44), .B(n43), .Y(rptr_nxt[1]) );
  NAND2X1 U57 ( .A(n17), .B(n16), .Y(n45) );
  NOR2X1 U58 ( .A(n50), .B(n45), .Y(n49) );
  INVX2 U59 ( .A(binary_r[3]), .Y(n50) );
  NAND2X1 U60 ( .A(n46), .B(n50), .Y(n47) );
  OAI21X1 U61 ( .A(renable), .B(binary_r[3]), .C(n47), .Y(n48) );
  AOI21X1 U62 ( .A(n49), .B(n23), .C(n48), .Y(rptr_nxt[3]) );
  NAND3X1 U63 ( .A(n17), .B(n50), .C(n9), .Y(n57) );
  XOR2X1 U64 ( .A(binary_r[3]), .B(n16), .Y(n53) );
  OAI21X1 U65 ( .A(n16), .B(n54), .C(n53), .Y(n55) );
  NAND3X1 U66 ( .A(n57), .B(n55), .C(n56), .Y(rptr_nxt[2]) );
endmodule


module read_fifo_ctrl ( rclk, rst_n, renable, wptr, rptr, raddr, empty_flag );
  input [3:0] wptr;
  output [3:0] rptr;
  output [2:0] raddr;
  input rclk, rst_n, renable;
  output empty_flag;
  wire   renable_p2, \gray_rptr[2] , N3, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25;
  wire   [3:0] rptr_nxt;
  wire   [3:0] rwptr_r2;
  wire   [3:0] rwptr_r1;

  DFFSR empty_flag_r_reg ( .D(N3), .CLK(rclk), .R(1'b1), .S(rst_n), .Q(
        empty_flag) );
  DFFSR \raddr_reg[2]  ( .D(\gray_rptr[2] ), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(raddr[2]) );
  DFFSR \raddr_reg[0]  ( .D(n15), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(raddr[0]) );
  read_ptr RPU1 ( .rclk(rclk), .rst_n(rst_n), .renable(renable_p2), .rptr(rptr), .rptr_nxt(rptr_nxt) );
  DFFSR \rwptr_r2_reg[3]  ( .D(rwptr_r1[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[3]) );
  DFFSR \rwptr_r2_reg[2]  ( .D(rwptr_r1[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[2]) );
  DFFSR \rwptr_r2_reg[1]  ( .D(rwptr_r1[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[1]) );
  DFFSR \rwptr_r2_reg[0]  ( .D(rwptr_r1[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[0]) );
  DFFSR \rwptr_r1_reg[3]  ( .D(wptr[3]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[3]) );
  DFFSR \rwptr_r1_reg[2]  ( .D(wptr[2]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[2]) );
  DFFSR \rwptr_r1_reg[1]  ( .D(wptr[1]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[1]) );
  DFFSR \rwptr_r1_reg[0]  ( .D(wptr[0]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[0]) );
  DFFSR \raddr_reg[1]  ( .D(rptr_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        raddr[1]) );
  INVX2 U4 ( .A(n18), .Y(renable_p2) );
  INVX2 U7 ( .A(rwptr_r2[2]), .Y(n13) );
  XOR2X1 U8 ( .A(n16), .B(n17), .Y(\gray_rptr[2] ) );
  INVX1 U18 ( .A(rptr_nxt[3]), .Y(n16) );
  XOR2X1 U19 ( .A(rptr_nxt[2]), .B(n13), .Y(n19) );
  INVX1 U20 ( .A(rptr_nxt[0]), .Y(n14) );
  INVX1 U21 ( .A(n14), .Y(n15) );
  XNOR2X1 U22 ( .A(rptr_nxt[3]), .B(rwptr_r2[3]), .Y(n20) );
  INVX2 U23 ( .A(rptr_nxt[2]), .Y(n17) );
  NAND2X1 U24 ( .A(n25), .B(renable), .Y(n18) );
  NAND2X1 U25 ( .A(n19), .B(n20), .Y(n24) );
  XNOR2X1 U26 ( .A(rptr_nxt[1]), .B(rwptr_r2[1]), .Y(n22) );
  XNOR2X1 U27 ( .A(rptr_nxt[0]), .B(rwptr_r2[0]), .Y(n21) );
  NAND2X1 U28 ( .A(n21), .B(n22), .Y(n23) );
  NOR2X1 U29 ( .A(n24), .B(n23), .Y(N3) );
  INVX2 U30 ( .A(empty_flag), .Y(n25) );
endmodule


module fifo ( r_clk, w_clk, n_rst, r_enable, w_enable, w_data, r_data, empty, 
        full );
  input [7:0] w_data;
  output [7:0] r_data;
  input r_clk, w_clk, n_rst, r_enable, w_enable;
  output empty, full;
  wire   wenable_fifo;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] rptr;
  wire   [3:0] wptr;

  fiforam UFIFORAM ( .wclk(w_clk), .wenable(wenable_fifo), .waddr(waddr), 
        .raddr(raddr), .wdata(w_data), .rdata(r_data) );
  write_fifo_ctrl UWFC ( .wclk(w_clk), .rst_n(n_rst), .wenable(w_enable), 
        .rptr(rptr), .wenable_fifo(wenable_fifo), .wptr(wptr), .waddr(waddr), 
        .full_flag(full) );
  read_fifo_ctrl URFC ( .rclk(r_clk), .rst_n(n_rst), .renable(r_enable), 
        .wptr(wptr), .rptr(rptr), .raddr(raddr), .empty_flag(empty) );
endmodule


module tx_fifo ( clk, n_rst, read_enable, read_data, fifo_empty, fifo_full, 
        write_enable, write_data );
  output [7:0] read_data;
  input [7:0] write_data;
  input clk, n_rst, read_enable, write_enable;
  output fifo_empty, fifo_full;


  fifo _FIFO ( .r_clk(clk), .w_clk(clk), .n_rst(n_rst), .r_enable(read_enable), 
        .w_enable(write_enable), .w_data(write_data), .r_data(read_data), 
        .empty(fifo_empty), .full(fifo_full) );
endmodule


module controller ( clk, n_rst, stop_found, start_found, byte_received, 
        ack_prep, check_ack, ack_done, rw_mode, address_match, sda_in, 
        rx_enable, tx_enable, read_enable, sda_mode, load_data );
  output [1:0] sda_mode;
  input clk, n_rst, stop_found, start_found, byte_received, ack_prep,
         check_ack, ack_done, rw_mode, address_match, sda_in;
  output rx_enable, tx_enable, read_enable, load_data;
  wire   n68, n69, n70, n71, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93;
  wire   [3:0] cur_state;

  DFFSR \cur_state_reg[0]  ( .D(n71), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        cur_state[0]) );
  DFFSR \cur_state_reg[1]  ( .D(n68), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        cur_state[1]) );
  DFFSR \cur_state_reg[2]  ( .D(n69), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        cur_state[2]) );
  DFFSR \cur_state_reg[3]  ( .D(n70), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        cur_state[3]) );
  AND2X2 U7 ( .A(n34), .B(n73), .Y(n11) );
  NOR2X1 U8 ( .A(n24), .B(n6), .Y(n5) );
  NAND2X1 U9 ( .A(n35), .B(n32), .Y(n6) );
  BUFX2 U10 ( .A(n58), .Y(n7) );
  BUFX2 U11 ( .A(n63), .Y(n8) );
  INVX1 U12 ( .A(n5), .Y(n9) );
  NAND2X1 U13 ( .A(n21), .B(n22), .Y(n10) );
  INVX2 U14 ( .A(n56), .Y(n21) );
  INVX1 U15 ( .A(start_found), .Y(n41) );
  AND2X1 U16 ( .A(n25), .B(n30), .Y(n12) );
  AND2X2 U17 ( .A(n33), .B(n35), .Y(rx_enable) );
  BUFX2 U18 ( .A(n79), .Y(n14) );
  AND2X2 U19 ( .A(n26), .B(n79), .Y(n15) );
  AND2X2 U20 ( .A(n74), .B(n93), .Y(n16) );
  INVX1 U21 ( .A(n16), .Y(sda_mode[1]) );
  AND2X2 U22 ( .A(n83), .B(n10), .Y(n17) );
  AND2X2 U23 ( .A(n83), .B(n23), .Y(n18) );
  NAND2X1 U24 ( .A(n50), .B(n49), .Y(n19) );
  INVX2 U25 ( .A(ack_done), .Y(n91) );
  BUFX2 U26 ( .A(cur_state[2]), .Y(n34) );
  BUFX2 U27 ( .A(n90), .Y(n20) );
  NAND2X1 U28 ( .A(n21), .B(n22), .Y(n23) );
  INVX2 U29 ( .A(n55), .Y(n22) );
  BUFX2 U30 ( .A(n87), .Y(n24) );
  NAND2X1 U31 ( .A(n28), .B(n12), .Y(n63) );
  BUFX4 U32 ( .A(cur_state[3]), .Y(n30) );
  BUFX2 U33 ( .A(n26), .Y(n25) );
  AND2X2 U34 ( .A(n32), .B(n87), .Y(n33) );
  INVX1 U35 ( .A(cur_state[3]), .Y(n79) );
  INVX1 U36 ( .A(cur_state[2]), .Y(n87) );
  BUFX4 U37 ( .A(cur_state[1]), .Y(n26) );
  INVX4 U38 ( .A(n26), .Y(n90) );
  INVX1 U39 ( .A(n64), .Y(n42) );
  AND2X1 U40 ( .A(n11), .B(n15), .Y(tx_enable) );
  OAI21X1 U41 ( .A(n54), .B(n19), .C(n52), .Y(n27) );
  AND2X2 U42 ( .A(n73), .B(n87), .Y(n28) );
  INVX1 U43 ( .A(n37), .Y(n29) );
  INVX1 U44 ( .A(n51), .Y(n31) );
  BUFX2 U45 ( .A(cur_state[0]), .Y(n32) );
  NAND2X1 U46 ( .A(n35), .B(n33), .Y(n58) );
  AND2X2 U47 ( .A(n90), .B(n79), .Y(n35) );
  INVX1 U48 ( .A(n91), .Y(n36) );
  INVX1 U49 ( .A(n36), .Y(n37) );
  NOR2X1 U50 ( .A(n34), .B(n25), .Y(n38) );
  NAND3X1 U51 ( .A(n30), .B(n32), .C(n38), .Y(n74) );
  INVX2 U52 ( .A(cur_state[0]), .Y(n73) );
  NAND3X1 U53 ( .A(n34), .B(n73), .C(n15), .Y(n93) );
  NAND3X1 U54 ( .A(n15), .B(n32), .C(n24), .Y(n80) );
  NAND2X1 U55 ( .A(n28), .B(n15), .Y(n62) );
  INVX2 U56 ( .A(n62), .Y(n77) );
  NOR2X1 U57 ( .A(n77), .B(n5), .Y(n39) );
  NAND3X1 U58 ( .A(n31), .B(n58), .C(n39), .Y(n56) );
  NAND3X1 U59 ( .A(n28), .B(n30), .C(n20), .Y(n82) );
  INVX2 U60 ( .A(n82), .Y(n47) );
  NAND3X1 U61 ( .A(n34), .B(n32), .C(n15), .Y(n65) );
  INVX2 U62 ( .A(n65), .Y(n85) );
  NOR2X1 U63 ( .A(n47), .B(n85), .Y(n40) );
  NAND3X1 U64 ( .A(n8), .B(n16), .C(n40), .Y(n55) );
  NAND2X1 U65 ( .A(n28), .B(n35), .Y(n64) );
  INVX2 U66 ( .A(n80), .Y(n51) );
  AOI21X1 U67 ( .A(n41), .B(n42), .C(n51), .Y(n43) );
  OAI21X1 U68 ( .A(ack_prep), .B(n93), .C(n43), .Y(n54) );
  NOR2X1 U69 ( .A(start_found), .B(n63), .Y(n46) );
  INVX2 U70 ( .A(stop_found), .Y(n45) );
  OAI21X1 U71 ( .A(n65), .B(check_ack), .C(n58), .Y(n44) );
  AOI21X1 U72 ( .A(n46), .B(n45), .C(n44), .Y(n50) );
  INVX2 U73 ( .A(n74), .Y(n48) );
  OAI21X1 U74 ( .A(n48), .B(n47), .C(n37), .Y(n49) );
  NAND2X1 U75 ( .A(n49), .B(n50), .Y(n53) );
  AOI22X1 U76 ( .A(n51), .B(n29), .C(ack_prep), .D(rx_enable), .Y(n52) );
  OAI21X1 U77 ( .A(n54), .B(n53), .C(n52), .Y(n83) );
  NAND2X1 U78 ( .A(address_match), .B(rw_mode), .Y(n76) );
  NAND2X1 U79 ( .A(sda_in), .B(n5), .Y(n57) );
  OAI21X1 U80 ( .A(n62), .B(n76), .C(n57), .Y(n60) );
  NAND3X1 U81 ( .A(n34), .B(n73), .C(n35), .Y(n88) );
  NAND3X1 U82 ( .A(n7), .B(n16), .C(n88), .Y(n59) );
  OAI21X1 U83 ( .A(n60), .B(n59), .C(n27), .Y(n61) );
  OAI21X1 U84 ( .A(n17), .B(n20), .C(n61), .Y(n68) );
  OAI21X1 U85 ( .A(stop_found), .B(n8), .C(n62), .Y(n67) );
  NAND3X1 U86 ( .A(n65), .B(n93), .C(n64), .Y(n66) );
  OAI21X1 U87 ( .A(n67), .B(n66), .C(n27), .Y(n72) );
  OAI21X1 U88 ( .A(n73), .B(n18), .C(n72), .Y(n71) );
  NAND2X1 U89 ( .A(n9), .B(n74), .Y(n75) );
  AOI21X1 U90 ( .A(n77), .B(n76), .C(n75), .Y(n78) );
  OAI21X1 U91 ( .A(n17), .B(n14), .C(n78), .Y(n70) );
  NAND2X1 U92 ( .A(n80), .B(n93), .Y(sda_mode[0]) );
  INVX2 U93 ( .A(sda_mode[0]), .Y(n81) );
  NAND2X1 U94 ( .A(n82), .B(n81), .Y(n84) );
  OAI21X1 U95 ( .A(n85), .B(n84), .C(n27), .Y(n86) );
  OAI21X1 U96 ( .A(n18), .B(n24), .C(n86), .Y(n69) );
  INVX2 U97 ( .A(n88), .Y(load_data) );
  NOR2X1 U98 ( .A(cur_state[2]), .B(cur_state[0]), .Y(n89) );
  NAND3X1 U99 ( .A(n89), .B(n90), .C(n30), .Y(n92) );
  NOR2X1 U100 ( .A(n92), .B(n91), .Y(read_enable) );
endmodule


module flex_counter_NUM_CNT_BITS4 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n78, n79, n_rollover_flag, n46, n47, n48, n49, n1, n2, n3, n4, n6, n7,
         n8, n9, n14, n15, n16, n17, n18, n20, n21, n22, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77;

  DFFSR \count_out_reg[3]  ( .D(n49), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n78)
         );
  DFFSR \count_out_reg[2]  ( .D(n48), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n79)
         );
  DFFSR \count_out_reg[1]  ( .D(n47), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[0]  ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n_rollover_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(rollover_flag) );
  BUFX2 U3 ( .A(n59), .Y(n1) );
  INVX1 U8 ( .A(n57), .Y(n2) );
  INVX2 U9 ( .A(n2), .Y(n3) );
  INVX2 U10 ( .A(n30), .Y(n9) );
  INVX2 U11 ( .A(n6), .Y(n38) );
  AND2X2 U12 ( .A(n67), .B(n70), .Y(n4) );
  INVX1 U13 ( .A(n4), .Y(n60) );
  NAND2X1 U15 ( .A(n26), .B(n27), .Y(n6) );
  NAND3X1 U16 ( .A(n31), .B(n71), .C(n4), .Y(n7) );
  NOR2X1 U17 ( .A(clear), .B(n9), .Y(n8) );
  INVX2 U18 ( .A(n8), .Y(n57) );
  INVX1 U19 ( .A(clear), .Y(n33) );
  INVX1 U20 ( .A(n70), .Y(n14) );
  INVX2 U21 ( .A(n14), .Y(n15) );
  INVX2 U22 ( .A(n26), .Y(n16) );
  INVX2 U23 ( .A(n16), .Y(n17) );
  NAND2X1 U24 ( .A(n18), .B(count_out[3]), .Y(n20) );
  NAND2X1 U25 ( .A(n20), .B(n55), .Y(n49) );
  INVX1 U26 ( .A(n57), .Y(n18) );
  INVX2 U27 ( .A(n56), .Y(count_out[3]) );
  NAND2X1 U28 ( .A(n18), .B(n21), .Y(n22) );
  NAND2X1 U29 ( .A(n22), .B(n36), .Y(n47) );
  INVX1 U30 ( .A(n37), .Y(n21) );
  BUFX4 U31 ( .A(n79), .Y(count_out[2]) );
  AND2X1 U32 ( .A(n33), .B(n30), .Y(n24) );
  BUFX2 U33 ( .A(clear), .Y(n29) );
  NOR2X1 U34 ( .A(n24), .B(n25), .Y(n39) );
  NAND2X1 U35 ( .A(n38), .B(n33), .Y(n25) );
  XNOR2X1 U36 ( .A(count_out[2]), .B(rollover_val[2]), .Y(n67) );
  AND2X2 U37 ( .A(count_out[0]), .B(n43), .Y(n26) );
  INVX1 U38 ( .A(n67), .Y(n68) );
  AND2X2 U39 ( .A(count_out[1]), .B(n43), .Y(n27) );
  INVX1 U40 ( .A(n27), .Y(n32) );
  OR2X1 U41 ( .A(n76), .B(n60), .Y(n65) );
  XOR2X1 U42 ( .A(n78), .B(rollover_val[3]), .Y(n28) );
  INVX2 U43 ( .A(n28), .Y(n70) );
  INVX1 U44 ( .A(n78), .Y(n56) );
  INVX2 U45 ( .A(count_enable), .Y(n30) );
  INVX2 U46 ( .A(count_out[1]), .Y(n37) );
  INVX2 U47 ( .A(count_out[0]), .Y(n58) );
  XOR2X1 U48 ( .A(n58), .B(rollover_val[0]), .Y(n31) );
  XOR2X1 U49 ( .A(n37), .B(rollover_val[1]), .Y(n71) );
  NAND3X1 U50 ( .A(n31), .B(n71), .C(n4), .Y(n43) );
  NOR2X1 U51 ( .A(n29), .B(n32), .Y(n35) );
  NAND2X1 U52 ( .A(n33), .B(n57), .Y(n59) );
  NOR2X1 U53 ( .A(n27), .B(n59), .Y(n34) );
  MUX2X1 U54 ( .B(n35), .A(n34), .S(n17), .Y(n36) );
  NAND2X1 U55 ( .A(n26), .B(n27), .Y(n50) );
  NOR2X1 U56 ( .A(n29), .B(n38), .Y(n40) );
  NAND2X1 U57 ( .A(count_out[2]), .B(n7), .Y(n51) );
  MUX2X1 U58 ( .B(n40), .A(n39), .S(n51), .Y(n42) );
  NAND2X1 U59 ( .A(count_out[2]), .B(n18), .Y(n41) );
  NAND2X1 U60 ( .A(n41), .B(n42), .Y(n48) );
  NAND2X1 U61 ( .A(count_out[3]), .B(n7), .Y(n44) );
  NOR2X1 U62 ( .A(n29), .B(n44), .Y(n54) );
  INVX2 U63 ( .A(n44), .Y(n45) );
  NOR2X1 U64 ( .A(n45), .B(n59), .Y(n53) );
  NOR2X1 U65 ( .A(n51), .B(n50), .Y(n52) );
  MUX2X1 U66 ( .B(n54), .A(n53), .S(n52), .Y(n55) );
  OAI22X1 U67 ( .A(n17), .B(n1), .C(n58), .D(n3), .Y(n46) );
  NAND2X1 U68 ( .A(rollover_val[2]), .B(n15), .Y(n62) );
  NAND2X1 U69 ( .A(n77), .B(n28), .Y(n61) );
  MUX2X1 U70 ( .B(n62), .A(n61), .S(count_out[2]), .Y(n63) );
  NAND2X1 U71 ( .A(n63), .B(n76), .Y(n64) );
  MUX2X1 U72 ( .B(n65), .A(n64), .S(count_out[1]), .Y(n66) );
  NAND2X1 U73 ( .A(count_out[0]), .B(n66), .Y(n73) );
  NOR2X1 U74 ( .A(count_out[0]), .B(n68), .Y(n69) );
  NAND3X1 U75 ( .A(n71), .B(n15), .C(n69), .Y(n72) );
  MUX2X1 U76 ( .B(n73), .A(n72), .S(rollover_val[0]), .Y(n74) );
  NAND2X1 U77 ( .A(count_enable), .B(n74), .Y(n75) );
  NOR2X1 U78 ( .A(n29), .B(n75), .Y(n_rollover_flag) );
  INVX2 U79 ( .A(rollover_val[1]), .Y(n76) );
  INVX2 U80 ( .A(rollover_val[2]), .Y(n77) );
endmodule


module timer ( clk, n_rst, rising_edge_found, falling_edge_found, stop_found, 
        start_found, byte_received, ack_prep, check_ack, ack_done, count );
  output [3:0] count;
  input clk, n_rst, rising_edge_found, falling_edge_found, stop_found,
         start_found;
  output byte_received, ack_prep, check_ack, ack_done;
  wire   clear, rollover_flag, n33, n34, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n53;
  wire   [2:0] cur_state;

  DFFSR \cur_state_reg[0]  ( .D(n34), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        cur_state[0]) );
  DFFSR \cur_state_reg[1]  ( .D(n33), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        cur_state[1]) );
  DFFSR \cur_state_reg[2]  ( .D(n53), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        cur_state[2]) );
  flex_counter_NUM_CNT_BITS4 CLK_CNT ( .clk(clk), .n_rst(n_rst), .clear(clear), 
        .count_enable(rising_edge_found), .rollover_val({1'b1, 1'b0, 1'b0, 
        1'b0}), .count_out(count), .rollover_flag(rollover_flag) );
  BUFX4 U6 ( .A(n25), .Y(n4) );
  BUFX2 U7 ( .A(n40), .Y(n5) );
  INVX4 U8 ( .A(n25), .Y(n20) );
  INVX1 U9 ( .A(n27), .Y(n18) );
  BUFX2 U10 ( .A(n5), .Y(n6) );
  NAND2X1 U11 ( .A(n10), .B(n7), .Y(n42) );
  AND2X1 U12 ( .A(n11), .B(n16), .Y(n7) );
  AND2X2 U13 ( .A(n10), .B(n11), .Y(n8) );
  INVX2 U14 ( .A(n17), .Y(n22) );
  AND2X2 U15 ( .A(n22), .B(n18), .Y(n9) );
  INVX1 U16 ( .A(n45), .Y(n21) );
  NAND2X1 U17 ( .A(n30), .B(n9), .Y(n10) );
  AND2X1 U18 ( .A(n12), .B(n14), .Y(n11) );
  OR2X1 U19 ( .A(n40), .B(check_ack), .Y(n12) );
  NAND2X1 U20 ( .A(n30), .B(n9), .Y(n31) );
  INVX1 U21 ( .A(n22), .Y(n23) );
  NAND2X1 U22 ( .A(n13), .B(check_ack), .Y(n14) );
  NAND2X1 U23 ( .A(n14), .B(n31), .Y(n37) );
  INVX1 U24 ( .A(falling_edge_found), .Y(n13) );
  INVX1 U25 ( .A(cur_state[1]), .Y(n15) );
  INVX1 U26 ( .A(cur_state[1]), .Y(n24) );
  OR2X2 U27 ( .A(stop_found), .B(n41), .Y(n16) );
  INVX1 U28 ( .A(n48), .Y(n17) );
  INVX1 U29 ( .A(n24), .Y(n19) );
  INVX2 U30 ( .A(start_found), .Y(n45) );
  INVX2 U31 ( .A(n26), .Y(n27) );
  INVX2 U32 ( .A(n24), .Y(n25) );
  INVX2 U33 ( .A(cur_state[0]), .Y(n26) );
  INVX1 U34 ( .A(n44), .Y(n34) );
  NAND2X1 U35 ( .A(n23), .B(n4), .Y(n36) );
  NAND2X1 U36 ( .A(falling_edge_found), .B(n25), .Y(n49) );
  INVX2 U37 ( .A(n49), .Y(n28) );
  OAI21X1 U38 ( .A(n23), .B(n28), .C(n27), .Y(n29) );
  NAND2X1 U39 ( .A(n36), .B(n29), .Y(n53) );
  INVX2 U40 ( .A(cur_state[2]), .Y(n48) );
  NAND3X1 U41 ( .A(n27), .B(n22), .C(n20), .Y(n46) );
  INVX2 U42 ( .A(n46), .Y(n40) );
  NAND3X1 U43 ( .A(n19), .B(n27), .C(n48), .Y(n32) );
  INVX2 U44 ( .A(n32), .Y(check_ack) );
  MUX2X1 U45 ( .B(n21), .A(rising_edge_found), .S(n4), .Y(n30) );
  NAND2X1 U46 ( .A(n45), .B(rollover_flag), .Y(n39) );
  INVX2 U47 ( .A(n39), .Y(n35) );
  NAND2X1 U48 ( .A(n6), .B(n35), .Y(n51) );
  OAI21X1 U49 ( .A(n8), .B(n20), .C(n51), .Y(n33) );
  INVX2 U50 ( .A(n36), .Y(n38) );
  NOR2X1 U51 ( .A(n38), .B(n37), .Y(n43) );
  NAND2X1 U52 ( .A(n5), .B(n39), .Y(n41) );
  MUX2X1 U53 ( .B(n43), .A(n42), .S(n27), .Y(n44) );
  OAI22X1 U54 ( .A(n46), .B(n45), .C(n4), .D(n27), .Y(clear) );
  NAND2X1 U55 ( .A(n26), .B(n15), .Y(n47) );
  NOR2X1 U56 ( .A(n48), .B(n47), .Y(ack_done) );
  NAND2X1 U57 ( .A(n18), .B(n22), .Y(n50) );
  NOR2X1 U58 ( .A(n50), .B(n49), .Y(ack_prep) );
  INVX2 U59 ( .A(n51), .Y(byte_received) );
endmodule


module sda_sel ( tx_out, sda_mode, sda_out );
  input [1:0] sda_mode;
  input tx_out;
  output sda_out;
  wire   n1;

  NAND2X1 U3 ( .A(sda_mode[0]), .B(n1), .Y(sda_out) );
  NAND2X1 U4 ( .A(tx_out), .B(sda_mode[1]), .Y(n1) );
endmodule


module flex_stp_sr_NUM_BITS8_SHIFT_MSB1 ( clk, n_rst, shift_enable, serial_in, 
        parallel_out );
  output [7:0] parallel_out;
  input clk, n_rst, shift_enable, serial_in;
  wire   n10, n12, n14, n16, n18, n20, n22, n24, n26, n1, n2, n3, n4, n5, n6,
         n7, n8;

  DFFSR \parallel_out_reg[0]  ( .D(n26), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[0]) );
  DFFSR \parallel_out_reg[1]  ( .D(n24), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[1]) );
  DFFSR \parallel_out_reg[2]  ( .D(n22), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[2]) );
  DFFSR \parallel_out_reg[3]  ( .D(n20), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[3]) );
  DFFSR \parallel_out_reg[4]  ( .D(n18), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[4]) );
  DFFSR \parallel_out_reg[5]  ( .D(n16), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[5]) );
  DFFSR \parallel_out_reg[6]  ( .D(n14), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[6]) );
  DFFSR \parallel_out_reg[7]  ( .D(n12), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[7]) );
  NAND2X1 U18 ( .A(shift_enable), .B(serial_in), .Y(n10) );
  INVX2 U2 ( .A(parallel_out[0]), .Y(n1) );
  OAI21X1 U3 ( .A(shift_enable), .B(n1), .C(n10), .Y(n26) );
  INVX2 U4 ( .A(parallel_out[1]), .Y(n2) );
  MUX2X1 U5 ( .B(n2), .A(n1), .S(shift_enable), .Y(n24) );
  INVX2 U6 ( .A(parallel_out[2]), .Y(n3) );
  MUX2X1 U7 ( .B(n3), .A(n2), .S(shift_enable), .Y(n22) );
  INVX2 U8 ( .A(parallel_out[3]), .Y(n4) );
  MUX2X1 U9 ( .B(n4), .A(n3), .S(shift_enable), .Y(n20) );
  INVX2 U10 ( .A(parallel_out[4]), .Y(n5) );
  MUX2X1 U11 ( .B(n5), .A(n4), .S(shift_enable), .Y(n18) );
  INVX2 U12 ( .A(parallel_out[5]), .Y(n6) );
  MUX2X1 U13 ( .B(n6), .A(n5), .S(shift_enable), .Y(n16) );
  INVX2 U14 ( .A(parallel_out[6]), .Y(n7) );
  MUX2X1 U15 ( .B(n7), .A(n6), .S(shift_enable), .Y(n14) );
  INVX2 U16 ( .A(parallel_out[7]), .Y(n8) );
  MUX2X1 U17 ( .B(n8), .A(n7), .S(shift_enable), .Y(n12) );
endmodule


module rx_sr ( clk, n_rst, sda_in, rising_edge_found, rx_enable, rx_data );
  output [7:0] rx_data;
  input clk, n_rst, sda_in, rising_edge_found, rx_enable;
  wire   serial_clk, _0_net_, n1;

  DFFPOSX1 shift_clk_reg ( .D(rising_edge_found), .CLK(clk), .Q(serial_clk) );
  flex_stp_sr_NUM_BITS8_SHIFT_MSB1 IX ( .clk(clk), .n_rst(n_rst), 
        .shift_enable(_0_net_), .serial_in(sda_in), .parallel_out(rx_data) );
  INVX4 U3 ( .A(n1), .Y(_0_net_) );
  NAND2X1 U4 ( .A(rx_enable), .B(serial_clk), .Y(n1) );
endmodule


module flex_pts_sr_NUM_BITS8_SHIFT_MSB1 ( clk, n_rst, shift_enable, 
        load_enable, parallel_in, serial_out );
  input [7:0] parallel_in;
  input clk, n_rst, shift_enable, load_enable;
  output serial_out;
  wire   n30, n31, n32, n33, n34, n35, n36, n37, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51;
  wire   [6:0] data;

  DFFSR \data_reg[0]  ( .D(n37), .CLK(clk), .R(1'b1), .S(n_rst), .Q(data[0])
         );
  DFFSR \data_reg[1]  ( .D(n36), .CLK(clk), .R(1'b1), .S(n_rst), .Q(data[1])
         );
  DFFSR \data_reg[2]  ( .D(n35), .CLK(clk), .R(1'b1), .S(n_rst), .Q(data[2])
         );
  DFFSR \data_reg[3]  ( .D(n34), .CLK(clk), .R(1'b1), .S(n_rst), .Q(data[3])
         );
  DFFSR \data_reg[4]  ( .D(n33), .CLK(clk), .R(1'b1), .S(n_rst), .Q(data[4])
         );
  DFFSR \data_reg[5]  ( .D(n32), .CLK(clk), .R(1'b1), .S(n_rst), .Q(data[5])
         );
  DFFSR \data_reg[6]  ( .D(n31), .CLK(clk), .R(1'b1), .S(n_rst), .Q(data[6])
         );
  DFFSR serial_out_reg ( .D(n30), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        serial_out) );
  INVX1 U11 ( .A(n19), .Y(n9) );
  INVX1 U12 ( .A(n19), .Y(n10) );
  INVX1 U13 ( .A(n19), .Y(n43) );
  BUFX2 U14 ( .A(n51), .Y(n11) );
  AND2X2 U15 ( .A(n15), .B(shift_enable), .Y(n12) );
  INVX1 U16 ( .A(load_enable), .Y(n13) );
  INVX4 U17 ( .A(n13), .Y(n14) );
  INVX2 U18 ( .A(load_enable), .Y(n15) );
  NAND2X1 U19 ( .A(n15), .B(shift_enable), .Y(n51) );
  NAND2X1 U20 ( .A(n51), .B(n15), .Y(n19) );
  INVX2 U21 ( .A(data[0]), .Y(n16) );
  OAI21X1 U22 ( .A(n19), .B(n16), .C(n11), .Y(n17) );
  AOI21X1 U23 ( .A(parallel_in[0]), .B(n14), .C(n17), .Y(n18) );
  INVX2 U24 ( .A(n18), .Y(n37) );
  NAND2X1 U25 ( .A(n43), .B(data[1]), .Y(n22) );
  NAND2X1 U26 ( .A(data[0]), .B(n12), .Y(n21) );
  NAND2X1 U27 ( .A(parallel_in[1]), .B(n14), .Y(n20) );
  NAND3X1 U28 ( .A(n20), .B(n21), .C(n22), .Y(n36) );
  NAND2X1 U29 ( .A(data[2]), .B(n43), .Y(n25) );
  NAND2X1 U30 ( .A(data[1]), .B(n12), .Y(n24) );
  NAND2X1 U31 ( .A(parallel_in[2]), .B(n14), .Y(n23) );
  NAND3X1 U32 ( .A(n23), .B(n24), .C(n25), .Y(n35) );
  NAND2X1 U33 ( .A(n10), .B(data[3]), .Y(n28) );
  NAND2X1 U34 ( .A(data[2]), .B(n12), .Y(n27) );
  NAND2X1 U35 ( .A(parallel_in[3]), .B(n14), .Y(n26) );
  NAND3X1 U36 ( .A(n26), .B(n27), .C(n28), .Y(n34) );
  NAND2X1 U37 ( .A(n9), .B(data[4]), .Y(n39) );
  NAND2X1 U38 ( .A(data[3]), .B(n12), .Y(n38) );
  NAND2X1 U39 ( .A(parallel_in[4]), .B(n14), .Y(n29) );
  NAND3X1 U40 ( .A(n29), .B(n38), .C(n39), .Y(n33) );
  NAND2X1 U41 ( .A(data[5]), .B(n10), .Y(n42) );
  NAND2X1 U42 ( .A(data[4]), .B(n12), .Y(n41) );
  NAND2X1 U43 ( .A(parallel_in[5]), .B(n14), .Y(n40) );
  NAND3X1 U44 ( .A(n40), .B(n41), .C(n42), .Y(n32) );
  NAND2X1 U45 ( .A(n9), .B(data[6]), .Y(n46) );
  NAND2X1 U46 ( .A(data[5]), .B(n12), .Y(n45) );
  NAND2X1 U47 ( .A(parallel_in[6]), .B(n14), .Y(n44) );
  NAND3X1 U48 ( .A(n44), .B(n45), .C(n46), .Y(n31) );
  INVX2 U49 ( .A(data[6]), .Y(n50) );
  INVX2 U50 ( .A(serial_out), .Y(n47) );
  NOR2X1 U51 ( .A(shift_enable), .B(n47), .Y(n48) );
  MUX2X1 U52 ( .B(n48), .A(parallel_in[7]), .S(n14), .Y(n49) );
  OAI21X1 U53 ( .A(n11), .B(n50), .C(n49), .Y(n30) );
endmodule


module tx_sr ( clk, n_rst, falling_edge_found, tx_enable, tx_data, load_data, 
        tx_out );
  input [7:0] tx_data;
  input clk, n_rst, falling_edge_found, tx_enable, load_data;
  output tx_out;
  wire   _0_net_;

  flex_pts_sr_NUM_BITS8_SHIFT_MSB1 IX ( .clk(clk), .n_rst(n_rst), 
        .shift_enable(_0_net_), .load_enable(load_data), .parallel_in(tx_data), 
        .serial_out(tx_out) );
  AND2X2 U1 ( .A(tx_enable), .B(falling_edge_found), .Y(_0_net_) );
endmodule


module scl_edge ( clk, n_rst, scl, rising_edge_found, falling_edge_found );
  input clk, n_rst, scl;
  output rising_edge_found, falling_edge_found;
  wire   pprev, prev, curr, n4, n5;

  DFFSR curr_reg ( .D(scl), .CLK(clk), .R(1'b1), .S(n_rst), .Q(curr) );
  DFFSR prev_reg ( .D(curr), .CLK(clk), .R(1'b1), .S(n_rst), .Q(prev) );
  DFFSR pprev_reg ( .D(prev), .CLK(clk), .R(1'b1), .S(n_rst), .Q(pprev) );
  NAND2X1 U6 ( .A(pprev), .B(n_rst), .Y(n4) );
  NOR2X1 U7 ( .A(prev), .B(n4), .Y(falling_edge_found) );
  NAND2X1 U8 ( .A(prev), .B(n_rst), .Y(n5) );
  NOR2X1 U9 ( .A(pprev), .B(n5), .Y(rising_edge_found) );
endmodule


module decode ( clk, n_rst, scl, sda_in, starting_byte, rw_mode, address_match, 
        stop_found, start_found );
  input [7:0] starting_byte;
  input clk, n_rst, scl, sda_in;
  output rw_mode, address_match, stop_found, start_found;
  wire   curr, prev, sda_prev, sda_curr, pprev, sda_pprev, N4, N5, n11, n12,
         n13, n7, n8, n9, n10, n14, n15, n16;
  assign rw_mode = starting_byte[0];
  assign stop_found = N4;
  assign start_found = N5;

  DFFSR curr_reg ( .D(scl), .CLK(clk), .R(1'b1), .S(n_rst), .Q(curr) );
  DFFSR prev_reg ( .D(curr), .CLK(clk), .R(1'b1), .S(n_rst), .Q(prev) );
  DFFSR sda_curr_reg ( .D(sda_in), .CLK(clk), .R(1'b1), .S(n_rst), .Q(sda_curr) );
  DFFSR sda_prev_reg ( .D(sda_curr), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        sda_prev) );
  DFFSR sda_pprev_reg ( .D(sda_prev), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        sda_pprev) );
  DFFSR pprev_reg ( .D(n8), .CLK(clk), .R(1'b1), .S(n_rst), .Q(pprev) );
  NOR2X1 U13 ( .A(n11), .B(n12), .Y(address_match) );
  NAND3X1 U14 ( .A(starting_byte[6]), .B(starting_byte[5]), .C(
        starting_byte[7]), .Y(n12) );
  NAND3X1 U15 ( .A(starting_byte[4]), .B(n16), .C(n13), .Y(n11) );
  NOR2X1 U16 ( .A(starting_byte[3]), .B(starting_byte[2]), .Y(n13) );
  INVX1 U9 ( .A(prev), .Y(n7) );
  INVX2 U10 ( .A(n7), .Y(n8) );
  NAND3X1 U11 ( .A(pprev), .B(n_rst), .C(prev), .Y(n9) );
  INVX2 U12 ( .A(n9), .Y(n14) );
  NAND2X1 U17 ( .A(sda_pprev), .B(n14), .Y(n10) );
  NOR2X1 U18 ( .A(sda_prev), .B(n10), .Y(N5) );
  NAND2X1 U19 ( .A(n14), .B(sda_prev), .Y(n15) );
  NOR2X1 U20 ( .A(sda_pprev), .B(n15), .Y(N4) );
  INVX2 U21 ( .A(starting_byte[1]), .Y(n16) );
endmodule


module i2c_slave ( clk, n_rst, scl, sda_in, write_enable, write_data, sda_out, 
        fifo_empty, fifo_full );
  input [7:0] write_data;
  input clk, n_rst, scl, sda_in, write_enable;
  output sda_out, fifo_empty, fifo_full;
  wire   read_enable, stop_found, start_found, byte_received, ack_prep,
         check_ack, ack_done, rw_mode, address_match, rx_enable, tx_enable,
         load_data, rising_edge_found, falling_edge_found, tx_out;
  wire   [7:0] read_data;
  wire   [1:0] sda_mode;
  wire   [7:0] rx_data;

  tx_fifo FIFO ( .clk(clk), .n_rst(n_rst), .read_enable(read_enable), 
        .read_data(read_data), .fifo_empty(fifo_empty), .fifo_full(fifo_full), 
        .write_enable(write_enable), .write_data(write_data) );
  controller CONTROLLER ( .clk(clk), .n_rst(n_rst), .stop_found(stop_found), 
        .start_found(start_found), .byte_received(byte_received), .ack_prep(
        ack_prep), .check_ack(check_ack), .ack_done(ack_done), .rw_mode(
        rw_mode), .address_match(address_match), .sda_in(sda_in), .rx_enable(
        rx_enable), .tx_enable(tx_enable), .read_enable(read_enable), 
        .sda_mode(sda_mode), .load_data(load_data) );
  timer TIMER ( .clk(clk), .n_rst(n_rst), .rising_edge_found(rising_edge_found), .falling_edge_found(falling_edge_found), .stop_found(stop_found), 
        .start_found(start_found), .byte_received(byte_received), .ack_prep(
        ack_prep), .check_ack(check_ack), .ack_done(ack_done) );
  sda_sel SDA ( .tx_out(tx_out), .sda_mode(sda_mode), .sda_out(sda_out) );
  rx_sr RX ( .clk(clk), .n_rst(n_rst), .sda_in(sda_in), .rising_edge_found(
        rising_edge_found), .rx_enable(rx_enable), .rx_data(rx_data) );
  tx_sr TX ( .clk(clk), .n_rst(n_rst), .falling_edge_found(falling_edge_found), 
        .tx_enable(tx_enable), .tx_data(read_data), .load_data(load_data), 
        .tx_out(tx_out) );
  scl_edge EDGE_DETECT ( .clk(clk), .n_rst(n_rst), .scl(scl), 
        .rising_edge_found(rising_edge_found), .falling_edge_found(
        falling_edge_found) );
  decode DECODER ( .clk(clk), .n_rst(n_rst), .scl(scl), .sda_in(sda_in), 
        .starting_byte(rx_data), .rw_mode(rw_mode), .address_match(
        address_match), .stop_found(stop_found), .start_found(start_found) );
endmodule

