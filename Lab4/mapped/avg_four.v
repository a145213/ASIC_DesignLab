
module controller ( clk, n_reset, dr, overflow, cnt_up, modwait, op, src1, 
        src2, dest, err );
  output [1:0] op;
  output [3:0] src1;
  output [3:0] src2;
  output [3:0] dest;
  input clk, n_reset, dr, overflow;
  output cnt_up, modwait, err;
  wire   n124, n60, n61, n62, n63, n64, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n59, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118;
  wire   [3:0] cur_state;
  assign src2[0] = 1'b0;

  DFFSR \cur_state_reg[0]  ( .D(n64), .CLK(clk), .R(1'b1), .S(n_reset), .Q(
        cur_state[0]) );
  DFFSR \cur_state_reg[3]  ( .D(n62), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        cur_state[3]) );
  DFFSR \cur_state_reg[1]  ( .D(n61), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        cur_state[1]) );
  DFFSR \cur_state_reg[2]  ( .D(n63), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        cur_state[2]) );
  DFFSR mod_wait_reg ( .D(n60), .CLK(clk), .R(n_reset), .S(1'b1), .Q(modwait)
         );
  BUFX2 U8 ( .A(n34), .Y(n6) );
  INVX2 U9 ( .A(n36), .Y(n7) );
  BUFX2 U10 ( .A(n37), .Y(n33) );
  BUFX2 U11 ( .A(n35), .Y(n8) );
  INVX1 U12 ( .A(overflow), .Y(n9) );
  OAI21X1 U13 ( .A(n86), .B(n83), .C(n82), .Y(n10) );
  BUFX4 U14 ( .A(n27), .Y(n37) );
  BUFX2 U15 ( .A(n27), .Y(n18) );
  AND2X2 U16 ( .A(n22), .B(n54), .Y(n50) );
  NAND2X1 U17 ( .A(n28), .B(n19), .Y(n11) );
  INVX2 U18 ( .A(n11), .Y(n39) );
  INVX4 U19 ( .A(n28), .Y(n25) );
  INVX4 U20 ( .A(n22), .Y(n28) );
  INVX2 U21 ( .A(cur_state[1]), .Y(n27) );
  AND2X2 U22 ( .A(n70), .B(n81), .Y(n12) );
  NAND2X1 U23 ( .A(n43), .B(n42), .Y(n13) );
  AND2X2 U24 ( .A(n110), .B(n113), .Y(n14) );
  INVX4 U25 ( .A(n12), .Y(src2[1]) );
  AND2X2 U26 ( .A(n19), .B(n96), .Y(n31) );
  INVX2 U27 ( .A(n95), .Y(n92) );
  NAND2X1 U28 ( .A(n8), .B(n53), .Y(n15) );
  BUFX2 U29 ( .A(n70), .Y(n16) );
  NAND3X1 U30 ( .A(n98), .B(n97), .C(n99), .Y(src1[0]) );
  OAI21X1 U31 ( .A(n53), .B(n43), .C(n42), .Y(n69) );
  AND2X2 U32 ( .A(n54), .B(n102), .Y(n17) );
  INVX4 U33 ( .A(n55), .Y(n56) );
  INVX1 U34 ( .A(cur_state[3]), .Y(n19) );
  INVX2 U35 ( .A(cur_state[3]), .Y(n55) );
  BUFX2 U36 ( .A(n8), .Y(n20) );
  INVX1 U37 ( .A(n26), .Y(n21) );
  BUFX2 U38 ( .A(cur_state[2]), .Y(n22) );
  BUFX2 U39 ( .A(cur_state[2]), .Y(n59) );
  INVX1 U40 ( .A(n56), .Y(n23) );
  BUFX2 U41 ( .A(n81), .Y(n24) );
  INVX4 U42 ( .A(n51), .Y(n26) );
  BUFX4 U43 ( .A(cur_state[0]), .Y(n51) );
  INVX1 U44 ( .A(cur_state[0]), .Y(n102) );
  INVX2 U45 ( .A(n59), .Y(n96) );
  AND2X2 U46 ( .A(n19), .B(n51), .Y(n49) );
  XOR2X1 U47 ( .A(n30), .B(n33), .Y(n29) );
  INVX2 U48 ( .A(n29), .Y(n47) );
  XNOR2X1 U49 ( .A(n26), .B(n22), .Y(n30) );
  BUFX2 U50 ( .A(n54), .Y(n36) );
  BUFX2 U51 ( .A(n44), .Y(n32) );
  AND2X2 U52 ( .A(n54), .B(n51), .Y(n48) );
  AND2X2 U53 ( .A(n102), .B(n18), .Y(n34) );
  OR2X1 U54 ( .A(n77), .B(n76), .Y(n64) );
  INVX2 U55 ( .A(n46), .Y(n71) );
  AND2X2 U56 ( .A(n59), .B(n55), .Y(n35) );
  INVX1 U57 ( .A(n35), .Y(n66) );
  INVX2 U58 ( .A(n27), .Y(n54) );
  BUFX2 U59 ( .A(n96), .Y(n38) );
  MUX2X1 U60 ( .B(n93), .A(n94), .S(n29), .Y(src2[2]) );
  INVX1 U61 ( .A(n24), .Y(n86) );
  INVX1 U62 ( .A(n56), .Y(n40) );
  INVX4 U63 ( .A(n124), .Y(n57) );
  AND2X1 U64 ( .A(n78), .B(n107), .Y(n41) );
  AND2X2 U65 ( .A(n19), .B(n96), .Y(n42) );
  AND2X2 U66 ( .A(n51), .B(n37), .Y(n43) );
  AND2X2 U67 ( .A(n51), .B(n37), .Y(n44) );
  AND2X2 U68 ( .A(n56), .B(n96), .Y(n45) );
  AND2X2 U69 ( .A(n102), .B(n18), .Y(n46) );
  INVX1 U70 ( .A(op[0]), .Y(n74) );
  BUFX2 U71 ( .A(n17), .Y(n52) );
  AND2X2 U72 ( .A(n54), .B(n102), .Y(n53) );
  INVX1 U73 ( .A(src2[1]), .Y(n72) );
  INVX1 U74 ( .A(src1[3]), .Y(n73) );
  INVX8 U75 ( .A(n57), .Y(src1[1]) );
  OR2X1 U76 ( .A(n80), .B(n79), .Y(n61) );
  NAND2X1 U77 ( .A(n52), .B(n39), .Y(n84) );
  NAND2X1 U78 ( .A(n13), .B(n84), .Y(dest[3]) );
  NAND2X1 U79 ( .A(n44), .B(n45), .Y(n70) );
  NAND2X1 U80 ( .A(n50), .B(n49), .Y(n85) );
  NAND2X1 U81 ( .A(n46), .B(n45), .Y(n81) );
  NAND3X1 U82 ( .A(n16), .B(n24), .C(n85), .Y(n65) );
  INVX2 U83 ( .A(n65), .Y(n106) );
  NAND2X1 U84 ( .A(n32), .B(n20), .Y(n78) );
  NAND2X1 U85 ( .A(n39), .B(n48), .Y(n118) );
  NAND2X1 U86 ( .A(n53), .B(n35), .Y(n100) );
  OAI21X1 U87 ( .A(n71), .B(n66), .C(n15), .Y(n67) );
  INVX2 U88 ( .A(n67), .Y(n90) );
  NAND3X1 U89 ( .A(n78), .B(n118), .C(n90), .Y(n68) );
  INVX2 U90 ( .A(n68), .Y(n112) );
  NAND2X1 U91 ( .A(n106), .B(n112), .Y(op[0]) );
  OAI21X1 U92 ( .A(n11), .B(n71), .C(n69), .Y(src1[3]) );
  NAND2X1 U93 ( .A(n6), .B(n39), .Y(n107) );
  INVX2 U94 ( .A(n107), .Y(n87) );
  NAND2X1 U95 ( .A(dr), .B(n87), .Y(n117) );
  OAI21X1 U96 ( .A(overflow), .B(n72), .C(n117), .Y(n77) );
  NAND2X1 U97 ( .A(n74), .B(n73), .Y(n110) );
  INVX2 U98 ( .A(dr), .Y(n75) );
  NAND2X1 U99 ( .A(dest[3]), .B(n75), .Y(n113) );
  OAI21X1 U100 ( .A(n14), .B(n26), .C(n90), .Y(n76) );
  OAI21X1 U101 ( .A(n14), .B(n38), .C(n112), .Y(n63) );
  INVX2 U102 ( .A(overflow), .Y(n82) );
  OAI21X1 U103 ( .A(n106), .B(n82), .C(n41), .Y(n80) );
  NAND2X1 U104 ( .A(n20), .B(n52), .Y(n89) );
  OAI21X1 U105 ( .A(n14), .B(n7), .C(n89), .Y(n79) );
  INVX2 U106 ( .A(n85), .Y(n83) );
  OAI21X1 U107 ( .A(n86), .B(n83), .C(n9), .Y(n108) );
  OAI21X1 U108 ( .A(n14), .B(n40), .C(n10), .Y(n62) );
  INVX2 U109 ( .A(n84), .Y(err) );
  NAND3X1 U110 ( .A(n85), .B(n118), .C(n41), .Y(dest[0]) );
  NOR2X1 U111 ( .A(n87), .B(n86), .Y(n88) );
  NAND3X1 U112 ( .A(n89), .B(n118), .C(n88), .Y(dest[1]) );
  NAND2X1 U113 ( .A(n90), .B(n41), .Y(dest[2]) );
  OAI21X1 U114 ( .A(n36), .B(n44), .C(n25), .Y(n91) );
  OAI21X1 U115 ( .A(n26), .B(n7), .C(n91), .Y(n95) );
  NAND2X1 U116 ( .A(n56), .B(n92), .Y(n94) );
  NAND2X1 U117 ( .A(n95), .B(n23), .Y(n93) );
  AOI21X1 U118 ( .A(n95), .B(n47), .C(n56), .Y(src2[3]) );
  NAND3X1 U119 ( .A(n56), .B(n38), .C(n33), .Y(n99) );
  NAND2X1 U120 ( .A(n49), .B(n50), .Y(n98) );
  AOI22X1 U121 ( .A(n17), .B(n35), .C(n34), .D(n35), .Y(n97) );
  NAND2X1 U122 ( .A(n25), .B(n21), .Y(n101) );
  OAI21X1 U123 ( .A(n56), .B(n101), .C(n100), .Y(n124) );
  NAND3X1 U124 ( .A(n25), .B(n43), .C(n40), .Y(n105) );
  NAND3X1 U125 ( .A(n26), .B(n23), .C(n25), .Y(n104) );
  AOI22X1 U126 ( .A(n31), .B(n48), .C(n46), .D(n45), .Y(n103) );
  NAND3X1 U127 ( .A(n104), .B(n105), .C(n103), .Y(src1[2]) );
  NAND2X1 U128 ( .A(n107), .B(n106), .Y(op[1]) );
  INVX2 U129 ( .A(modwait), .Y(n109) );
  OAI21X1 U130 ( .A(n110), .B(n109), .C(n108), .Y(n115) );
  INVX2 U131 ( .A(dest[3]), .Y(n111) );
  NAND2X1 U132 ( .A(n112), .B(n111), .Y(n114) );
  OAI22X1 U133 ( .A(n114), .B(n115), .C(modwait), .D(n113), .Y(n116) );
  NAND2X1 U134 ( .A(n117), .B(n116), .Y(n60) );
  INVX2 U135 ( .A(n118), .Y(cnt_up) );
endmodule


module sync ( clk, n_rst, async_in, sync_out );
  input clk, n_rst, async_in;
  output sync_out;
  wire   out1;

  DFFSR out1_reg ( .D(async_in), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out1) );
  DFFSR sync_out_reg ( .D(out1), .CLK(clk), .R(n_rst), .S(1'b1), .Q(sync_out)
         );
endmodule


module datapath_ctrl ( op, w_data_sel, w_en, alu_op );
  input [1:0] op;
  output w_data_sel, w_en, alu_op;
  wire   n2, n3;

  AND2X2 U1 ( .A(op[1]), .B(op[0]), .Y(alu_op) );
  INVX1 U2 ( .A(n3), .Y(w_data_sel) );
  INVX1 U3 ( .A(op[1]), .Y(n2) );
  INVX1 U4 ( .A(op[0]), .Y(n3) );
  NAND2X1 U5 ( .A(n3), .B(n2), .Y(w_en) );
endmodule


module regfile_NUM_REG_ADDR_BITS4_REG_SIZE_BITS16 ( clk, n_reset, w_sel, 
        r1_sel, r2_sel, w_data, w_en, r1_data, r2_data, outreg_data );
  input [3:0] w_sel;
  input [3:0] r1_sel;
  input [3:0] r2_sel;
  input [15:0] w_data;
  output [15:0] r1_data;
  output [15:0] r2_data;
  output [15:0] outreg_data;
  input clk, n_reset, w_en;
  wire   \regs[15][15] , \regs[15][14] , \regs[15][13] , \regs[15][12] ,
         \regs[15][11] , \regs[15][10] , \regs[15][9] , \regs[15][8] ,
         \regs[15][7] , \regs[15][6] , \regs[15][5] , \regs[15][4] ,
         \regs[15][3] , \regs[15][2] , \regs[15][1] , \regs[15][0] ,
         \regs[14][15] , \regs[14][14] , \regs[14][13] , \regs[14][12] ,
         \regs[14][11] , \regs[14][10] , \regs[14][9] , \regs[14][8] ,
         \regs[14][7] , \regs[14][6] , \regs[14][5] , \regs[14][4] ,
         \regs[14][3] , \regs[14][2] , \regs[14][1] , \regs[14][0] ,
         \regs[13][15] , \regs[13][14] , \regs[13][13] , \regs[13][12] ,
         \regs[13][11] , \regs[13][10] , \regs[13][9] , \regs[13][8] ,
         \regs[13][7] , \regs[13][6] , \regs[13][5] , \regs[13][4] ,
         \regs[13][3] , \regs[13][2] , \regs[13][1] , \regs[13][0] ,
         \regs[12][15] , \regs[12][14] , \regs[12][13] , \regs[12][12] ,
         \regs[12][11] , \regs[12][10] , \regs[12][9] , \regs[12][8] ,
         \regs[12][7] , \regs[12][6] , \regs[12][5] , \regs[12][4] ,
         \regs[12][3] , \regs[12][2] , \regs[12][1] , \regs[12][0] ,
         \regs[11][15] , \regs[11][14] , \regs[11][13] , \regs[11][12] ,
         \regs[11][11] , \regs[11][10] , \regs[11][9] , \regs[11][8] ,
         \regs[11][7] , \regs[11][6] , \regs[11][5] , \regs[11][4] ,
         \regs[11][3] , \regs[11][2] , \regs[11][1] , \regs[11][0] ,
         \regs[10][15] , \regs[10][14] , \regs[10][13] , \regs[10][12] ,
         \regs[10][11] , \regs[10][10] , \regs[10][9] , \regs[10][8] ,
         \regs[10][7] , \regs[10][6] , \regs[10][5] , \regs[10][4] ,
         \regs[10][3] , \regs[10][2] , \regs[10][1] , \regs[10][0] ,
         \regs[9][15] , \regs[9][14] , \regs[9][13] , \regs[9][12] ,
         \regs[9][11] , \regs[9][10] , \regs[9][9] , \regs[9][8] ,
         \regs[9][7] , \regs[9][6] , \regs[9][5] , \regs[9][4] , \regs[9][3] ,
         \regs[9][2] , \regs[9][1] , \regs[9][0] , \regs[8][15] ,
         \regs[8][14] , \regs[8][13] , \regs[8][12] , \regs[8][11] ,
         \regs[8][10] , \regs[8][9] , \regs[8][8] , \regs[8][7] , \regs[8][6] ,
         \regs[8][5] , \regs[8][4] , \regs[8][3] , \regs[8][2] , \regs[8][1] ,
         \regs[8][0] , \regs[7][15] , \regs[7][14] , \regs[7][13] ,
         \regs[7][12] , \regs[7][11] , \regs[7][10] , \regs[7][9] ,
         \regs[7][8] , \regs[7][7] , \regs[7][6] , \regs[7][5] , \regs[7][4] ,
         \regs[7][3] , \regs[7][2] , \regs[7][1] , \regs[7][0] , \regs[6][15] ,
         \regs[6][14] , \regs[6][13] , \regs[6][12] , \regs[6][11] ,
         \regs[6][10] , \regs[6][9] , \regs[6][8] , \regs[6][7] , \regs[6][6] ,
         \regs[6][5] , \regs[6][4] , \regs[6][3] , \regs[6][2] , \regs[6][1] ,
         \regs[6][0] , \regs[5][15] , \regs[5][14] , \regs[5][13] ,
         \regs[5][12] , \regs[5][11] , \regs[5][10] , \regs[5][9] ,
         \regs[5][8] , \regs[5][7] , \regs[5][6] , \regs[5][5] , \regs[5][4] ,
         \regs[5][3] , \regs[5][2] , \regs[5][1] , \regs[5][0] , \regs[4][15] ,
         \regs[4][14] , \regs[4][13] , \regs[4][12] , \regs[4][11] ,
         \regs[4][10] , \regs[4][9] , \regs[4][8] , \regs[4][7] , \regs[4][6] ,
         \regs[4][5] , \regs[4][4] , \regs[4][3] , \regs[4][2] , \regs[4][1] ,
         \regs[4][0] , \regs[3][15] , \regs[3][14] , \regs[3][13] ,
         \regs[3][12] , \regs[3][11] , \regs[3][10] , \regs[3][9] ,
         \regs[3][8] , \regs[3][7] , \regs[3][6] , \regs[3][5] , \regs[3][4] ,
         \regs[3][3] , \regs[3][2] , \regs[3][1] , \regs[3][0] , \regs[2][15] ,
         \regs[2][14] , \regs[2][13] , \regs[2][12] , \regs[2][11] ,
         \regs[2][10] , \regs[2][9] , \regs[2][8] , \regs[2][7] , \regs[2][6] ,
         \regs[2][5] , \regs[2][4] , \regs[2][3] , \regs[2][2] , \regs[2][1] ,
         \regs[2][0] , \regs[1][15] , \regs[1][14] , \regs[1][13] ,
         \regs[1][12] , \regs[1][11] , \regs[1][10] , \regs[1][9] ,
         \regs[1][8] , \regs[1][7] , \regs[1][6] , \regs[1][5] , \regs[1][4] ,
         \regs[1][3] , \regs[1][2] , \regs[1][1] , \regs[1][0] , n1140, n1141,
         n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151,
         n1152, n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161,
         n1162, n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171,
         n1172, n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181,
         n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191,
         n1192, n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201,
         n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211,
         n1212, n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221,
         n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231,
         n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241,
         n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251,
         n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261,
         n1262, n1263, n1264, n1265, n1266, n1267, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656,
         n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810,
         n811, n812, n813, n814, n815, n816, n817, n818, n819, n820, n821,
         n822, n823, n824, n825, n826, n827, n828, n829, n830, n831, n832,
         n833, n834, n835, n836, n837, n838, n839, n840, n841, n842, n843,
         n844, n845, n846, n847, n848, n849, n850, n851, n852, n853, n854,
         n855, n856, n857, n858, n859, n860, n861, n862, n863, n864, n865,
         n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887,
         n888, n889, n890, n891, n892, n893, n894, n895, n896, n897, n898,
         n899, n900, n901, n902, n903, n904, n905, n906, n907, n908, n909,
         n910, n911, n912, n913, n914, n915, n916, n917, n918, n919, n920,
         n921, n922, n923, n924, n925, n926, n927, n928, n929, n930, n931,
         n932, n933, n934, n935, n936, n937, n938, n939, n940, n941, n942,
         n943, n944, n945, n946, n947, n948, n949, n950, n951, n952, n953,
         n954, n955, n956, n957, n958, n959, n960, n961, n962, n963, n964,
         n965, n966, n967, n968, n969, n970, n971, n972, n973, n974, n975,
         n976, n977, n978, n979, n980, n981, n982, n983, n984, n985, n986,
         n987, n988, n989, n990, n991, n992, n993, n994, n995, n996, n997,
         n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007,
         n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017,
         n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027,
         n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037,
         n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047,
         n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057,
         n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067,
         n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077,
         n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087,
         n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097,
         n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107,
         n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117,
         n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127,
         n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137,
         n1138, n1139, n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275,
         n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285,
         n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295,
         n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305,
         n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315,
         n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325,
         n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335,
         n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345,
         n1346, n1347, n1348, n1349, n1350, n1351, n1368, n1369, n1370, n1371,
         n1372, n1373, n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381,
         n1382, n1383, n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391,
         n1392, n1393, n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401,
         n1402, n1403, n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411,
         n1412, n1413, n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421,
         n1422, n1423, n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431,
         n1432, n1433, n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441,
         n1442, n1443, n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451,
         n1452, n1453, n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461,
         n1462, n1463, n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471,
         n1472, n1473, n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481,
         n1482, n1483, n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491,
         n1492, n1493, n1494, n1495;

  DFFSR \regs_reg[15][15]  ( .D(n1487), .CLK(clk), .R(n458), .S(1'b1), .Q(
        \regs[15][15] ) );
  DFFSR \regs_reg[15][14]  ( .D(n1479), .CLK(clk), .R(n458), .S(1'b1), .Q(
        \regs[15][14] ) );
  DFFSR \regs_reg[15][13]  ( .D(n1471), .CLK(clk), .R(n458), .S(1'b1), .Q(
        \regs[15][13] ) );
  DFFSR \regs_reg[15][12]  ( .D(n1495), .CLK(clk), .R(n458), .S(1'b1), .Q(
        \regs[15][12] ) );
  DFFSR \regs_reg[15][11]  ( .D(n1455), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \regs[15][11] ) );
  DFFSR \regs_reg[15][10]  ( .D(n1447), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \regs[15][10] ) );
  DFFSR \regs_reg[15][9]  ( .D(n1439), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \regs[15][9] ) );
  DFFSR \regs_reg[15][8]  ( .D(n1463), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \regs[15][8] ) );
  DFFSR \regs_reg[15][7]  ( .D(n1423), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \regs[15][7] ) );
  DFFSR \regs_reg[15][6]  ( .D(n1415), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \regs[15][6] ) );
  DFFSR \regs_reg[15][5]  ( .D(n1407), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \regs[15][5] ) );
  DFFSR \regs_reg[15][4]  ( .D(n1431), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \regs[15][4] ) );
  DFFSR \regs_reg[15][3]  ( .D(n1391), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \regs[15][3] ) );
  DFFSR \regs_reg[15][2]  ( .D(n1383), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \regs[15][2] ) );
  DFFSR \regs_reg[15][1]  ( .D(n1375), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \regs[15][1] ) );
  DFFSR \regs_reg[15][0]  ( .D(n1399), .CLK(clk), .R(n457), .S(1'b1), .Q(
        \regs[15][0] ) );
  DFFSR \regs_reg[14][15]  ( .D(n1486), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \regs[14][15] ) );
  DFFSR \regs_reg[14][14]  ( .D(n1478), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \regs[14][14] ) );
  DFFSR \regs_reg[14][13]  ( .D(n1470), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \regs[14][13] ) );
  DFFSR \regs_reg[14][12]  ( .D(n1494), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \regs[14][12] ) );
  DFFSR \regs_reg[14][11]  ( .D(n1454), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \regs[14][11] ) );
  DFFSR \regs_reg[14][10]  ( .D(n1446), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \regs[14][10] ) );
  DFFSR \regs_reg[14][9]  ( .D(n1438), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \regs[14][9] ) );
  DFFSR \regs_reg[14][8]  ( .D(n1462), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \regs[14][8] ) );
  DFFSR \regs_reg[14][7]  ( .D(n1422), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \regs[14][7] ) );
  DFFSR \regs_reg[14][6]  ( .D(n1414), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \regs[14][6] ) );
  DFFSR \regs_reg[14][5]  ( .D(n1406), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \regs[14][5] ) );
  DFFSR \regs_reg[14][4]  ( .D(n1430), .CLK(clk), .R(n456), .S(1'b1), .Q(
        \regs[14][4] ) );
  DFFSR \regs_reg[14][3]  ( .D(n1390), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \regs[14][3] ) );
  DFFSR \regs_reg[14][2]  ( .D(n1382), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \regs[14][2] ) );
  DFFSR \regs_reg[14][1]  ( .D(n1374), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \regs[14][1] ) );
  DFFSR \regs_reg[14][0]  ( .D(n1398), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \regs[14][0] ) );
  DFFSR \regs_reg[13][15]  ( .D(n1485), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \regs[13][15] ) );
  DFFSR \regs_reg[13][14]  ( .D(n1477), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \regs[13][14] ) );
  DFFSR \regs_reg[13][13]  ( .D(n1469), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \regs[13][13] ) );
  DFFSR \regs_reg[13][12]  ( .D(n1493), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \regs[13][12] ) );
  DFFSR \regs_reg[13][11]  ( .D(n1453), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \regs[13][11] ) );
  DFFSR \regs_reg[13][10]  ( .D(n1445), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \regs[13][10] ) );
  DFFSR \regs_reg[13][9]  ( .D(n1437), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \regs[13][9] ) );
  DFFSR \regs_reg[13][8]  ( .D(n1461), .CLK(clk), .R(n455), .S(1'b1), .Q(
        \regs[13][8] ) );
  DFFSR \regs_reg[13][7]  ( .D(n1421), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \regs[13][7] ) );
  DFFSR \regs_reg[13][6]  ( .D(n1413), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \regs[13][6] ) );
  DFFSR \regs_reg[13][5]  ( .D(n1405), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \regs[13][5] ) );
  DFFSR \regs_reg[13][4]  ( .D(n1429), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \regs[13][4] ) );
  DFFSR \regs_reg[13][3]  ( .D(n1389), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \regs[13][3] ) );
  DFFSR \regs_reg[13][2]  ( .D(n1381), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \regs[13][2] ) );
  DFFSR \regs_reg[13][1]  ( .D(n1373), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \regs[13][1] ) );
  DFFSR \regs_reg[13][0]  ( .D(n1397), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \regs[13][0] ) );
  DFFSR \regs_reg[12][15]  ( .D(n1484), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \regs[12][15] ) );
  DFFSR \regs_reg[12][14]  ( .D(n1476), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \regs[12][14] ) );
  DFFSR \regs_reg[12][13]  ( .D(n1468), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \regs[12][13] ) );
  DFFSR \regs_reg[12][12]  ( .D(n1492), .CLK(clk), .R(n454), .S(1'b1), .Q(
        \regs[12][12] ) );
  DFFSR \regs_reg[12][11]  ( .D(n1452), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \regs[12][11] ) );
  DFFSR \regs_reg[12][10]  ( .D(n1444), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \regs[12][10] ) );
  DFFSR \regs_reg[12][9]  ( .D(n1436), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \regs[12][9] ) );
  DFFSR \regs_reg[12][8]  ( .D(n1460), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \regs[12][8] ) );
  DFFSR \regs_reg[12][7]  ( .D(n1420), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \regs[12][7] ) );
  DFFSR \regs_reg[12][6]  ( .D(n1412), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \regs[12][6] ) );
  DFFSR \regs_reg[12][5]  ( .D(n1404), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \regs[12][5] ) );
  DFFSR \regs_reg[12][4]  ( .D(n1428), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \regs[12][4] ) );
  DFFSR \regs_reg[12][3]  ( .D(n1388), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \regs[12][3] ) );
  DFFSR \regs_reg[12][2]  ( .D(n1380), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \regs[12][2] ) );
  DFFSR \regs_reg[12][1]  ( .D(n1372), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \regs[12][1] ) );
  DFFSR \regs_reg[12][0]  ( .D(n1396), .CLK(clk), .R(n453), .S(1'b1), .Q(
        \regs[12][0] ) );
  DFFSR \regs_reg[11][15]  ( .D(n1267), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \regs[11][15] ) );
  DFFSR \regs_reg[11][14]  ( .D(n1266), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \regs[11][14] ) );
  DFFSR \regs_reg[11][13]  ( .D(n1265), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \regs[11][13] ) );
  DFFSR \regs_reg[11][12]  ( .D(n1264), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \regs[11][12] ) );
  DFFSR \regs_reg[11][11]  ( .D(n1263), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \regs[11][11] ) );
  DFFSR \regs_reg[11][10]  ( .D(n1262), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \regs[11][10] ) );
  DFFSR \regs_reg[11][9]  ( .D(n1261), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \regs[11][9] ) );
  DFFSR \regs_reg[11][8]  ( .D(n1260), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \regs[11][8] ) );
  DFFSR \regs_reg[11][7]  ( .D(n1259), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \regs[11][7] ) );
  DFFSR \regs_reg[11][6]  ( .D(n1258), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \regs[11][6] ) );
  DFFSR \regs_reg[11][5]  ( .D(n1257), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \regs[11][5] ) );
  DFFSR \regs_reg[11][4]  ( .D(n1256), .CLK(clk), .R(n452), .S(1'b1), .Q(
        \regs[11][4] ) );
  DFFSR \regs_reg[11][3]  ( .D(n1255), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \regs[11][3] ) );
  DFFSR \regs_reg[11][2]  ( .D(n1254), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \regs[11][2] ) );
  DFFSR \regs_reg[11][1]  ( .D(n1253), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \regs[11][1] ) );
  DFFSR \regs_reg[11][0]  ( .D(n1252), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \regs[11][0] ) );
  DFFSR \regs_reg[10][15]  ( .D(n1251), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \regs[10][15] ) );
  DFFSR \regs_reg[10][14]  ( .D(n1250), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \regs[10][14] ) );
  DFFSR \regs_reg[10][13]  ( .D(n1249), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \regs[10][13] ) );
  DFFSR \regs_reg[10][12]  ( .D(n1248), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \regs[10][12] ) );
  DFFSR \regs_reg[10][11]  ( .D(n1247), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \regs[10][11] ) );
  DFFSR \regs_reg[10][10]  ( .D(n1246), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \regs[10][10] ) );
  DFFSR \regs_reg[10][9]  ( .D(n1245), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \regs[10][9] ) );
  DFFSR \regs_reg[10][8]  ( .D(n1244), .CLK(clk), .R(n451), .S(1'b1), .Q(
        \regs[10][8] ) );
  DFFSR \regs_reg[10][7]  ( .D(n1243), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \regs[10][7] ) );
  DFFSR \regs_reg[10][6]  ( .D(n1242), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \regs[10][6] ) );
  DFFSR \regs_reg[10][5]  ( .D(n1241), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \regs[10][5] ) );
  DFFSR \regs_reg[10][4]  ( .D(n1240), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \regs[10][4] ) );
  DFFSR \regs_reg[10][3]  ( .D(n1239), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \regs[10][3] ) );
  DFFSR \regs_reg[10][2]  ( .D(n1238), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \regs[10][2] ) );
  DFFSR \regs_reg[10][1]  ( .D(n1237), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \regs[10][1] ) );
  DFFSR \regs_reg[10][0]  ( .D(n1236), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \regs[10][0] ) );
  DFFSR \regs_reg[9][15]  ( .D(n1235), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \regs[9][15] ) );
  DFFSR \regs_reg[9][14]  ( .D(n1234), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \regs[9][14] ) );
  DFFSR \regs_reg[9][13]  ( .D(n1233), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \regs[9][13] ) );
  DFFSR \regs_reg[9][12]  ( .D(n1232), .CLK(clk), .R(n450), .S(1'b1), .Q(
        \regs[9][12] ) );
  DFFSR \regs_reg[9][11]  ( .D(n1231), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \regs[9][11] ) );
  DFFSR \regs_reg[9][10]  ( .D(n1230), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \regs[9][10] ) );
  DFFSR \regs_reg[9][9]  ( .D(n1229), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \regs[9][9] ) );
  DFFSR \regs_reg[9][8]  ( .D(n1228), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \regs[9][8] ) );
  DFFSR \regs_reg[9][7]  ( .D(n1227), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \regs[9][7] ) );
  DFFSR \regs_reg[9][6]  ( .D(n1226), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \regs[9][6] ) );
  DFFSR \regs_reg[9][5]  ( .D(n1225), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \regs[9][5] ) );
  DFFSR \regs_reg[9][4]  ( .D(n1224), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \regs[9][4] ) );
  DFFSR \regs_reg[9][3]  ( .D(n1223), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \regs[9][3] ) );
  DFFSR \regs_reg[9][2]  ( .D(n1222), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \regs[9][2] ) );
  DFFSR \regs_reg[9][1]  ( .D(n1221), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \regs[9][1] ) );
  DFFSR \regs_reg[9][0]  ( .D(n1220), .CLK(clk), .R(n449), .S(1'b1), .Q(
        \regs[9][0] ) );
  DFFSR \regs_reg[8][15]  ( .D(n1219), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \regs[8][15] ) );
  DFFSR \regs_reg[8][14]  ( .D(n1218), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \regs[8][14] ) );
  DFFSR \regs_reg[8][13]  ( .D(n1217), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \regs[8][13] ) );
  DFFSR \regs_reg[8][12]  ( .D(n1216), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \regs[8][12] ) );
  DFFSR \regs_reg[8][11]  ( .D(n1215), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \regs[8][11] ) );
  DFFSR \regs_reg[8][10]  ( .D(n1214), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \regs[8][10] ) );
  DFFSR \regs_reg[8][9]  ( .D(n1213), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \regs[8][9] ) );
  DFFSR \regs_reg[8][8]  ( .D(n1212), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \regs[8][8] ) );
  DFFSR \regs_reg[8][7]  ( .D(n1211), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \regs[8][7] ) );
  DFFSR \regs_reg[8][6]  ( .D(n1210), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \regs[8][6] ) );
  DFFSR \regs_reg[8][5]  ( .D(n1209), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \regs[8][5] ) );
  DFFSR \regs_reg[8][4]  ( .D(n1208), .CLK(clk), .R(n448), .S(1'b1), .Q(
        \regs[8][4] ) );
  DFFSR \regs_reg[8][3]  ( .D(n1207), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \regs[8][3] ) );
  DFFSR \regs_reg[8][2]  ( .D(n1206), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \regs[8][2] ) );
  DFFSR \regs_reg[8][1]  ( .D(n1205), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \regs[8][1] ) );
  DFFSR \regs_reg[8][0]  ( .D(n1204), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \regs[8][0] ) );
  DFFSR \regs_reg[7][15]  ( .D(n1203), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \regs[7][15] ) );
  DFFSR \regs_reg[7][14]  ( .D(n1202), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \regs[7][14] ) );
  DFFSR \regs_reg[7][13]  ( .D(n1201), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \regs[7][13] ) );
  DFFSR \regs_reg[7][12]  ( .D(n1200), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \regs[7][12] ) );
  DFFSR \regs_reg[7][11]  ( .D(n1199), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \regs[7][11] ) );
  DFFSR \regs_reg[7][10]  ( .D(n1198), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \regs[7][10] ) );
  DFFSR \regs_reg[7][9]  ( .D(n1197), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \regs[7][9] ) );
  DFFSR \regs_reg[7][8]  ( .D(n1196), .CLK(clk), .R(n447), .S(1'b1), .Q(
        \regs[7][8] ) );
  DFFSR \regs_reg[7][7]  ( .D(n1195), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \regs[7][7] ) );
  DFFSR \regs_reg[7][6]  ( .D(n1194), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \regs[7][6] ) );
  DFFSR \regs_reg[7][5]  ( .D(n1193), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \regs[7][5] ) );
  DFFSR \regs_reg[7][4]  ( .D(n1192), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \regs[7][4] ) );
  DFFSR \regs_reg[7][3]  ( .D(n1191), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \regs[7][3] ) );
  DFFSR \regs_reg[7][2]  ( .D(n1190), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \regs[7][2] ) );
  DFFSR \regs_reg[7][1]  ( .D(n1189), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \regs[7][1] ) );
  DFFSR \regs_reg[7][0]  ( .D(n1188), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \regs[7][0] ) );
  DFFSR \regs_reg[6][15]  ( .D(n1187), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \regs[6][15] ) );
  DFFSR \regs_reg[6][14]  ( .D(n1186), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \regs[6][14] ) );
  DFFSR \regs_reg[6][13]  ( .D(n1185), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \regs[6][13] ) );
  DFFSR \regs_reg[6][12]  ( .D(n1184), .CLK(clk), .R(n446), .S(1'b1), .Q(
        \regs[6][12] ) );
  DFFSR \regs_reg[6][11]  ( .D(n1183), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \regs[6][11] ) );
  DFFSR \regs_reg[6][10]  ( .D(n1182), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \regs[6][10] ) );
  DFFSR \regs_reg[6][9]  ( .D(n1181), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \regs[6][9] ) );
  DFFSR \regs_reg[6][8]  ( .D(n1180), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \regs[6][8] ) );
  DFFSR \regs_reg[6][7]  ( .D(n1179), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \regs[6][7] ) );
  DFFSR \regs_reg[6][6]  ( .D(n1178), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \regs[6][6] ) );
  DFFSR \regs_reg[6][5]  ( .D(n1177), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \regs[6][5] ) );
  DFFSR \regs_reg[6][4]  ( .D(n1176), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \regs[6][4] ) );
  DFFSR \regs_reg[6][3]  ( .D(n1175), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \regs[6][3] ) );
  DFFSR \regs_reg[6][2]  ( .D(n1174), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \regs[6][2] ) );
  DFFSR \regs_reg[6][1]  ( .D(n1173), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \regs[6][1] ) );
  DFFSR \regs_reg[6][0]  ( .D(n1172), .CLK(clk), .R(n445), .S(1'b1), .Q(
        \regs[6][0] ) );
  DFFSR \regs_reg[5][15]  ( .D(n1171), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \regs[5][15] ) );
  DFFSR \regs_reg[5][14]  ( .D(n1170), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \regs[5][14] ) );
  DFFSR \regs_reg[5][13]  ( .D(n1169), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \regs[5][13] ) );
  DFFSR \regs_reg[5][12]  ( .D(n1168), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \regs[5][12] ) );
  DFFSR \regs_reg[5][11]  ( .D(n1167), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \regs[5][11] ) );
  DFFSR \regs_reg[5][10]  ( .D(n1166), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \regs[5][10] ) );
  DFFSR \regs_reg[5][9]  ( .D(n1165), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \regs[5][9] ) );
  DFFSR \regs_reg[5][8]  ( .D(n1164), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \regs[5][8] ) );
  DFFSR \regs_reg[5][7]  ( .D(n1163), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \regs[5][7] ) );
  DFFSR \regs_reg[5][6]  ( .D(n1162), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \regs[5][6] ) );
  DFFSR \regs_reg[5][5]  ( .D(n1161), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \regs[5][5] ) );
  DFFSR \regs_reg[5][4]  ( .D(n1160), .CLK(clk), .R(n444), .S(1'b1), .Q(
        \regs[5][4] ) );
  DFFSR \regs_reg[5][3]  ( .D(n1159), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \regs[5][3] ) );
  DFFSR \regs_reg[5][2]  ( .D(n1158), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \regs[5][2] ) );
  DFFSR \regs_reg[5][1]  ( .D(n1157), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \regs[5][1] ) );
  DFFSR \regs_reg[5][0]  ( .D(n1156), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \regs[5][0] ) );
  DFFSR \regs_reg[4][15]  ( .D(n1155), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \regs[4][15] ) );
  DFFSR \regs_reg[4][14]  ( .D(n1154), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \regs[4][14] ) );
  DFFSR \regs_reg[4][13]  ( .D(n1153), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \regs[4][13] ) );
  DFFSR \regs_reg[4][12]  ( .D(n1152), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \regs[4][12] ) );
  DFFSR \regs_reg[4][11]  ( .D(n1151), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \regs[4][11] ) );
  DFFSR \regs_reg[4][10]  ( .D(n1150), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \regs[4][10] ) );
  DFFSR \regs_reg[4][9]  ( .D(n1149), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \regs[4][9] ) );
  DFFSR \regs_reg[4][8]  ( .D(n1148), .CLK(clk), .R(n443), .S(1'b1), .Q(
        \regs[4][8] ) );
  DFFSR \regs_reg[4][7]  ( .D(n1147), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \regs[4][7] ) );
  DFFSR \regs_reg[4][6]  ( .D(n1146), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \regs[4][6] ) );
  DFFSR \regs_reg[4][5]  ( .D(n1145), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \regs[4][5] ) );
  DFFSR \regs_reg[4][4]  ( .D(n1144), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \regs[4][4] ) );
  DFFSR \regs_reg[4][3]  ( .D(n1143), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \regs[4][3] ) );
  DFFSR \regs_reg[4][2]  ( .D(n1142), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \regs[4][2] ) );
  DFFSR \regs_reg[4][1]  ( .D(n1141), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \regs[4][1] ) );
  DFFSR \regs_reg[4][0]  ( .D(n1140), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \regs[4][0] ) );
  DFFSR \regs_reg[3][15]  ( .D(n1483), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \regs[3][15] ) );
  DFFSR \regs_reg[3][14]  ( .D(n1475), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \regs[3][14] ) );
  DFFSR \regs_reg[3][13]  ( .D(n1467), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \regs[3][13] ) );
  DFFSR \regs_reg[3][12]  ( .D(n1491), .CLK(clk), .R(n442), .S(1'b1), .Q(
        \regs[3][12] ) );
  DFFSR \regs_reg[3][11]  ( .D(n1451), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \regs[3][11] ) );
  DFFSR \regs_reg[3][10]  ( .D(n1443), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \regs[3][10] ) );
  DFFSR \regs_reg[3][9]  ( .D(n1435), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \regs[3][9] ) );
  DFFSR \regs_reg[3][8]  ( .D(n1459), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \regs[3][8] ) );
  DFFSR \regs_reg[3][7]  ( .D(n1419), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \regs[3][7] ) );
  DFFSR \regs_reg[3][6]  ( .D(n1411), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \regs[3][6] ) );
  DFFSR \regs_reg[3][5]  ( .D(n1403), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \regs[3][5] ) );
  DFFSR \regs_reg[3][4]  ( .D(n1427), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \regs[3][4] ) );
  DFFSR \regs_reg[3][3]  ( .D(n1387), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \regs[3][3] ) );
  DFFSR \regs_reg[3][2]  ( .D(n1379), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \regs[3][2] ) );
  DFFSR \regs_reg[3][1]  ( .D(n1371), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \regs[3][1] ) );
  DFFSR \regs_reg[3][0]  ( .D(n1395), .CLK(clk), .R(n441), .S(1'b1), .Q(
        \regs[3][0] ) );
  DFFSR \regs_reg[2][15]  ( .D(n1482), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \regs[2][15] ) );
  DFFSR \regs_reg[2][14]  ( .D(n1474), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \regs[2][14] ) );
  DFFSR \regs_reg[2][13]  ( .D(n1466), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \regs[2][13] ) );
  DFFSR \regs_reg[2][12]  ( .D(n1490), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \regs[2][12] ) );
  DFFSR \regs_reg[2][11]  ( .D(n1450), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \regs[2][11] ) );
  DFFSR \regs_reg[2][10]  ( .D(n1442), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \regs[2][10] ) );
  DFFSR \regs_reg[2][9]  ( .D(n1434), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \regs[2][9] ) );
  DFFSR \regs_reg[2][8]  ( .D(n1458), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \regs[2][8] ) );
  DFFSR \regs_reg[2][7]  ( .D(n1418), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \regs[2][7] ) );
  DFFSR \regs_reg[2][6]  ( .D(n1410), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \regs[2][6] ) );
  DFFSR \regs_reg[2][5]  ( .D(n1402), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \regs[2][5] ) );
  DFFSR \regs_reg[2][4]  ( .D(n1426), .CLK(clk), .R(n440), .S(1'b1), .Q(
        \regs[2][4] ) );
  DFFSR \regs_reg[2][3]  ( .D(n1386), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \regs[2][3] ) );
  DFFSR \regs_reg[2][2]  ( .D(n1378), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \regs[2][2] ) );
  DFFSR \regs_reg[2][1]  ( .D(n1370), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \regs[2][1] ) );
  DFFSR \regs_reg[2][0]  ( .D(n1394), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \regs[2][0] ) );
  DFFSR \regs_reg[1][15]  ( .D(n1481), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \regs[1][15] ) );
  DFFSR \regs_reg[1][14]  ( .D(n1473), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \regs[1][14] ) );
  DFFSR \regs_reg[1][13]  ( .D(n1465), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \regs[1][13] ) );
  DFFSR \regs_reg[1][12]  ( .D(n1489), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \regs[1][12] ) );
  DFFSR \regs_reg[1][11]  ( .D(n1449), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \regs[1][11] ) );
  DFFSR \regs_reg[1][10]  ( .D(n1441), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \regs[1][10] ) );
  DFFSR \regs_reg[1][9]  ( .D(n1433), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \regs[1][9] ) );
  DFFSR \regs_reg[1][8]  ( .D(n1457), .CLK(clk), .R(n439), .S(1'b1), .Q(
        \regs[1][8] ) );
  DFFSR \regs_reg[1][7]  ( .D(n1417), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \regs[1][7] ) );
  DFFSR \regs_reg[1][6]  ( .D(n1409), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \regs[1][6] ) );
  DFFSR \regs_reg[1][5]  ( .D(n1401), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \regs[1][5] ) );
  DFFSR \regs_reg[1][4]  ( .D(n1425), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \regs[1][4] ) );
  DFFSR \regs_reg[1][3]  ( .D(n1385), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \regs[1][3] ) );
  DFFSR \regs_reg[1][2]  ( .D(n1377), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \regs[1][2] ) );
  DFFSR \regs_reg[1][1]  ( .D(n1369), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \regs[1][1] ) );
  DFFSR \regs_reg[1][0]  ( .D(n1393), .CLK(clk), .R(n438), .S(1'b1), .Q(
        \regs[1][0] ) );
  DFFSR \regs_reg[0][15]  ( .D(n1480), .CLK(clk), .R(n438), .S(1'b1), .Q(
        outreg_data[15]) );
  DFFSR \regs_reg[0][14]  ( .D(n1472), .CLK(clk), .R(n438), .S(1'b1), .Q(
        outreg_data[14]) );
  DFFSR \regs_reg[0][13]  ( .D(n1464), .CLK(clk), .R(n438), .S(1'b1), .Q(
        outreg_data[13]) );
  DFFSR \regs_reg[0][12]  ( .D(n1488), .CLK(clk), .R(n438), .S(1'b1), .Q(
        outreg_data[12]) );
  DFFSR \regs_reg[0][11]  ( .D(n1448), .CLK(clk), .R(n437), .S(1'b1), .Q(
        outreg_data[11]) );
  DFFSR \regs_reg[0][10]  ( .D(n1440), .CLK(clk), .R(n437), .S(1'b1), .Q(
        outreg_data[10]) );
  DFFSR \regs_reg[0][9]  ( .D(n1432), .CLK(clk), .R(n437), .S(1'b1), .Q(
        outreg_data[9]) );
  DFFSR \regs_reg[0][8]  ( .D(n1456), .CLK(clk), .R(n437), .S(1'b1), .Q(
        outreg_data[8]) );
  DFFSR \regs_reg[0][7]  ( .D(n1416), .CLK(clk), .R(n437), .S(1'b1), .Q(
        outreg_data[7]) );
  DFFSR \regs_reg[0][6]  ( .D(n1408), .CLK(clk), .R(n437), .S(1'b1), .Q(
        outreg_data[6]) );
  DFFSR \regs_reg[0][5]  ( .D(n1400), .CLK(clk), .R(n437), .S(1'b1), .Q(
        outreg_data[5]) );
  DFFSR \regs_reg[0][4]  ( .D(n1424), .CLK(clk), .R(n437), .S(1'b1), .Q(
        outreg_data[4]) );
  DFFSR \regs_reg[0][3]  ( .D(n1384), .CLK(clk), .R(n437), .S(1'b1), .Q(
        outreg_data[3]) );
  DFFSR \regs_reg[0][2]  ( .D(n1376), .CLK(clk), .R(n437), .S(1'b1), .Q(
        outreg_data[2]) );
  DFFSR \regs_reg[0][1]  ( .D(n1368), .CLK(clk), .R(n437), .S(1'b1), .Q(
        outreg_data[1]) );
  DFFSR \regs_reg[0][0]  ( .D(n1392), .CLK(clk), .R(n437), .S(1'b1), .Q(
        outreg_data[0]) );
  INVX1 U258 ( .A(n422), .Y(n321) );
  BUFX2 U259 ( .A(n277), .Y(n257) );
  INVX2 U260 ( .A(r1_sel[0]), .Y(n258) );
  INVX2 U261 ( .A(r1_sel[0]), .Y(n351) );
  INVX4 U262 ( .A(r1_sel[0]), .Y(n259) );
  AND2X2 U263 ( .A(n261), .B(n487), .Y(n260) );
  INVX2 U264 ( .A(n357), .Y(n263) );
  INVX1 U265 ( .A(n311), .Y(n261) );
  BUFX2 U266 ( .A(n341), .Y(n262) );
  INVX1 U267 ( .A(r2_sel[3]), .Y(n499) );
  MUX2X1 U268 ( .B(n751), .A(n1121), .S(n340), .Y(n1452) );
  MUX2X1 U269 ( .B(n751), .A(n1114), .S(n344), .Y(n1263) );
  MUX2X1 U270 ( .B(n751), .A(n752), .S(n346), .Y(n1183) );
  MUX2X1 U271 ( .B(n751), .A(n771), .S(n263), .Y(n1151) );
  INVX2 U272 ( .A(n1050), .Y(n298) );
  INVX4 U273 ( .A(n402), .Y(n264) );
  INVX4 U274 ( .A(n264), .Y(n265) );
  INVX4 U275 ( .A(n264), .Y(n266) );
  NOR2X1 U276 ( .A(n408), .B(n567), .Y(n267) );
  NOR2X1 U277 ( .A(n568), .B(n268), .Y(n569) );
  INVX2 U278 ( .A(n267), .Y(n268) );
  OR2X1 U279 ( .A(n990), .B(n989), .Y(r1_data[4]) );
  BUFX4 U280 ( .A(r2_sel[3]), .Y(n311) );
  INVX1 U281 ( .A(r1_sel[2]), .Y(n269) );
  OR2X2 U282 ( .A(r2_sel[0]), .B(r2_sel[1]), .Y(n270) );
  INVX4 U283 ( .A(n270), .Y(n323) );
  INVX8 U284 ( .A(n323), .Y(n409) );
  INVX4 U285 ( .A(n323), .Y(n410) );
  INVX2 U286 ( .A(n896), .Y(n334) );
  OR2X2 U287 ( .A(n950), .B(n949), .Y(r1_data[2]) );
  AND2X2 U288 ( .A(r2_sel[2]), .B(n499), .Y(n314) );
  INVX4 U289 ( .A(n292), .Y(n271) );
  INVX1 U290 ( .A(n292), .Y(n345) );
  BUFX2 U291 ( .A(r1_sel[1]), .Y(n272) );
  BUFX2 U292 ( .A(n882), .Y(n308) );
  AND2X2 U293 ( .A(n316), .B(n314), .Y(n273) );
  AND2X2 U294 ( .A(n316), .B(n314), .Y(n274) );
  AND2X2 U295 ( .A(n365), .B(\regs[6][7] ), .Y(n275) );
  NOR2X1 U296 ( .A(n275), .B(n680), .Y(n681) );
  AND2X2 U297 ( .A(n888), .B(r1_sel[3]), .Y(n276) );
  INVX1 U298 ( .A(n1110), .Y(n296) );
  INVX4 U299 ( .A(n1342), .Y(n426) );
  INVX2 U300 ( .A(n319), .Y(n277) );
  INVX2 U301 ( .A(n319), .Y(n759) );
  INVX4 U302 ( .A(r2_sel[1]), .Y(n543) );
  INVX1 U303 ( .A(n860), .Y(n395) );
  INVX4 U304 ( .A(n328), .Y(n498) );
  INVX2 U305 ( .A(n355), .Y(n332) );
  INVX1 U306 ( .A(n865), .Y(n397) );
  INVX1 U307 ( .A(n853), .Y(n388) );
  AND2X1 U308 ( .A(n351), .B(r1_sel[1]), .Y(n278) );
  AND2X1 U309 ( .A(n625), .B(n624), .Y(n279) );
  AND2X2 U310 ( .A(n676), .B(n675), .Y(n280) );
  AND2X2 U311 ( .A(w_sel[1]), .B(n462), .Y(n281) );
  AND2X2 U312 ( .A(w_sel[2]), .B(n472), .Y(n282) );
  AND2X2 U313 ( .A(w_sel[2]), .B(w_sel[1]), .Y(n283) );
  AND2X2 U314 ( .A(n472), .B(n462), .Y(n284) );
  INVX1 U315 ( .A(n858), .Y(n386) );
  OR2X1 U316 ( .A(n641), .B(n642), .Y(n285) );
  MUX2X1 U317 ( .B(n660), .A(n668), .S(n332), .Y(n1416) );
  INVX2 U318 ( .A(r1_sel[0]), .Y(n286) );
  INVX2 U319 ( .A(n286), .Y(n287) );
  MUX2X1 U320 ( .B(n799), .A(n808), .S(n336), .Y(n1465) );
  INVX2 U321 ( .A(n363), .Y(n336) );
  MUX2X1 U322 ( .B(n728), .A(n738), .S(n335), .Y(n1442) );
  MUX2X1 U323 ( .B(n728), .A(n737), .S(n336), .Y(n1441) );
  MUX2X1 U324 ( .B(n728), .A(n736), .S(n332), .Y(n1440) );
  AND2X2 U325 ( .A(n295), .B(n884), .Y(n288) );
  MUX2X1 U326 ( .B(n751), .A(n1112), .S(n322), .Y(n1453) );
  INVX2 U327 ( .A(n359), .Y(n322) );
  INVX4 U328 ( .A(n759), .Y(n406) );
  INVX1 U329 ( .A(n1109), .Y(n297) );
  INVX1 U330 ( .A(n1049), .Y(n299) );
  BUFX4 U331 ( .A(n1327), .Y(n289) );
  INVX2 U332 ( .A(n1327), .Y(n416) );
  INVX1 U333 ( .A(n418), .Y(n290) );
  AND2X1 U334 ( .A(n274), .B(\regs[4][6] ), .Y(n643) );
  INVX2 U335 ( .A(n274), .Y(n329) );
  BUFX2 U336 ( .A(n428), .Y(n291) );
  INVX4 U337 ( .A(n273), .Y(n405) );
  AND2X2 U338 ( .A(r2_sel[2]), .B(n311), .Y(n292) );
  INVX4 U339 ( .A(n420), .Y(n293) );
  INVX4 U340 ( .A(n420), .Y(n294) );
  INVX4 U341 ( .A(n420), .Y(n421) );
  INVX1 U342 ( .A(n269), .Y(n295) );
  NAND2X1 U343 ( .A(n296), .B(n297), .Y(r1_data[10]) );
  NAND2X1 U344 ( .A(n299), .B(n298), .Y(r1_data[7]) );
  NAND2X1 U345 ( .A(n300), .B(n301), .Y(r1_data[5]) );
  INVX2 U346 ( .A(n1010), .Y(n300) );
  INVX2 U347 ( .A(n1009), .Y(n301) );
  NAND3X1 U348 ( .A(n279), .B(n302), .C(n630), .Y(r2_data[5]) );
  INVX1 U349 ( .A(n626), .Y(n302) );
  NAND2X1 U350 ( .A(n304), .B(n303), .Y(r1_data[3]) );
  INVX2 U351 ( .A(n970), .Y(n303) );
  INVX2 U352 ( .A(n969), .Y(n304) );
  NAND2X1 U353 ( .A(n305), .B(n306), .Y(r1_data[6]) );
  INVX2 U354 ( .A(n1030), .Y(n305) );
  INVX2 U355 ( .A(n1029), .Y(n306) );
  AOI22X1 U356 ( .A(\regs[6][2] ), .B(n365), .C(n274), .D(\regs[4][2] ), .Y(
        n549) );
  NAND3X1 U357 ( .A(n280), .B(n307), .C(n681), .Y(r2_data[7]) );
  INVX1 U358 ( .A(n677), .Y(n307) );
  NAND2X1 U359 ( .A(n311), .B(n487), .Y(n309) );
  OR2X2 U360 ( .A(n1130), .B(n1129), .Y(r1_data[11]) );
  INVX1 U361 ( .A(n416), .Y(n310) );
  INVX1 U362 ( .A(n380), .Y(n312) );
  BUFX4 U363 ( .A(n882), .Y(n313) );
  INVX2 U364 ( .A(n324), .Y(n663) );
  BUFX4 U365 ( .A(n1335), .Y(n315) );
  AND2X2 U366 ( .A(n278), .B(n288), .Y(n379) );
  NOR2X1 U367 ( .A(r2_sel[1]), .B(r2_sel[0]), .Y(n316) );
  NAND2X1 U368 ( .A(n317), .B(n260), .Y(n318) );
  NAND2X1 U369 ( .A(n318), .B(n549), .Y(n551) );
  INVX2 U370 ( .A(n550), .Y(n317) );
  AND2X2 U371 ( .A(n588), .B(n543), .Y(n319) );
  INVX1 U372 ( .A(n273), .Y(n320) );
  INVX8 U373 ( .A(n406), .Y(n407) );
  MUX2X1 U374 ( .B(n822), .A(n1311), .S(n471), .Y(n1250) );
  MUX2X1 U375 ( .B(n660), .A(n1032), .S(n322), .Y(n1421) );
  AOI22X1 U376 ( .A(\regs[13][7] ), .B(n388), .C(\regs[12][7] ), .D(n319), .Y(
        n324) );
  INVX1 U377 ( .A(\regs[12][7] ), .Y(n1041) );
  OR2X1 U378 ( .A(n552), .B(n551), .Y(r2_data[2]) );
  INVX1 U379 ( .A(n308), .Y(n375) );
  INVX8 U380 ( .A(n418), .Y(n419) );
  INVX8 U381 ( .A(n1319), .Y(n325) );
  INVX8 U382 ( .A(n325), .Y(n326) );
  INVX8 U383 ( .A(n325), .Y(n327) );
  MUX2X1 U384 ( .B(n822), .A(n1299), .S(n338), .Y(n1479) );
  INVX2 U385 ( .A(n361), .Y(n338) );
  AND2X2 U386 ( .A(r2_sel[1]), .B(n588), .Y(n366) );
  INVX2 U387 ( .A(n309), .Y(n581) );
  AND2X2 U388 ( .A(n588), .B(n543), .Y(n328) );
  NOR2X1 U389 ( .A(n643), .B(n285), .Y(n659) );
  MUX2X1 U390 ( .B(n822), .A(n1308), .S(n339), .Y(n1478) );
  INVX2 U391 ( .A(n360), .Y(n339) );
  MUX2X1 U392 ( .B(n822), .A(n1300), .S(n322), .Y(n1477) );
  MUX2X1 U393 ( .B(n822), .A(n1309), .S(n340), .Y(n1476) );
  INVX2 U394 ( .A(n358), .Y(n340) );
  MUX2X1 U395 ( .B(n822), .A(n1302), .S(n344), .Y(n1266) );
  INVX2 U396 ( .A(n362), .Y(n344) );
  INVX1 U397 ( .A(n897), .Y(n330) );
  AND2X1 U398 ( .A(r1_sel[1]), .B(r1_sel[0]), .Y(n331) );
  MUX2X1 U399 ( .B(n822), .A(n1301), .S(n467), .Y(n1234) );
  MUX2X1 U400 ( .B(n822), .A(n830), .S(n332), .Y(n1472) );
  INVX8 U401 ( .A(n424), .Y(n333) );
  INVX4 U402 ( .A(n424), .Y(n425) );
  MUX2X1 U403 ( .B(n822), .A(n1310), .S(n470), .Y(n1218) );
  MUX2X1 U404 ( .B(n822), .A(n841), .S(n477), .Y(n1202) );
  MUX2X1 U405 ( .B(n822), .A(n823), .S(n346), .Y(n1186) );
  INVX2 U406 ( .A(n364), .Y(n346) );
  MUX2X1 U407 ( .B(n822), .A(n827), .S(n475), .Y(n1170) );
  INVX4 U408 ( .A(n896), .Y(n1334) );
  INVX4 U409 ( .A(n1344), .Y(n424) );
  INVX4 U410 ( .A(n308), .Y(n376) );
  AND2X2 U411 ( .A(n331), .B(n378), .Y(n413) );
  MUX2X1 U412 ( .B(n822), .A(n840), .S(n263), .Y(n1154) );
  MUX2X1 U413 ( .B(n822), .A(n833), .S(n465), .Y(n1475) );
  MUX2X1 U414 ( .B(n822), .A(n832), .S(n335), .Y(n1474) );
  INVX2 U415 ( .A(n356), .Y(n335) );
  MUX2X1 U416 ( .B(n822), .A(n831), .S(n336), .Y(n1473) );
  MUX2X1 U417 ( .B(n751), .A(n763), .S(n335), .Y(n1450) );
  MUX2X1 U418 ( .B(n751), .A(n761), .S(n336), .Y(n1449) );
  INVX1 U419 ( .A(n543), .Y(n337) );
  INVX4 U420 ( .A(n1338), .Y(n422) );
  INVX8 U421 ( .A(n411), .Y(n412) );
  MUX2X1 U422 ( .B(n851), .A(n1321), .S(n338), .Y(n1487) );
  MUX2X1 U423 ( .B(n851), .A(n1337), .S(n339), .Y(n1486) );
  MUX2X1 U424 ( .B(n851), .A(n1322), .S(n322), .Y(n1485) );
  MUX2X1 U425 ( .B(n851), .A(n1339), .S(n340), .Y(n1484) );
  MUX2X1 U426 ( .B(n851), .A(n868), .S(n465), .Y(n1483) );
  BUFX4 U427 ( .A(n885), .Y(n374) );
  MUX2X1 U428 ( .B(n751), .A(n760), .S(n332), .Y(n1448) );
  AND2X2 U429 ( .A(r2_sel[2]), .B(n499), .Y(n341) );
  INVX1 U430 ( .A(n341), .Y(n568) );
  NAND2X1 U431 ( .A(r1_sel[0]), .B(n901), .Y(n342) );
  AND2X2 U432 ( .A(n343), .B(n381), .Y(n384) );
  INVX1 U433 ( .A(n342), .Y(n343) );
  MUX2X1 U434 ( .B(n851), .A(n1326), .S(n344), .Y(n1267) );
  MUX2X1 U435 ( .B(n851), .A(n1343), .S(n471), .Y(n1251) );
  MUX2X1 U436 ( .B(n851), .A(n1324), .S(n467), .Y(n1235) );
  MUX2X1 U437 ( .B(n851), .A(n1341), .S(n470), .Y(n1219) );
  INVX8 U438 ( .A(n271), .Y(n854) );
  INVX4 U439 ( .A(n1340), .Y(n420) );
  MUX2X1 U440 ( .B(n851), .A(n877), .S(n477), .Y(n1203) );
  MUX2X1 U441 ( .B(n851), .A(n852), .S(n346), .Y(n1187) );
  MUX2X1 U442 ( .B(n851), .A(n859), .S(n475), .Y(n1171) );
  MUX2X1 U443 ( .B(n851), .A(n876), .S(n263), .Y(n1155) );
  BUFX4 U444 ( .A(n1335), .Y(n347) );
  BUFX4 U445 ( .A(n1335), .Y(n348) );
  INVX2 U446 ( .A(n898), .Y(n1335) );
  AND2X2 U447 ( .A(n888), .B(r1_sel[3]), .Y(n349) );
  INVX8 U448 ( .A(n385), .Y(n350) );
  INVX4 U449 ( .A(n385), .Y(n1320) );
  INVX1 U450 ( .A(n644), .Y(n645) );
  INVX4 U451 ( .A(n408), .Y(n576) );
  AND2X2 U452 ( .A(r2_sel[1]), .B(n588), .Y(n367) );
  NAND2X1 U453 ( .A(r1_sel[0]), .B(r1_sel[1]), .Y(n352) );
  NAND2X1 U454 ( .A(n288), .B(n353), .Y(n883) );
  INVX2 U455 ( .A(n352), .Y(n353) );
  INVX4 U456 ( .A(n316), .Y(n390) );
  MUX2X1 U457 ( .B(n851), .A(n867), .S(n335), .Y(n1482) );
  MUX2X1 U458 ( .B(n851), .A(n866), .S(n336), .Y(n1481) );
  MUX2X1 U459 ( .B(n851), .A(n864), .S(n332), .Y(n1480) );
  INVX4 U460 ( .A(n426), .Y(n428) );
  INVX2 U461 ( .A(n366), .Y(n354) );
  INVX1 U462 ( .A(n366), .Y(n401) );
  AND2X1 U463 ( .A(n854), .B(n372), .Y(n368) );
  AND2X1 U464 ( .A(n581), .B(n372), .Y(n369) );
  AND2X1 U465 ( .A(n262), .B(n372), .Y(n371) );
  INVX2 U466 ( .A(n465), .Y(n845) );
  INVX2 U467 ( .A(n475), .Y(n849) );
  INVX2 U468 ( .A(n470), .Y(n847) );
  INVX2 U469 ( .A(n467), .Y(n846) );
  INVX2 U470 ( .A(n471), .Y(n848) );
  INVX2 U471 ( .A(n477), .Y(n850) );
  AND2X2 U472 ( .A(n284), .B(n478), .Y(n355) );
  AND2X2 U473 ( .A(n281), .B(n478), .Y(n356) );
  AND2X2 U474 ( .A(n282), .B(n478), .Y(n357) );
  AND2X2 U475 ( .A(n473), .B(n282), .Y(n358) );
  AND2X2 U476 ( .A(n474), .B(n282), .Y(n359) );
  AND2X2 U477 ( .A(n473), .B(n283), .Y(n360) );
  AND2X2 U478 ( .A(n474), .B(n283), .Y(n361) );
  AND2X2 U479 ( .A(n281), .B(n474), .Y(n362) );
  AND2X2 U480 ( .A(n284), .B(n476), .Y(n363) );
  AND2X2 U481 ( .A(n478), .B(n283), .Y(n364) );
  AND2X2 U482 ( .A(n341), .B(n646), .Y(n365) );
  INVX4 U483 ( .A(n413), .Y(n415) );
  INVX2 U484 ( .A(n366), .Y(n402) );
  INVX2 U485 ( .A(n369), .Y(n394) );
  INVX2 U486 ( .A(n369), .Y(n393) );
  INVX2 U487 ( .A(n368), .Y(n392) );
  INVX2 U488 ( .A(n368), .Y(n391) );
  INVX2 U489 ( .A(n370), .Y(n399) );
  INVX2 U490 ( .A(n371), .Y(n403) );
  INVX2 U491 ( .A(n370), .Y(n400) );
  INVX2 U492 ( .A(n371), .Y(n404) );
  BUFX2 U493 ( .A(n429), .Y(n437) );
  BUFX2 U494 ( .A(n429), .Y(n438) );
  BUFX2 U495 ( .A(n429), .Y(n439) );
  BUFX2 U496 ( .A(n430), .Y(n440) );
  BUFX2 U497 ( .A(n430), .Y(n441) );
  BUFX2 U498 ( .A(n430), .Y(n442) );
  BUFX2 U499 ( .A(n431), .Y(n443) );
  BUFX2 U500 ( .A(n431), .Y(n444) );
  BUFX2 U501 ( .A(n431), .Y(n445) );
  BUFX2 U502 ( .A(n432), .Y(n446) );
  BUFX2 U503 ( .A(n432), .Y(n447) );
  BUFX2 U504 ( .A(n432), .Y(n448) );
  BUFX2 U505 ( .A(n433), .Y(n449) );
  BUFX2 U506 ( .A(n433), .Y(n450) );
  BUFX2 U507 ( .A(n433), .Y(n451) );
  BUFX2 U508 ( .A(n434), .Y(n452) );
  BUFX2 U509 ( .A(n434), .Y(n453) );
  BUFX2 U510 ( .A(n434), .Y(n454) );
  BUFX2 U511 ( .A(n435), .Y(n455) );
  BUFX2 U512 ( .A(n435), .Y(n456) );
  BUFX2 U513 ( .A(n435), .Y(n457) );
  AND2X2 U514 ( .A(n372), .B(n869), .Y(n370) );
  INVX2 U515 ( .A(n395), .Y(n396) );
  INVX2 U516 ( .A(n388), .Y(n389) );
  INVX2 U517 ( .A(n397), .Y(n398) );
  INVX2 U518 ( .A(n386), .Y(n387) );
  BUFX2 U519 ( .A(n436), .Y(n458) );
  BUFX2 U520 ( .A(n_reset), .Y(n436) );
  AND2X2 U521 ( .A(r2_sel[0]), .B(n337), .Y(n372) );
  BUFX2 U522 ( .A(n_reset), .Y(n429) );
  BUFX2 U523 ( .A(n_reset), .Y(n430) );
  BUFX2 U524 ( .A(n_reset), .Y(n431) );
  BUFX2 U525 ( .A(n_reset), .Y(n432) );
  BUFX2 U526 ( .A(n_reset), .Y(n433) );
  BUFX2 U527 ( .A(n_reset), .Y(n434) );
  BUFX2 U528 ( .A(n_reset), .Y(n435) );
  INVX8 U529 ( .A(r1_sel[1]), .Y(n901) );
  MUX2X1 U530 ( .B(n751), .A(n1123), .S(n471), .Y(n1247) );
  MUX2X1 U531 ( .B(n751), .A(n1113), .S(n467), .Y(n1231) );
  MUX2X1 U532 ( .B(n751), .A(n1122), .S(n470), .Y(n1215) );
  MUX2X1 U533 ( .B(n751), .A(n772), .S(n477), .Y(n1199) );
  MUX2X1 U534 ( .B(n751), .A(n756), .S(n475), .Y(n1167) );
  MUX2X1 U535 ( .B(n751), .A(n764), .S(n465), .Y(n1451) );
  BUFX4 U536 ( .A(n885), .Y(n373) );
  INVX1 U537 ( .A(n329), .Y(n582) );
  INVX8 U538 ( .A(n313), .Y(n377) );
  AND2X2 U539 ( .A(r1_sel[3]), .B(r1_sel[2]), .Y(n378) );
  INVX4 U540 ( .A(n426), .Y(n427) );
  INVX4 U541 ( .A(n416), .Y(n417) );
  INVX4 U542 ( .A(n1323), .Y(n411) );
  INVX4 U543 ( .A(n413), .Y(n414) );
  INVX4 U544 ( .A(n379), .Y(n380) );
  AND2X2 U545 ( .A(n884), .B(n888), .Y(n381) );
  INVX8 U546 ( .A(n380), .Y(n1333) );
  INVX8 U547 ( .A(n374), .Y(n382) );
  INVX8 U548 ( .A(n373), .Y(n383) );
  INVX4 U549 ( .A(n384), .Y(n385) );
  INVX4 U550 ( .A(n1325), .Y(n418) );
  INVX8 U551 ( .A(w_data[0]), .Y(n479) );
  INVX8 U552 ( .A(w_data[1]), .Y(n507) );
  INVX8 U553 ( .A(w_data[2]), .Y(n534) );
  INVX8 U554 ( .A(w_data[3]), .Y(n554) );
  INVX8 U555 ( .A(w_data[4]), .Y(n586) );
  INVX8 U556 ( .A(w_data[5]), .Y(n610) );
  INVX8 U557 ( .A(w_data[6]), .Y(n635) );
  INVX8 U558 ( .A(w_data[7]), .Y(n660) );
  INVX8 U559 ( .A(w_data[8]), .Y(n682) );
  INVX8 U560 ( .A(w_data[9]), .Y(n705) );
  INVX8 U561 ( .A(w_data[10]), .Y(n728) );
  INVX8 U562 ( .A(w_data[11]), .Y(n751) );
  INVX8 U563 ( .A(w_data[12]), .Y(n776) );
  INVX8 U564 ( .A(w_data[13]), .Y(n799) );
  INVX8 U565 ( .A(w_data[14]), .Y(n822) );
  INVX8 U566 ( .A(w_data[15]), .Y(n851) );
  INVX4 U567 ( .A(n572), .Y(n861) );
  INVX4 U568 ( .A(n575), .Y(n869) );
  INVX8 U569 ( .A(n367), .Y(n408) );
  INVX4 U570 ( .A(n644), .Y(n879) );
  INVX4 U571 ( .A(n883), .Y(n1319) );
  INVX4 U572 ( .A(n897), .Y(n1336) );
  INVX8 U573 ( .A(n422), .Y(n423) );
  INVX2 U574 ( .A(outreg_data[0]), .Y(n488) );
  INVX2 U575 ( .A(w_sel[1]), .Y(n472) );
  INVX2 U576 ( .A(w_sel[2]), .Y(n462) );
  INVX2 U577 ( .A(w_sel[0]), .Y(n468) );
  INVX2 U578 ( .A(w_sel[3]), .Y(n463) );
  NAND3X1 U579 ( .A(w_en), .B(n468), .C(n463), .Y(n459) );
  INVX2 U580 ( .A(n459), .Y(n478) );
  MUX2X1 U581 ( .B(n488), .A(n479), .S(n355), .Y(n1392) );
  INVX2 U582 ( .A(outreg_data[1]), .Y(n522) );
  MUX2X1 U583 ( .B(n522), .A(n507), .S(n355), .Y(n1368) );
  INVX2 U584 ( .A(outreg_data[2]), .Y(n460) );
  MUX2X1 U585 ( .B(n460), .A(n534), .S(n355), .Y(n1376) );
  INVX2 U586 ( .A(outreg_data[3]), .Y(n461) );
  MUX2X1 U587 ( .B(n461), .A(n554), .S(n355), .Y(n1384) );
  INVX2 U588 ( .A(outreg_data[4]), .Y(n595) );
  MUX2X1 U589 ( .B(n595), .A(n586), .S(n355), .Y(n1424) );
  INVX2 U590 ( .A(outreg_data[5]), .Y(n618) );
  MUX2X1 U591 ( .B(n618), .A(n610), .S(n355), .Y(n1400) );
  INVX2 U592 ( .A(outreg_data[6]), .Y(n650) );
  MUX2X1 U593 ( .B(n650), .A(n635), .S(n355), .Y(n1408) );
  INVX2 U594 ( .A(outreg_data[7]), .Y(n668) );
  INVX2 U595 ( .A(outreg_data[8]), .Y(n690) );
  MUX2X1 U596 ( .B(n690), .A(n682), .S(n355), .Y(n1456) );
  INVX2 U597 ( .A(outreg_data[9]), .Y(n713) );
  MUX2X1 U598 ( .B(n713), .A(n705), .S(n355), .Y(n1432) );
  INVX2 U599 ( .A(outreg_data[10]), .Y(n736) );
  INVX2 U600 ( .A(outreg_data[11]), .Y(n760) );
  INVX2 U601 ( .A(outreg_data[12]), .Y(n784) );
  MUX2X1 U602 ( .B(n784), .A(n776), .S(n355), .Y(n1488) );
  INVX2 U603 ( .A(outreg_data[13]), .Y(n807) );
  MUX2X1 U604 ( .B(n807), .A(n799), .S(n355), .Y(n1464) );
  INVX2 U605 ( .A(outreg_data[14]), .Y(n830) );
  INVX2 U606 ( .A(outreg_data[15]), .Y(n864) );
  INVX2 U607 ( .A(\regs[2][0] ), .Y(n490) );
  MUX2X1 U608 ( .B(n490), .A(n479), .S(n356), .Y(n1394) );
  INVX2 U609 ( .A(\regs[3][0] ), .Y(n491) );
  NAND3X1 U610 ( .A(w_sel[0]), .B(w_en), .C(n463), .Y(n464) );
  INVX2 U611 ( .A(n464), .Y(n476) );
  NAND2X1 U612 ( .A(n281), .B(n476), .Y(n465) );
  MUX2X1 U613 ( .B(n491), .A(n479), .S(n845), .Y(n1395) );
  INVX2 U614 ( .A(\regs[1][0] ), .Y(n489) );
  MUX2X1 U615 ( .B(n489), .A(n479), .S(n363), .Y(n1393) );
  INVX2 U616 ( .A(\regs[9][0] ), .Y(n889) );
  NAND3X1 U617 ( .A(w_sel[3]), .B(w_sel[0]), .C(w_en), .Y(n466) );
  INVX2 U618 ( .A(n466), .Y(n474) );
  NAND2X1 U619 ( .A(n284), .B(n474), .Y(n467) );
  MUX2X1 U620 ( .B(n889), .A(n479), .S(n846), .Y(n1220) );
  INVX2 U621 ( .A(\regs[8][0] ), .Y(n902) );
  NAND3X1 U622 ( .A(w_sel[3]), .B(w_en), .C(n468), .Y(n469) );
  INVX2 U623 ( .A(n469), .Y(n473) );
  NAND2X1 U624 ( .A(n284), .B(n473), .Y(n470) );
  MUX2X1 U625 ( .B(n902), .A(n479), .S(n847), .Y(n1204) );
  INVX2 U626 ( .A(\regs[11][0] ), .Y(n890) );
  MUX2X1 U627 ( .B(n890), .A(n479), .S(n362), .Y(n1252) );
  INVX2 U628 ( .A(\regs[10][0] ), .Y(n903) );
  NAND2X1 U629 ( .A(n281), .B(n473), .Y(n471) );
  MUX2X1 U630 ( .B(n903), .A(n479), .S(n848), .Y(n1236) );
  INVX2 U631 ( .A(\regs[14][0] ), .Y(n899) );
  MUX2X1 U632 ( .B(n899), .A(n479), .S(n360), .Y(n1398) );
  INVX2 U633 ( .A(\regs[15][0] ), .Y(n886) );
  MUX2X1 U634 ( .B(n886), .A(n479), .S(n361), .Y(n1399) );
  INVX2 U635 ( .A(\regs[12][0] ), .Y(n900) );
  MUX2X1 U636 ( .B(n900), .A(n479), .S(n358), .Y(n1396) );
  INVX2 U637 ( .A(\regs[13][0] ), .Y(n887) );
  MUX2X1 U638 ( .B(n887), .A(n479), .S(n359), .Y(n1397) );
  INVX2 U639 ( .A(\regs[5][0] ), .Y(n484) );
  NAND2X1 U640 ( .A(n282), .B(n476), .Y(n475) );
  MUX2X1 U641 ( .B(n484), .A(n479), .S(n849), .Y(n1156) );
  INVX2 U642 ( .A(\regs[4][0] ), .Y(n500) );
  MUX2X1 U643 ( .B(n500), .A(n479), .S(n357), .Y(n1140) );
  INVX2 U644 ( .A(\regs[7][0] ), .Y(n501) );
  NAND2X1 U645 ( .A(n476), .B(n283), .Y(n477) );
  MUX2X1 U646 ( .B(n501), .A(n479), .S(n850), .Y(n1188) );
  INVX2 U647 ( .A(\regs[6][0] ), .Y(n480) );
  MUX2X1 U648 ( .B(n480), .A(n479), .S(n364), .Y(n1172) );
  NAND3X1 U649 ( .A(n262), .B(r2_sel[0]), .C(n543), .Y(n858) );
  NAND3X1 U650 ( .A(n854), .B(r2_sel[0]), .C(n543), .Y(n853) );
  INVX2 U651 ( .A(r2_sel[0]), .Y(n588) );
  OAI22X1 U652 ( .A(n887), .B(n389), .C(n900), .D(n277), .Y(n482) );
  NAND2X1 U653 ( .A(r2_sel[1]), .B(n588), .Y(n670) );
  OAI22X1 U654 ( .A(n886), .B(n391), .C(n899), .D(n670), .Y(n481) );
  OAI21X1 U655 ( .A(n482), .B(n481), .C(n854), .Y(n483) );
  OAI21X1 U656 ( .A(n484), .B(n858), .C(n483), .Y(n497) );
  INVX2 U657 ( .A(r2_sel[2]), .Y(n487) );
  NAND2X1 U658 ( .A(n311), .B(n487), .Y(n572) );
  OAI22X1 U659 ( .A(n903), .B(n670), .C(n890), .D(n393), .Y(n486) );
  NAND3X1 U660 ( .A(n581), .B(r2_sel[0]), .C(n543), .Y(n860) );
  OAI22X1 U661 ( .A(n902), .B(n498), .C(n889), .D(n396), .Y(n485) );
  OAI21X1 U662 ( .A(n486), .B(n485), .C(n861), .Y(n495) );
  NAND2X1 U663 ( .A(n261), .B(n487), .Y(n575) );
  NAND3X1 U664 ( .A(n260), .B(r2_sel[0]), .C(n543), .Y(n865) );
  OAI22X1 U665 ( .A(n489), .B(n865), .C(n488), .D(n410), .Y(n493) );
  OAI22X1 U666 ( .A(n491), .B(n400), .C(n490), .D(n670), .Y(n492) );
  OAI21X1 U667 ( .A(n493), .B(n492), .C(n869), .Y(n494) );
  NAND2X1 U668 ( .A(n495), .B(n494), .Y(n496) );
  NOR2X1 U669 ( .A(n497), .B(n496), .Y(n504) );
  INVX2 U670 ( .A(n401), .Y(n646) );
  OAI22X1 U671 ( .A(n501), .B(n403), .C(n500), .D(n405), .Y(n502) );
  AOI21X1 U672 ( .A(n365), .B(\regs[6][0] ), .C(n502), .Y(n503) );
  NAND2X1 U673 ( .A(n504), .B(n503), .Y(r2_data[0]) );
  INVX2 U674 ( .A(\regs[5][1] ), .Y(n515) );
  MUX2X1 U675 ( .B(n515), .A(n507), .S(n849), .Y(n1157) );
  INVX2 U676 ( .A(\regs[7][1] ), .Y(n516) );
  MUX2X1 U677 ( .B(n516), .A(n507), .S(n850), .Y(n1189) );
  INVX2 U678 ( .A(\regs[3][1] ), .Y(n513) );
  MUX2X1 U679 ( .B(n513), .A(n507), .S(n845), .Y(n1371) );
  INVX2 U680 ( .A(\regs[1][1] ), .Y(n514) );
  MUX2X1 U681 ( .B(n514), .A(n507), .S(n363), .Y(n1369) );
  INVX2 U682 ( .A(\regs[9][1] ), .Y(n913) );
  MUX2X1 U683 ( .B(n913), .A(n507), .S(n846), .Y(n1221) );
  INVX2 U684 ( .A(\regs[11][1] ), .Y(n914) );
  MUX2X1 U685 ( .B(n914), .A(n507), .S(n362), .Y(n1253) );
  INVX2 U686 ( .A(\regs[15][1] ), .Y(n911) );
  MUX2X1 U687 ( .B(n911), .A(n507), .S(n361), .Y(n1375) );
  INVX2 U688 ( .A(\regs[13][1] ), .Y(n912) );
  MUX2X1 U689 ( .B(n912), .A(n507), .S(n359), .Y(n1373) );
  INVX2 U690 ( .A(\regs[6][1] ), .Y(n505) );
  MUX2X1 U691 ( .B(n505), .A(n507), .S(n364), .Y(n1173) );
  INVX2 U692 ( .A(\regs[14][1] ), .Y(n920) );
  MUX2X1 U693 ( .B(n920), .A(n507), .S(n360), .Y(n1374) );
  INVX2 U694 ( .A(\regs[12][1] ), .Y(n921) );
  MUX2X1 U695 ( .B(n921), .A(n507), .S(n358), .Y(n1372) );
  INVX2 U696 ( .A(\regs[2][1] ), .Y(n521) );
  MUX2X1 U697 ( .B(n521), .A(n507), .S(n356), .Y(n1370) );
  INVX2 U698 ( .A(\regs[4][1] ), .Y(n506) );
  MUX2X1 U699 ( .B(n506), .A(n507), .S(n357), .Y(n1141) );
  INVX2 U700 ( .A(\regs[8][1] ), .Y(n922) );
  MUX2X1 U701 ( .B(n922), .A(n507), .S(n847), .Y(n1205) );
  INVX2 U702 ( .A(\regs[10][1] ), .Y(n923) );
  MUX2X1 U703 ( .B(n923), .A(n507), .S(n848), .Y(n1237) );
  OAI22X1 U704 ( .A(n912), .B(n389), .C(n911), .D(n391), .Y(n509) );
  OAI22X1 U705 ( .A(n914), .B(n393), .C(n913), .D(n396), .Y(n508) );
  NOR2X1 U706 ( .A(n509), .B(n508), .Y(n512) );
  OAI22X1 U707 ( .A(n921), .B(n409), .C(n920), .D(n408), .Y(n510) );
  AOI22X1 U708 ( .A(n854), .B(n510), .C(n645), .D(\regs[6][1] ), .Y(n511) );
  AND2X2 U709 ( .A(n512), .B(n511), .Y(n530) );
  OAI22X1 U710 ( .A(n514), .B(n398), .C(n513), .D(n400), .Y(n518) );
  OAI22X1 U711 ( .A(n516), .B(n403), .C(n515), .D(n387), .Y(n517) );
  NOR2X1 U712 ( .A(n518), .B(n517), .Y(n529) );
  NAND2X1 U713 ( .A(n323), .B(\regs[8][1] ), .Y(n520) );
  NAND2X1 U714 ( .A(n576), .B(\regs[10][1] ), .Y(n519) );
  AOI21X1 U715 ( .A(n520), .B(n519), .C(n309), .Y(n527) );
  OAI22X1 U716 ( .A(n522), .B(n409), .C(n521), .D(n408), .Y(n523) );
  NAND2X1 U717 ( .A(n869), .B(n523), .Y(n525) );
  NAND2X1 U718 ( .A(n274), .B(\regs[4][1] ), .Y(n524) );
  NAND2X1 U719 ( .A(n525), .B(n524), .Y(n526) );
  NOR2X1 U720 ( .A(n527), .B(n526), .Y(n528) );
  NAND3X1 U721 ( .A(n530), .B(n529), .C(n528), .Y(r2_data[1]) );
  INVX2 U722 ( .A(\regs[4][2] ), .Y(n531) );
  MUX2X1 U723 ( .B(n531), .A(n534), .S(n357), .Y(n1142) );
  INVX2 U724 ( .A(\regs[6][2] ), .Y(n532) );
  MUX2X1 U725 ( .B(n532), .A(n534), .S(n364), .Y(n1174) );
  INVX2 U726 ( .A(\regs[2][2] ), .Y(n533) );
  MUX2X1 U727 ( .B(n533), .A(n534), .S(n356), .Y(n1378) );
  INVX2 U728 ( .A(\regs[8][2] ), .Y(n942) );
  MUX2X1 U729 ( .B(n942), .A(n534), .S(n847), .Y(n1206) );
  INVX2 U730 ( .A(\regs[10][2] ), .Y(n943) );
  MUX2X1 U731 ( .B(n943), .A(n534), .S(n848), .Y(n1238) );
  INVX2 U732 ( .A(\regs[5][2] ), .Y(n537) );
  MUX2X1 U733 ( .B(n537), .A(n534), .S(n849), .Y(n1158) );
  INVX2 U734 ( .A(\regs[7][2] ), .Y(n538) );
  MUX2X1 U735 ( .B(n538), .A(n534), .S(n850), .Y(n1190) );
  INVX2 U736 ( .A(\regs[3][2] ), .Y(n535) );
  MUX2X1 U737 ( .B(n535), .A(n534), .S(n845), .Y(n1379) );
  INVX2 U738 ( .A(\regs[1][2] ), .Y(n536) );
  MUX2X1 U739 ( .B(n536), .A(n534), .S(n363), .Y(n1377) );
  INVX2 U740 ( .A(\regs[9][2] ), .Y(n933) );
  MUX2X1 U741 ( .B(n933), .A(n534), .S(n846), .Y(n1222) );
  INVX2 U742 ( .A(\regs[11][2] ), .Y(n934) );
  MUX2X1 U743 ( .B(n934), .A(n534), .S(n362), .Y(n1254) );
  INVX2 U744 ( .A(\regs[15][2] ), .Y(n931) );
  MUX2X1 U745 ( .B(n931), .A(n534), .S(n361), .Y(n1383) );
  INVX2 U746 ( .A(\regs[13][2] ), .Y(n932) );
  MUX2X1 U747 ( .B(n932), .A(n534), .S(n359), .Y(n1381) );
  INVX2 U748 ( .A(\regs[14][2] ), .Y(n940) );
  MUX2X1 U749 ( .B(n940), .A(n534), .S(n360), .Y(n1382) );
  INVX2 U750 ( .A(\regs[12][2] ), .Y(n941) );
  MUX2X1 U751 ( .B(n941), .A(n534), .S(n358), .Y(n1380) );
  OAI22X1 U752 ( .A(n536), .B(n398), .C(n535), .D(n399), .Y(n540) );
  OAI22X1 U753 ( .A(n538), .B(n403), .C(n537), .D(n387), .Y(n539) );
  NOR2X1 U754 ( .A(n540), .B(n539), .Y(n548) );
  OAI22X1 U755 ( .A(n932), .B(n389), .C(n931), .D(n392), .Y(n542) );
  OAI22X1 U756 ( .A(n934), .B(n394), .C(n933), .D(n396), .Y(n541) );
  NOR2X1 U757 ( .A(n542), .B(n541), .Y(n547) );
  OAI22X1 U758 ( .A(n943), .B(n266), .C(n942), .D(n390), .Y(n545) );
  OAI22X1 U759 ( .A(n941), .B(n409), .C(n940), .D(n354), .Y(n544) );
  AOI22X1 U760 ( .A(n861), .B(n545), .C(n854), .D(n544), .Y(n546) );
  NAND3X1 U761 ( .A(n548), .B(n547), .C(n546), .Y(n552) );
  AOI22X1 U762 ( .A(n576), .B(\regs[2][2] ), .C(n328), .D(outreg_data[2]), .Y(
        n550) );
  INVX2 U763 ( .A(\regs[4][3] ), .Y(n553) );
  MUX2X1 U764 ( .B(n553), .A(n554), .S(n357), .Y(n1143) );
  INVX2 U765 ( .A(\regs[6][3] ), .Y(n567) );
  MUX2X1 U766 ( .B(n567), .A(n554), .S(n364), .Y(n1175) );
  INVX2 U767 ( .A(\regs[13][3] ), .Y(n952) );
  MUX2X1 U768 ( .B(n952), .A(n554), .S(n359), .Y(n1389) );
  INVX2 U769 ( .A(\regs[15][3] ), .Y(n951) );
  MUX2X1 U770 ( .B(n951), .A(n554), .S(n361), .Y(n1391) );
  INVX2 U771 ( .A(\regs[11][3] ), .Y(n954) );
  MUX2X1 U772 ( .B(n954), .A(n554), .S(n362), .Y(n1255) );
  INVX2 U773 ( .A(\regs[9][3] ), .Y(n953) );
  MUX2X1 U774 ( .B(n953), .A(n554), .S(n846), .Y(n1223) );
  INVX2 U775 ( .A(\regs[1][3] ), .Y(n560) );
  MUX2X1 U776 ( .B(n560), .A(n554), .S(n363), .Y(n1385) );
  INVX2 U777 ( .A(\regs[3][3] ), .Y(n561) );
  MUX2X1 U778 ( .B(n561), .A(n554), .S(n845), .Y(n1387) );
  INVX2 U779 ( .A(\regs[7][3] ), .Y(n558) );
  MUX2X1 U780 ( .B(n558), .A(n554), .S(n850), .Y(n1191) );
  INVX2 U781 ( .A(\regs[5][3] ), .Y(n559) );
  MUX2X1 U782 ( .B(n559), .A(n554), .S(n849), .Y(n1159) );
  INVX2 U783 ( .A(\regs[14][3] ), .Y(n960) );
  MUX2X1 U784 ( .B(n960), .A(n554), .S(n360), .Y(n1390) );
  INVX2 U785 ( .A(\regs[12][3] ), .Y(n961) );
  MUX2X1 U786 ( .B(n961), .A(n554), .S(n358), .Y(n1388) );
  INVX2 U787 ( .A(\regs[8][3] ), .Y(n962) );
  MUX2X1 U788 ( .B(n962), .A(n554), .S(n847), .Y(n1207) );
  INVX2 U789 ( .A(\regs[10][3] ), .Y(n963) );
  MUX2X1 U790 ( .B(n963), .A(n554), .S(n848), .Y(n1239) );
  INVX2 U791 ( .A(\regs[2][3] ), .Y(n555) );
  MUX2X1 U792 ( .B(n555), .A(n554), .S(n356), .Y(n1386) );
  NAND2X1 U793 ( .A(n576), .B(\regs[14][3] ), .Y(n557) );
  NAND2X1 U794 ( .A(n323), .B(\regs[12][3] ), .Y(n556) );
  AOI21X1 U795 ( .A(n557), .B(n556), .C(n345), .Y(n571) );
  AOI22X1 U796 ( .A(n395), .B(\regs[9][3] ), .C(n369), .D(\regs[11][3] ), .Y(
        n566) );
  OAI22X1 U797 ( .A(n559), .B(n387), .C(n558), .D(n403), .Y(n563) );
  OAI22X1 U798 ( .A(n561), .B(n399), .C(n560), .D(n398), .Y(n562) );
  NOR2X1 U799 ( .A(n563), .B(n562), .Y(n565) );
  AOI22X1 U800 ( .A(n368), .B(\regs[15][3] ), .C(n388), .D(\regs[13][3] ), .Y(
        n564) );
  NAND3X1 U801 ( .A(n566), .B(n565), .C(n564), .Y(n570) );
  NOR3X1 U802 ( .A(n569), .B(n570), .C(n571), .Y(n585) );
  NAND2X1 U803 ( .A(n328), .B(\regs[8][3] ), .Y(n574) );
  NAND2X1 U804 ( .A(n576), .B(\regs[10][3] ), .Y(n573) );
  NAND2X1 U805 ( .A(n574), .B(n573), .Y(n580) );
  NAND2X1 U806 ( .A(n576), .B(\regs[2][3] ), .Y(n578) );
  NAND2X1 U807 ( .A(n323), .B(outreg_data[3]), .Y(n577) );
  NAND2X1 U808 ( .A(n578), .B(n577), .Y(n579) );
  AOI22X1 U809 ( .A(n581), .B(n580), .C(n260), .D(n579), .Y(n584) );
  NAND2X1 U810 ( .A(n582), .B(\regs[4][3] ), .Y(n583) );
  NAND3X1 U811 ( .A(n583), .B(n584), .C(n585), .Y(r2_data[3]) );
  INVX2 U812 ( .A(\regs[2][4] ), .Y(n597) );
  MUX2X1 U813 ( .B(n597), .A(n586), .S(n356), .Y(n1426) );
  INVX2 U814 ( .A(\regs[3][4] ), .Y(n598) );
  MUX2X1 U815 ( .B(n598), .A(n586), .S(n845), .Y(n1427) );
  INVX2 U816 ( .A(\regs[1][4] ), .Y(n596) );
  MUX2X1 U817 ( .B(n596), .A(n586), .S(n363), .Y(n1425) );
  INVX2 U818 ( .A(\regs[9][4] ), .Y(n973) );
  MUX2X1 U819 ( .B(n973), .A(n586), .S(n846), .Y(n1224) );
  INVX2 U820 ( .A(\regs[8][4] ), .Y(n982) );
  MUX2X1 U821 ( .B(n982), .A(n586), .S(n847), .Y(n1208) );
  INVX2 U822 ( .A(\regs[11][4] ), .Y(n974) );
  MUX2X1 U823 ( .B(n974), .A(n586), .S(n362), .Y(n1256) );
  INVX2 U824 ( .A(\regs[10][4] ), .Y(n983) );
  MUX2X1 U825 ( .B(n983), .A(n586), .S(n848), .Y(n1240) );
  INVX2 U826 ( .A(\regs[14][4] ), .Y(n980) );
  MUX2X1 U827 ( .B(n980), .A(n586), .S(n360), .Y(n1430) );
  INVX2 U828 ( .A(\regs[15][4] ), .Y(n971) );
  MUX2X1 U829 ( .B(n971), .A(n586), .S(n361), .Y(n1431) );
  INVX2 U830 ( .A(\regs[12][4] ), .Y(n981) );
  MUX2X1 U831 ( .B(n981), .A(n586), .S(n358), .Y(n1428) );
  INVX2 U832 ( .A(\regs[13][4] ), .Y(n972) );
  MUX2X1 U833 ( .B(n972), .A(n586), .S(n359), .Y(n1429) );
  INVX2 U834 ( .A(\regs[5][4] ), .Y(n592) );
  MUX2X1 U835 ( .B(n592), .A(n586), .S(n849), .Y(n1160) );
  INVX2 U836 ( .A(\regs[4][4] ), .Y(n605) );
  MUX2X1 U837 ( .B(n605), .A(n586), .S(n357), .Y(n1144) );
  INVX2 U838 ( .A(\regs[7][4] ), .Y(n606) );
  MUX2X1 U839 ( .B(n606), .A(n586), .S(n850), .Y(n1192) );
  INVX2 U840 ( .A(\regs[6][4] ), .Y(n587) );
  MUX2X1 U841 ( .B(n587), .A(n586), .S(n364), .Y(n1176) );
  OAI22X1 U842 ( .A(n972), .B(n853), .C(n981), .D(n407), .Y(n590) );
  NAND2X1 U843 ( .A(r2_sel[1]), .B(n588), .Y(n762) );
  OAI22X1 U844 ( .A(n971), .B(n392), .C(n980), .D(n762), .Y(n589) );
  OAI21X1 U845 ( .A(n590), .B(n589), .C(n854), .Y(n591) );
  OAI21X1 U846 ( .A(n592), .B(n858), .C(n591), .Y(n604) );
  OAI22X1 U847 ( .A(n983), .B(n762), .C(n974), .D(n394), .Y(n594) );
  OAI22X1 U848 ( .A(n982), .B(n390), .C(n973), .D(n860), .Y(n593) );
  OAI21X1 U849 ( .A(n594), .B(n593), .C(n861), .Y(n602) );
  OAI22X1 U850 ( .A(n596), .B(n865), .C(n595), .D(n390), .Y(n600) );
  OAI22X1 U851 ( .A(n598), .B(n400), .C(n597), .D(n762), .Y(n599) );
  OAI21X1 U852 ( .A(n600), .B(n599), .C(n869), .Y(n601) );
  NAND2X1 U853 ( .A(n602), .B(n601), .Y(n603) );
  NOR2X1 U854 ( .A(n604), .B(n603), .Y(n609) );
  NAND2X1 U855 ( .A(n341), .B(n646), .Y(n644) );
  OAI22X1 U856 ( .A(n606), .B(n403), .C(n605), .D(n405), .Y(n607) );
  AOI21X1 U857 ( .A(n879), .B(\regs[6][4] ), .C(n607), .Y(n608) );
  NAND2X1 U858 ( .A(n609), .B(n608), .Y(r2_data[4]) );
  INVX2 U859 ( .A(\regs[2][5] ), .Y(n620) );
  MUX2X1 U860 ( .B(n620), .A(n610), .S(n356), .Y(n1402) );
  INVX2 U861 ( .A(\regs[3][5] ), .Y(n621) );
  MUX2X1 U862 ( .B(n621), .A(n610), .S(n845), .Y(n1403) );
  INVX2 U863 ( .A(\regs[1][5] ), .Y(n619) );
  MUX2X1 U864 ( .B(n619), .A(n610), .S(n363), .Y(n1401) );
  INVX2 U865 ( .A(\regs[9][5] ), .Y(n993) );
  MUX2X1 U866 ( .B(n993), .A(n610), .S(n846), .Y(n1225) );
  INVX2 U867 ( .A(\regs[8][5] ), .Y(n1002) );
  MUX2X1 U868 ( .B(n1002), .A(n610), .S(n847), .Y(n1209) );
  INVX2 U869 ( .A(\regs[11][5] ), .Y(n994) );
  MUX2X1 U870 ( .B(n994), .A(n610), .S(n362), .Y(n1257) );
  INVX2 U871 ( .A(\regs[10][5] ), .Y(n1003) );
  MUX2X1 U872 ( .B(n1003), .A(n610), .S(n848), .Y(n1241) );
  INVX2 U873 ( .A(\regs[14][5] ), .Y(n1000) );
  MUX2X1 U874 ( .B(n1000), .A(n610), .S(n360), .Y(n1406) );
  INVX2 U875 ( .A(\regs[15][5] ), .Y(n991) );
  MUX2X1 U876 ( .B(n991), .A(n610), .S(n361), .Y(n1407) );
  INVX2 U877 ( .A(\regs[12][5] ), .Y(n1001) );
  MUX2X1 U878 ( .B(n1001), .A(n610), .S(n358), .Y(n1404) );
  INVX2 U879 ( .A(\regs[13][5] ), .Y(n992) );
  MUX2X1 U880 ( .B(n992), .A(n610), .S(n359), .Y(n1405) );
  INVX2 U881 ( .A(\regs[5][5] ), .Y(n615) );
  MUX2X1 U882 ( .B(n615), .A(n610), .S(n849), .Y(n1161) );
  INVX2 U883 ( .A(\regs[4][5] ), .Y(n627) );
  MUX2X1 U884 ( .B(n627), .A(n610), .S(n357), .Y(n1145) );
  INVX2 U885 ( .A(\regs[7][5] ), .Y(n628) );
  MUX2X1 U886 ( .B(n628), .A(n610), .S(n850), .Y(n1193) );
  INVX2 U887 ( .A(\regs[6][5] ), .Y(n611) );
  MUX2X1 U888 ( .B(n611), .A(n610), .S(n364), .Y(n1177) );
  OAI22X1 U889 ( .A(n992), .B(n389), .C(n1001), .D(n498), .Y(n613) );
  OAI22X1 U890 ( .A(n991), .B(n391), .C(n1000), .D(n670), .Y(n612) );
  OAI21X1 U891 ( .A(n613), .B(n612), .C(n854), .Y(n614) );
  OAI21X1 U892 ( .A(n615), .B(n858), .C(n614), .Y(n626) );
  OAI22X1 U893 ( .A(n1003), .B(n670), .C(n994), .D(n393), .Y(n617) );
  OAI22X1 U894 ( .A(n1002), .B(n409), .C(n993), .D(n396), .Y(n616) );
  OAI21X1 U895 ( .A(n617), .B(n616), .C(n861), .Y(n625) );
  OAI22X1 U896 ( .A(n619), .B(n865), .C(n618), .D(n498), .Y(n623) );
  OAI22X1 U897 ( .A(n621), .B(n399), .C(n620), .D(n670), .Y(n622) );
  OAI21X1 U898 ( .A(n623), .B(n622), .C(n869), .Y(n624) );
  OAI22X1 U899 ( .A(n628), .B(n403), .C(n627), .D(n405), .Y(n629) );
  AOI21X1 U900 ( .A(n365), .B(\regs[6][5] ), .C(n629), .Y(n630) );
  INVX2 U901 ( .A(\regs[2][6] ), .Y(n649) );
  MUX2X1 U902 ( .B(n649), .A(n635), .S(n356), .Y(n1410) );
  INVX2 U903 ( .A(\regs[8][6] ), .Y(n1022) );
  MUX2X1 U904 ( .B(n1022), .A(n635), .S(n847), .Y(n1210) );
  INVX2 U905 ( .A(\regs[10][6] ), .Y(n1023) );
  MUX2X1 U906 ( .B(n1023), .A(n635), .S(n848), .Y(n1242) );
  INVX2 U907 ( .A(\regs[14][6] ), .Y(n1020) );
  MUX2X1 U908 ( .B(n1020), .A(n635), .S(n360), .Y(n1414) );
  INVX2 U909 ( .A(\regs[12][6] ), .Y(n1021) );
  MUX2X1 U910 ( .B(n1021), .A(n635), .S(n358), .Y(n1412) );
  INVX2 U911 ( .A(\regs[5][6] ), .Y(n631) );
  MUX2X1 U912 ( .B(n631), .A(n635), .S(n849), .Y(n1162) );
  MUX2X1 U913 ( .B(n637), .A(n635), .S(n850), .Y(n1194) );
  INVX2 U914 ( .A(\regs[3][6] ), .Y(n632) );
  MUX2X1 U915 ( .B(n632), .A(n635), .S(n845), .Y(n1411) );
  INVX2 U916 ( .A(\regs[1][6] ), .Y(n633) );
  MUX2X1 U917 ( .B(n633), .A(n635), .S(n363), .Y(n1409) );
  INVX2 U918 ( .A(\regs[9][6] ), .Y(n1013) );
  MUX2X1 U919 ( .B(n1013), .A(n635), .S(n846), .Y(n1226) );
  INVX2 U920 ( .A(\regs[11][6] ), .Y(n1014) );
  MUX2X1 U921 ( .B(n1014), .A(n635), .S(n362), .Y(n1258) );
  INVX2 U922 ( .A(\regs[15][6] ), .Y(n1011) );
  MUX2X1 U923 ( .B(n1011), .A(n635), .S(n361), .Y(n1415) );
  INVX2 U924 ( .A(\regs[13][6] ), .Y(n1012) );
  MUX2X1 U925 ( .B(n1012), .A(n635), .S(n359), .Y(n1413) );
  INVX2 U926 ( .A(\regs[4][6] ), .Y(n634) );
  MUX2X1 U927 ( .B(n634), .A(n635), .S(n357), .Y(n1146) );
  INVX2 U928 ( .A(\regs[6][6] ), .Y(n636) );
  MUX2X1 U929 ( .B(n636), .A(n635), .S(n364), .Y(n1178) );
  INVX2 U930 ( .A(\regs[7][6] ), .Y(n637) );
  OAI22X1 U931 ( .A(n631), .B(n387), .C(n637), .D(n403), .Y(n642) );
  AOI22X1 U932 ( .A(n395), .B(\regs[9][6] ), .C(n369), .D(\regs[11][6] ), .Y(
        n640) );
  AOI22X1 U933 ( .A(n368), .B(\regs[15][6] ), .C(n388), .D(\regs[13][6] ), .Y(
        n639) );
  AOI22X1 U934 ( .A(n397), .B(\regs[1][6] ), .C(n370), .D(\regs[3][6] ), .Y(
        n638) );
  NAND3X1 U935 ( .A(n640), .B(n639), .C(n638), .Y(n641) );
  NAND2X1 U936 ( .A(\regs[6][6] ), .B(n365), .Y(n658) );
  NAND2X1 U937 ( .A(n646), .B(\regs[14][6] ), .Y(n648) );
  NAND2X1 U938 ( .A(n328), .B(\regs[12][6] ), .Y(n647) );
  AOI21X1 U939 ( .A(n648), .B(n647), .C(n345), .Y(n656) );
  OAI22X1 U940 ( .A(n650), .B(n409), .C(n649), .D(n408), .Y(n651) );
  NAND2X1 U941 ( .A(n869), .B(n651), .Y(n654) );
  OAI22X1 U942 ( .A(n1023), .B(n408), .C(n1022), .D(n390), .Y(n652) );
  NAND2X1 U943 ( .A(n861), .B(n652), .Y(n653) );
  NAND2X1 U944 ( .A(n654), .B(n653), .Y(n655) );
  NOR2X1 U945 ( .A(n656), .B(n655), .Y(n657) );
  NAND3X1 U946 ( .A(n659), .B(n658), .C(n657), .Y(r2_data[6]) );
  INVX2 U947 ( .A(\regs[2][7] ), .Y(n671) );
  MUX2X1 U948 ( .B(n671), .A(n660), .S(n356), .Y(n1418) );
  INVX2 U949 ( .A(\regs[3][7] ), .Y(n672) );
  MUX2X1 U950 ( .B(n672), .A(n660), .S(n845), .Y(n1419) );
  INVX2 U951 ( .A(\regs[1][7] ), .Y(n669) );
  MUX2X1 U952 ( .B(n669), .A(n660), .S(n363), .Y(n1417) );
  INVX2 U953 ( .A(\regs[9][7] ), .Y(n1033) );
  MUX2X1 U954 ( .B(n1033), .A(n660), .S(n846), .Y(n1227) );
  INVX2 U955 ( .A(\regs[8][7] ), .Y(n1042) );
  MUX2X1 U956 ( .B(n1042), .A(n660), .S(n847), .Y(n1211) );
  INVX2 U957 ( .A(\regs[11][7] ), .Y(n1034) );
  MUX2X1 U958 ( .B(n1034), .A(n660), .S(n362), .Y(n1259) );
  INVX2 U959 ( .A(\regs[10][7] ), .Y(n1043) );
  MUX2X1 U960 ( .B(n1043), .A(n660), .S(n848), .Y(n1243) );
  INVX2 U961 ( .A(\regs[14][7] ), .Y(n1040) );
  MUX2X1 U962 ( .B(n1040), .A(n660), .S(n360), .Y(n1422) );
  INVX2 U963 ( .A(\regs[15][7] ), .Y(n1031) );
  MUX2X1 U964 ( .B(n1031), .A(n660), .S(n361), .Y(n1423) );
  MUX2X1 U965 ( .B(n1041), .A(n660), .S(n358), .Y(n1420) );
  INVX2 U966 ( .A(\regs[13][7] ), .Y(n1032) );
  INVX2 U967 ( .A(\regs[5][7] ), .Y(n665) );
  MUX2X1 U968 ( .B(n665), .A(n660), .S(n849), .Y(n1163) );
  INVX2 U969 ( .A(\regs[4][7] ), .Y(n678) );
  MUX2X1 U970 ( .B(n678), .A(n660), .S(n357), .Y(n1147) );
  INVX2 U971 ( .A(\regs[7][7] ), .Y(n679) );
  MUX2X1 U972 ( .B(n679), .A(n660), .S(n850), .Y(n1195) );
  INVX2 U973 ( .A(\regs[6][7] ), .Y(n661) );
  MUX2X1 U974 ( .B(n661), .A(n660), .S(n364), .Y(n1179) );
  OAI22X1 U975 ( .A(n1031), .B(n392), .C(n1040), .D(n762), .Y(n662) );
  OAI21X1 U976 ( .A(n663), .B(n662), .C(n854), .Y(n664) );
  OAI21X1 U977 ( .A(n665), .B(n858), .C(n664), .Y(n677) );
  OAI22X1 U978 ( .A(n1043), .B(n670), .C(n1034), .D(n394), .Y(n667) );
  OAI22X1 U979 ( .A(n1042), .B(n390), .C(n1033), .D(n860), .Y(n666) );
  OAI21X1 U980 ( .A(n667), .B(n666), .C(n861), .Y(n676) );
  OAI22X1 U981 ( .A(n669), .B(n865), .C(n668), .D(n390), .Y(n674) );
  OAI22X1 U982 ( .A(n672), .B(n400), .C(n671), .D(n670), .Y(n673) );
  OAI21X1 U983 ( .A(n674), .B(n673), .C(n260), .Y(n675) );
  OAI22X1 U984 ( .A(n679), .B(n403), .C(n678), .D(n405), .Y(n680) );
  INVX2 U985 ( .A(\regs[2][8] ), .Y(n692) );
  MUX2X1 U986 ( .B(n692), .A(n682), .S(n356), .Y(n1458) );
  INVX2 U987 ( .A(\regs[3][8] ), .Y(n693) );
  MUX2X1 U988 ( .B(n693), .A(n682), .S(n845), .Y(n1459) );
  INVX2 U989 ( .A(\regs[1][8] ), .Y(n691) );
  MUX2X1 U990 ( .B(n691), .A(n682), .S(n363), .Y(n1457) );
  INVX2 U991 ( .A(\regs[9][8] ), .Y(n1053) );
  MUX2X1 U992 ( .B(n1053), .A(n682), .S(n846), .Y(n1228) );
  INVX2 U993 ( .A(\regs[8][8] ), .Y(n1062) );
  MUX2X1 U994 ( .B(n1062), .A(n682), .S(n847), .Y(n1212) );
  INVX2 U995 ( .A(\regs[11][8] ), .Y(n1054) );
  MUX2X1 U996 ( .B(n1054), .A(n682), .S(n362), .Y(n1260) );
  INVX2 U997 ( .A(\regs[10][8] ), .Y(n1063) );
  MUX2X1 U998 ( .B(n1063), .A(n682), .S(n848), .Y(n1244) );
  INVX2 U999 ( .A(\regs[14][8] ), .Y(n1060) );
  MUX2X1 U1000 ( .B(n1060), .A(n682), .S(n360), .Y(n1462) );
  INVX2 U1001 ( .A(\regs[15][8] ), .Y(n1051) );
  MUX2X1 U1002 ( .B(n1051), .A(n682), .S(n361), .Y(n1463) );
  INVX2 U1003 ( .A(\regs[12][8] ), .Y(n1061) );
  MUX2X1 U1004 ( .B(n1061), .A(n682), .S(n358), .Y(n1460) );
  INVX2 U1005 ( .A(\regs[13][8] ), .Y(n1052) );
  MUX2X1 U1006 ( .B(n1052), .A(n682), .S(n359), .Y(n1461) );
  INVX2 U1007 ( .A(\regs[5][8] ), .Y(n687) );
  MUX2X1 U1008 ( .B(n687), .A(n682), .S(n849), .Y(n1164) );
  INVX2 U1009 ( .A(\regs[4][8] ), .Y(n700) );
  MUX2X1 U1010 ( .B(n700), .A(n682), .S(n357), .Y(n1148) );
  INVX2 U1011 ( .A(\regs[7][8] ), .Y(n701) );
  MUX2X1 U1012 ( .B(n701), .A(n682), .S(n850), .Y(n1196) );
  INVX2 U1013 ( .A(\regs[6][8] ), .Y(n683) );
  MUX2X1 U1014 ( .B(n683), .A(n682), .S(n364), .Y(n1180) );
  OAI22X1 U1015 ( .A(n1052), .B(n389), .C(n1061), .D(n498), .Y(n685) );
  OAI22X1 U1016 ( .A(n1051), .B(n391), .C(n1060), .D(n354), .Y(n684) );
  OAI21X1 U1017 ( .A(n685), .B(n684), .C(n854), .Y(n686) );
  OAI21X1 U1018 ( .A(n687), .B(n858), .C(n686), .Y(n699) );
  OAI22X1 U1019 ( .A(n1063), .B(n266), .C(n1054), .D(n393), .Y(n689) );
  OAI22X1 U1020 ( .A(n1062), .B(n390), .C(n1053), .D(n396), .Y(n688) );
  OAI21X1 U1021 ( .A(n689), .B(n688), .C(n861), .Y(n697) );
  OAI22X1 U1022 ( .A(n691), .B(n398), .C(n690), .D(n390), .Y(n695) );
  OAI22X1 U1023 ( .A(n693), .B(n399), .C(n692), .D(n265), .Y(n694) );
  OAI21X1 U1024 ( .A(n695), .B(n694), .C(n869), .Y(n696) );
  NAND2X1 U1025 ( .A(n697), .B(n696), .Y(n698) );
  NOR2X1 U1026 ( .A(n699), .B(n698), .Y(n704) );
  OAI22X1 U1027 ( .A(n701), .B(n404), .C(n700), .D(n329), .Y(n702) );
  AOI21X1 U1028 ( .A(n879), .B(\regs[6][8] ), .C(n702), .Y(n703) );
  NAND2X1 U1029 ( .A(n704), .B(n703), .Y(r2_data[8]) );
  INVX2 U1030 ( .A(\regs[2][9] ), .Y(n715) );
  MUX2X1 U1031 ( .B(n715), .A(n705), .S(n356), .Y(n1434) );
  INVX2 U1032 ( .A(\regs[3][9] ), .Y(n716) );
  MUX2X1 U1033 ( .B(n716), .A(n705), .S(n845), .Y(n1435) );
  INVX2 U1034 ( .A(\regs[1][9] ), .Y(n714) );
  MUX2X1 U1035 ( .B(n714), .A(n705), .S(n363), .Y(n1433) );
  INVX2 U1036 ( .A(\regs[9][9] ), .Y(n1073) );
  MUX2X1 U1037 ( .B(n1073), .A(n705), .S(n846), .Y(n1229) );
  INVX2 U1038 ( .A(\regs[8][9] ), .Y(n1082) );
  MUX2X1 U1039 ( .B(n1082), .A(n705), .S(n847), .Y(n1213) );
  INVX2 U1040 ( .A(\regs[11][9] ), .Y(n1074) );
  MUX2X1 U1041 ( .B(n1074), .A(n705), .S(n362), .Y(n1261) );
  INVX2 U1042 ( .A(\regs[10][9] ), .Y(n1083) );
  MUX2X1 U1043 ( .B(n1083), .A(n705), .S(n848), .Y(n1245) );
  INVX2 U1044 ( .A(\regs[14][9] ), .Y(n1080) );
  MUX2X1 U1045 ( .B(n1080), .A(n705), .S(n360), .Y(n1438) );
  INVX2 U1046 ( .A(\regs[15][9] ), .Y(n1071) );
  MUX2X1 U1047 ( .B(n1071), .A(n705), .S(n361), .Y(n1439) );
  INVX2 U1048 ( .A(\regs[12][9] ), .Y(n1081) );
  MUX2X1 U1049 ( .B(n1081), .A(n705), .S(n358), .Y(n1436) );
  INVX2 U1050 ( .A(\regs[13][9] ), .Y(n1072) );
  MUX2X1 U1051 ( .B(n1072), .A(n705), .S(n359), .Y(n1437) );
  INVX2 U1052 ( .A(\regs[5][9] ), .Y(n710) );
  MUX2X1 U1053 ( .B(n710), .A(n705), .S(n849), .Y(n1165) );
  INVX2 U1054 ( .A(\regs[4][9] ), .Y(n723) );
  MUX2X1 U1055 ( .B(n723), .A(n705), .S(n357), .Y(n1149) );
  INVX2 U1056 ( .A(\regs[7][9] ), .Y(n724) );
  MUX2X1 U1057 ( .B(n724), .A(n705), .S(n850), .Y(n1197) );
  INVX2 U1058 ( .A(\regs[6][9] ), .Y(n706) );
  MUX2X1 U1059 ( .B(n706), .A(n705), .S(n364), .Y(n1181) );
  OAI22X1 U1060 ( .A(n1072), .B(n853), .C(n1081), .D(n277), .Y(n708) );
  OAI22X1 U1061 ( .A(n1071), .B(n392), .C(n1080), .D(n762), .Y(n707) );
  OAI21X1 U1062 ( .A(n708), .B(n707), .C(n854), .Y(n709) );
  OAI21X1 U1063 ( .A(n710), .B(n858), .C(n709), .Y(n722) );
  OAI22X1 U1064 ( .A(n1083), .B(n762), .C(n1074), .D(n394), .Y(n712) );
  OAI22X1 U1065 ( .A(n1082), .B(n390), .C(n1073), .D(n860), .Y(n711) );
  OAI21X1 U1066 ( .A(n712), .B(n711), .C(n861), .Y(n720) );
  OAI22X1 U1067 ( .A(n714), .B(n398), .C(n713), .D(n410), .Y(n718) );
  OAI22X1 U1068 ( .A(n716), .B(n400), .C(n715), .D(n762), .Y(n717) );
  OAI21X1 U1069 ( .A(n718), .B(n717), .C(n869), .Y(n719) );
  NAND2X1 U1070 ( .A(n720), .B(n719), .Y(n721) );
  NOR2X1 U1071 ( .A(n722), .B(n721), .Y(n727) );
  OAI22X1 U1072 ( .A(n724), .B(n404), .C(n723), .D(n405), .Y(n725) );
  AOI21X1 U1073 ( .A(n879), .B(\regs[6][9] ), .C(n725), .Y(n726) );
  NAND2X1 U1074 ( .A(n727), .B(n726), .Y(r2_data[9]) );
  INVX2 U1075 ( .A(\regs[2][10] ), .Y(n738) );
  INVX2 U1076 ( .A(\regs[3][10] ), .Y(n739) );
  MUX2X1 U1077 ( .B(n739), .A(n728), .S(n845), .Y(n1443) );
  INVX2 U1078 ( .A(\regs[1][10] ), .Y(n737) );
  INVX2 U1079 ( .A(\regs[9][10] ), .Y(n1093) );
  MUX2X1 U1080 ( .B(n1093), .A(n728), .S(n846), .Y(n1230) );
  INVX2 U1081 ( .A(\regs[8][10] ), .Y(n1102) );
  MUX2X1 U1082 ( .B(n1102), .A(n728), .S(n847), .Y(n1214) );
  INVX2 U1083 ( .A(\regs[11][10] ), .Y(n1094) );
  MUX2X1 U1084 ( .B(n1094), .A(n728), .S(n362), .Y(n1262) );
  INVX2 U1085 ( .A(\regs[10][10] ), .Y(n1103) );
  MUX2X1 U1086 ( .B(n1103), .A(n728), .S(n848), .Y(n1246) );
  INVX2 U1087 ( .A(\regs[14][10] ), .Y(n1100) );
  MUX2X1 U1088 ( .B(n1100), .A(n728), .S(n360), .Y(n1446) );
  INVX2 U1089 ( .A(\regs[15][10] ), .Y(n1091) );
  MUX2X1 U1090 ( .B(n1091), .A(n728), .S(n361), .Y(n1447) );
  INVX2 U1091 ( .A(\regs[12][10] ), .Y(n1101) );
  MUX2X1 U1092 ( .B(n1101), .A(n728), .S(n358), .Y(n1444) );
  INVX2 U1093 ( .A(\regs[13][10] ), .Y(n1092) );
  MUX2X1 U1094 ( .B(n1092), .A(n728), .S(n359), .Y(n1445) );
  INVX2 U1095 ( .A(\regs[5][10] ), .Y(n733) );
  MUX2X1 U1096 ( .B(n733), .A(n728), .S(n849), .Y(n1166) );
  INVX2 U1097 ( .A(\regs[4][10] ), .Y(n746) );
  MUX2X1 U1098 ( .B(n746), .A(n728), .S(n357), .Y(n1150) );
  INVX2 U1099 ( .A(\regs[7][10] ), .Y(n747) );
  MUX2X1 U1100 ( .B(n747), .A(n728), .S(n850), .Y(n1198) );
  INVX2 U1101 ( .A(\regs[6][10] ), .Y(n729) );
  MUX2X1 U1102 ( .B(n729), .A(n728), .S(n364), .Y(n1182) );
  OAI22X1 U1103 ( .A(n1092), .B(n389), .C(n1101), .D(n390), .Y(n731) );
  OAI22X1 U1104 ( .A(n1091), .B(n391), .C(n1100), .D(n408), .Y(n730) );
  OAI21X1 U1105 ( .A(n731), .B(n730), .C(n854), .Y(n732) );
  OAI21X1 U1106 ( .A(n733), .B(n387), .C(n732), .Y(n745) );
  OAI22X1 U1107 ( .A(n1103), .B(n408), .C(n1094), .D(n393), .Y(n735) );
  OAI22X1 U1108 ( .A(n1102), .B(n390), .C(n1093), .D(n396), .Y(n734) );
  OAI21X1 U1109 ( .A(n735), .B(n734), .C(n861), .Y(n743) );
  OAI22X1 U1110 ( .A(n737), .B(n398), .C(n736), .D(n410), .Y(n741) );
  OAI22X1 U1111 ( .A(n739), .B(n399), .C(n738), .D(n408), .Y(n740) );
  OAI21X1 U1112 ( .A(n741), .B(n740), .C(n869), .Y(n742) );
  NAND2X1 U1113 ( .A(n743), .B(n742), .Y(n744) );
  NOR2X1 U1114 ( .A(n745), .B(n744), .Y(n750) );
  OAI22X1 U1115 ( .A(n747), .B(n404), .C(n329), .D(n746), .Y(n748) );
  AOI21X1 U1116 ( .A(n879), .B(\regs[6][10] ), .C(n748), .Y(n749) );
  NAND2X1 U1117 ( .A(n750), .B(n749), .Y(r2_data[10]) );
  INVX2 U1118 ( .A(\regs[2][11] ), .Y(n763) );
  INVX2 U1119 ( .A(\regs[3][11] ), .Y(n764) );
  INVX2 U1120 ( .A(\regs[1][11] ), .Y(n761) );
  INVX2 U1121 ( .A(\regs[9][11] ), .Y(n1113) );
  INVX2 U1122 ( .A(\regs[8][11] ), .Y(n1122) );
  INVX2 U1123 ( .A(\regs[11][11] ), .Y(n1114) );
  INVX2 U1124 ( .A(\regs[10][11] ), .Y(n1123) );
  INVX2 U1125 ( .A(\regs[14][11] ), .Y(n1120) );
  MUX2X1 U1126 ( .B(n1120), .A(n751), .S(n360), .Y(n1454) );
  INVX2 U1127 ( .A(\regs[15][11] ), .Y(n1111) );
  MUX2X1 U1128 ( .B(n1111), .A(n751), .S(n361), .Y(n1455) );
  INVX2 U1129 ( .A(\regs[12][11] ), .Y(n1121) );
  INVX2 U1130 ( .A(\regs[13][11] ), .Y(n1112) );
  INVX2 U1131 ( .A(\regs[5][11] ), .Y(n756) );
  INVX2 U1132 ( .A(\regs[4][11] ), .Y(n771) );
  INVX2 U1133 ( .A(\regs[7][11] ), .Y(n772) );
  INVX2 U1134 ( .A(\regs[6][11] ), .Y(n752) );
  OAI22X1 U1135 ( .A(n1112), .B(n853), .C(n1121), .D(n277), .Y(n754) );
  OAI22X1 U1136 ( .A(n1111), .B(n392), .C(n1120), .D(n408), .Y(n753) );
  OAI21X1 U1137 ( .A(n754), .B(n753), .C(n854), .Y(n755) );
  OAI21X1 U1138 ( .A(n756), .B(n387), .C(n755), .Y(n770) );
  OAI22X1 U1139 ( .A(n1123), .B(n408), .C(n1114), .D(n394), .Y(n758) );
  OAI22X1 U1140 ( .A(n1122), .B(n409), .C(n1113), .D(n860), .Y(n757) );
  OAI21X1 U1141 ( .A(n758), .B(n757), .C(n861), .Y(n768) );
  OAI22X1 U1142 ( .A(n761), .B(n398), .C(n760), .D(n498), .Y(n766) );
  OAI22X1 U1143 ( .A(n764), .B(n400), .C(n763), .D(n762), .Y(n765) );
  OAI21X1 U1144 ( .A(n766), .B(n765), .C(n869), .Y(n767) );
  NAND2X1 U1145 ( .A(n768), .B(n767), .Y(n769) );
  NOR2X1 U1146 ( .A(n770), .B(n769), .Y(n775) );
  OAI22X1 U1147 ( .A(n772), .B(n404), .C(n771), .D(n405), .Y(n773) );
  AOI21X1 U1148 ( .A(n879), .B(\regs[6][11] ), .C(n773), .Y(n774) );
  NAND2X1 U1149 ( .A(n775), .B(n774), .Y(r2_data[11]) );
  INVX2 U1150 ( .A(\regs[2][12] ), .Y(n786) );
  MUX2X1 U1151 ( .B(n786), .A(n776), .S(n356), .Y(n1490) );
  INVX2 U1152 ( .A(\regs[3][12] ), .Y(n787) );
  MUX2X1 U1153 ( .B(n787), .A(n776), .S(n845), .Y(n1491) );
  INVX2 U1154 ( .A(\regs[1][12] ), .Y(n785) );
  MUX2X1 U1155 ( .B(n785), .A(n776), .S(n363), .Y(n1489) );
  INVX2 U1156 ( .A(\regs[9][12] ), .Y(n1133) );
  MUX2X1 U1157 ( .B(n1133), .A(n776), .S(n846), .Y(n1232) );
  INVX2 U1158 ( .A(\regs[8][12] ), .Y(n1270) );
  MUX2X1 U1159 ( .B(n1270), .A(n776), .S(n847), .Y(n1216) );
  INVX2 U1160 ( .A(\regs[11][12] ), .Y(n1134) );
  MUX2X1 U1161 ( .B(n1134), .A(n776), .S(n362), .Y(n1264) );
  INVX2 U1162 ( .A(\regs[10][12] ), .Y(n1271) );
  MUX2X1 U1163 ( .B(n1271), .A(n776), .S(n848), .Y(n1248) );
  INVX2 U1164 ( .A(\regs[14][12] ), .Y(n1268) );
  MUX2X1 U1165 ( .B(n1268), .A(n776), .S(n360), .Y(n1494) );
  INVX2 U1166 ( .A(\regs[15][12] ), .Y(n1131) );
  MUX2X1 U1167 ( .B(n1131), .A(n776), .S(n361), .Y(n1495) );
  INVX2 U1168 ( .A(\regs[12][12] ), .Y(n1269) );
  MUX2X1 U1169 ( .B(n1269), .A(n776), .S(n358), .Y(n1492) );
  INVX2 U1170 ( .A(\regs[13][12] ), .Y(n1132) );
  MUX2X1 U1171 ( .B(n1132), .A(n776), .S(n359), .Y(n1493) );
  INVX2 U1172 ( .A(\regs[5][12] ), .Y(n781) );
  MUX2X1 U1173 ( .B(n781), .A(n776), .S(n849), .Y(n1168) );
  INVX2 U1174 ( .A(\regs[4][12] ), .Y(n794) );
  MUX2X1 U1175 ( .B(n794), .A(n776), .S(n357), .Y(n1152) );
  INVX2 U1176 ( .A(\regs[7][12] ), .Y(n795) );
  MUX2X1 U1177 ( .B(n795), .A(n776), .S(n850), .Y(n1200) );
  INVX2 U1178 ( .A(\regs[6][12] ), .Y(n777) );
  MUX2X1 U1179 ( .B(n777), .A(n776), .S(n364), .Y(n1184) );
  OAI22X1 U1180 ( .A(n1132), .B(n389), .C(n1269), .D(n407), .Y(n779) );
  OAI22X1 U1181 ( .A(n1131), .B(n391), .C(n1268), .D(n266), .Y(n778) );
  OAI21X1 U1182 ( .A(n779), .B(n778), .C(n854), .Y(n780) );
  OAI21X1 U1183 ( .A(n781), .B(n387), .C(n780), .Y(n793) );
  OAI22X1 U1184 ( .A(n1271), .B(n354), .C(n1134), .D(n393), .Y(n783) );
  OAI22X1 U1185 ( .A(n1270), .B(n407), .C(n1133), .D(n396), .Y(n782) );
  OAI21X1 U1186 ( .A(n783), .B(n782), .C(n581), .Y(n791) );
  OAI22X1 U1187 ( .A(n785), .B(n398), .C(n784), .D(n407), .Y(n789) );
  OAI22X1 U1188 ( .A(n787), .B(n399), .C(n786), .D(n354), .Y(n788) );
  OAI21X1 U1189 ( .A(n789), .B(n788), .C(n260), .Y(n790) );
  NAND2X1 U1190 ( .A(n791), .B(n790), .Y(n792) );
  NOR2X1 U1191 ( .A(n793), .B(n792), .Y(n798) );
  OAI22X1 U1192 ( .A(n795), .B(n404), .C(n794), .D(n320), .Y(n796) );
  AOI21X1 U1193 ( .A(n879), .B(\regs[6][12] ), .C(n796), .Y(n797) );
  NAND2X1 U1194 ( .A(n798), .B(n797), .Y(r2_data[12]) );
  INVX2 U1195 ( .A(\regs[2][13] ), .Y(n809) );
  MUX2X1 U1196 ( .B(n809), .A(n799), .S(n356), .Y(n1466) );
  INVX2 U1197 ( .A(\regs[3][13] ), .Y(n810) );
  MUX2X1 U1198 ( .B(n810), .A(n799), .S(n845), .Y(n1467) );
  INVX2 U1199 ( .A(\regs[1][13] ), .Y(n808) );
  INVX2 U1200 ( .A(\regs[9][13] ), .Y(n1281) );
  MUX2X1 U1201 ( .B(n1281), .A(n799), .S(n846), .Y(n1233) );
  INVX2 U1202 ( .A(\regs[8][13] ), .Y(n1290) );
  MUX2X1 U1203 ( .B(n1290), .A(n799), .S(n847), .Y(n1217) );
  INVX2 U1204 ( .A(\regs[11][13] ), .Y(n1282) );
  MUX2X1 U1205 ( .B(n1282), .A(n799), .S(n362), .Y(n1265) );
  INVX2 U1206 ( .A(\regs[10][13] ), .Y(n1291) );
  MUX2X1 U1207 ( .B(n1291), .A(n799), .S(n848), .Y(n1249) );
  INVX2 U1208 ( .A(\regs[14][13] ), .Y(n1288) );
  MUX2X1 U1209 ( .B(n1288), .A(n799), .S(n360), .Y(n1470) );
  INVX2 U1210 ( .A(\regs[15][13] ), .Y(n1279) );
  MUX2X1 U1211 ( .B(n1279), .A(n799), .S(n361), .Y(n1471) );
  INVX2 U1212 ( .A(\regs[12][13] ), .Y(n1289) );
  MUX2X1 U1213 ( .B(n1289), .A(n799), .S(n358), .Y(n1468) );
  INVX2 U1214 ( .A(\regs[13][13] ), .Y(n1280) );
  MUX2X1 U1215 ( .B(n1280), .A(n799), .S(n359), .Y(n1469) );
  INVX2 U1216 ( .A(\regs[5][13] ), .Y(n804) );
  MUX2X1 U1217 ( .B(n804), .A(n799), .S(n849), .Y(n1169) );
  INVX2 U1218 ( .A(\regs[4][13] ), .Y(n817) );
  MUX2X1 U1219 ( .B(n817), .A(n799), .S(n357), .Y(n1153) );
  INVX2 U1220 ( .A(\regs[7][13] ), .Y(n818) );
  MUX2X1 U1221 ( .B(n818), .A(n799), .S(n850), .Y(n1201) );
  INVX2 U1222 ( .A(\regs[6][13] ), .Y(n800) );
  MUX2X1 U1223 ( .B(n800), .A(n799), .S(n364), .Y(n1185) );
  OAI22X1 U1224 ( .A(n1280), .B(n853), .C(n1289), .D(n257), .Y(n802) );
  OAI22X1 U1225 ( .A(n1279), .B(n392), .C(n1288), .D(n354), .Y(n801) );
  OAI21X1 U1226 ( .A(n802), .B(n801), .C(n854), .Y(n803) );
  OAI21X1 U1227 ( .A(n804), .B(n387), .C(n803), .Y(n816) );
  OAI22X1 U1228 ( .A(n1291), .B(n265), .C(n1282), .D(n394), .Y(n806) );
  OAI22X1 U1229 ( .A(n1290), .B(n410), .C(n1281), .D(n860), .Y(n805) );
  OAI21X1 U1230 ( .A(n806), .B(n805), .C(n581), .Y(n814) );
  OAI22X1 U1231 ( .A(n808), .B(n398), .C(n807), .D(n407), .Y(n812) );
  OAI22X1 U1232 ( .A(n810), .B(n400), .C(n809), .D(n354), .Y(n811) );
  OAI21X1 U1233 ( .A(n812), .B(n811), .C(n869), .Y(n813) );
  NAND2X1 U1234 ( .A(n814), .B(n813), .Y(n815) );
  NOR2X1 U1235 ( .A(n816), .B(n815), .Y(n821) );
  OAI22X1 U1236 ( .A(n818), .B(n404), .C(n817), .D(n320), .Y(n819) );
  AOI21X1 U1237 ( .A(n879), .B(\regs[6][13] ), .C(n819), .Y(n820) );
  NAND2X1 U1238 ( .A(n821), .B(n820), .Y(r2_data[13]) );
  INVX2 U1239 ( .A(\regs[2][14] ), .Y(n832) );
  INVX2 U1240 ( .A(\regs[3][14] ), .Y(n833) );
  INVX2 U1241 ( .A(\regs[1][14] ), .Y(n831) );
  INVX2 U1242 ( .A(\regs[9][14] ), .Y(n1301) );
  INVX2 U1243 ( .A(\regs[8][14] ), .Y(n1310) );
  INVX2 U1244 ( .A(\regs[11][14] ), .Y(n1302) );
  INVX2 U1245 ( .A(\regs[10][14] ), .Y(n1311) );
  INVX2 U1246 ( .A(\regs[14][14] ), .Y(n1308) );
  INVX2 U1247 ( .A(\regs[15][14] ), .Y(n1299) );
  INVX2 U1248 ( .A(\regs[12][14] ), .Y(n1309) );
  INVX2 U1249 ( .A(\regs[13][14] ), .Y(n1300) );
  INVX2 U1250 ( .A(\regs[5][14] ), .Y(n827) );
  INVX2 U1251 ( .A(\regs[4][14] ), .Y(n840) );
  INVX2 U1252 ( .A(\regs[7][14] ), .Y(n841) );
  INVX2 U1253 ( .A(\regs[6][14] ), .Y(n823) );
  OAI22X1 U1254 ( .A(n1300), .B(n389), .C(n1309), .D(n409), .Y(n825) );
  OAI22X1 U1255 ( .A(n1299), .B(n391), .C(n1308), .D(n354), .Y(n824) );
  OAI21X1 U1256 ( .A(n825), .B(n824), .C(n854), .Y(n826) );
  OAI21X1 U1257 ( .A(n827), .B(n387), .C(n826), .Y(n839) );
  OAI22X1 U1258 ( .A(n1311), .B(n266), .C(n1302), .D(n393), .Y(n829) );
  OAI22X1 U1259 ( .A(n1310), .B(n407), .C(n1301), .D(n396), .Y(n828) );
  OAI21X1 U1260 ( .A(n829), .B(n828), .C(n581), .Y(n837) );
  OAI22X1 U1261 ( .A(n831), .B(n398), .C(n830), .D(n498), .Y(n835) );
  OAI22X1 U1262 ( .A(n833), .B(n399), .C(n832), .D(n265), .Y(n834) );
  OAI21X1 U1263 ( .A(n835), .B(n834), .C(n260), .Y(n836) );
  NAND2X1 U1264 ( .A(n837), .B(n836), .Y(n838) );
  NOR2X1 U1265 ( .A(n839), .B(n838), .Y(n844) );
  OAI22X1 U1266 ( .A(n841), .B(n404), .C(n840), .D(n320), .Y(n842) );
  AOI21X1 U1267 ( .A(n879), .B(\regs[6][14] ), .C(n842), .Y(n843) );
  NAND2X1 U1268 ( .A(n844), .B(n843), .Y(r2_data[14]) );
  INVX2 U1269 ( .A(\regs[2][15] ), .Y(n867) );
  INVX2 U1270 ( .A(\regs[3][15] ), .Y(n868) );
  INVX2 U1271 ( .A(\regs[1][15] ), .Y(n866) );
  INVX2 U1272 ( .A(\regs[9][15] ), .Y(n1324) );
  INVX2 U1273 ( .A(\regs[8][15] ), .Y(n1341) );
  INVX2 U1274 ( .A(\regs[11][15] ), .Y(n1326) );
  INVX2 U1275 ( .A(\regs[10][15] ), .Y(n1343) );
  INVX2 U1276 ( .A(\regs[14][15] ), .Y(n1337) );
  INVX2 U1277 ( .A(\regs[15][15] ), .Y(n1321) );
  INVX2 U1278 ( .A(\regs[12][15] ), .Y(n1339) );
  INVX2 U1279 ( .A(\regs[13][15] ), .Y(n1322) );
  INVX2 U1280 ( .A(\regs[5][15] ), .Y(n859) );
  INVX2 U1281 ( .A(\regs[4][15] ), .Y(n876) );
  INVX2 U1282 ( .A(\regs[7][15] ), .Y(n877) );
  INVX2 U1283 ( .A(\regs[6][15] ), .Y(n852) );
  OAI22X1 U1284 ( .A(n1322), .B(n853), .C(n1339), .D(n498), .Y(n856) );
  OAI22X1 U1285 ( .A(n1321), .B(n392), .C(n1337), .D(n266), .Y(n855) );
  OAI21X1 U1286 ( .A(n856), .B(n855), .C(n854), .Y(n857) );
  OAI21X1 U1287 ( .A(n859), .B(n387), .C(n857), .Y(n875) );
  OAI22X1 U1288 ( .A(n1343), .B(n265), .C(n1326), .D(n394), .Y(n863) );
  OAI22X1 U1289 ( .A(n1341), .B(n270), .C(n1324), .D(n860), .Y(n862) );
  OAI21X1 U1290 ( .A(n863), .B(n862), .C(n581), .Y(n873) );
  OAI22X1 U1291 ( .A(n866), .B(n398), .C(n864), .D(n407), .Y(n871) );
  OAI22X1 U1292 ( .A(n868), .B(n400), .C(n867), .D(n354), .Y(n870) );
  OAI21X1 U1293 ( .A(n871), .B(n870), .C(n260), .Y(n872) );
  NAND2X1 U1294 ( .A(n873), .B(n872), .Y(n874) );
  NOR2X1 U1295 ( .A(n875), .B(n874), .Y(n881) );
  OAI22X1 U1296 ( .A(n877), .B(n404), .C(n876), .D(n320), .Y(n878) );
  AOI21X1 U1297 ( .A(n879), .B(\regs[6][15] ), .C(n878), .Y(n880) );
  NAND2X1 U1298 ( .A(n881), .B(n880), .Y(r2_data[15]) );
  INVX2 U1299 ( .A(r1_sel[3]), .Y(n884) );
  NAND3X1 U1300 ( .A(n287), .B(n901), .C(n288), .Y(n882) );
  AOI22X1 U1301 ( .A(\regs[5][0] ), .B(n376), .C(\regs[7][0] ), .D(n327), .Y(
        n895) );
  INVX2 U1302 ( .A(r1_sel[2]), .Y(n888) );
  NAND3X1 U1303 ( .A(n287), .B(n272), .C(n381), .Y(n885) );
  AOI22X1 U1304 ( .A(\regs[3][0] ), .B(n383), .C(\regs[1][0] ), .D(n1320), .Y(
        n894) );
  NAND3X1 U1305 ( .A(r1_sel[0]), .B(n378), .C(n901), .Y(n1323) );
  OAI22X1 U1306 ( .A(n412), .B(n887), .C(n414), .D(n886), .Y(n892) );
  NAND3X1 U1307 ( .A(r1_sel[0]), .B(n276), .C(r1_sel[1]), .Y(n1327) );
  NAND3X1 U1308 ( .A(n901), .B(r1_sel[0]), .C(n276), .Y(n1325) );
  OAI22X1 U1309 ( .A(n289), .B(n890), .C(n419), .D(n889), .Y(n891) );
  NOR2X1 U1310 ( .A(n892), .B(n891), .Y(n893) );
  NAND3X1 U1311 ( .A(n895), .B(n894), .C(n893), .Y(n910) );
  NAND3X1 U1312 ( .A(n901), .B(n259), .C(n288), .Y(n896) );
  AOI22X1 U1313 ( .A(\regs[4][0] ), .B(n334), .C(\regs[6][0] ), .D(n1333), .Y(
        n908) );
  NAND3X1 U1314 ( .A(n272), .B(n259), .C(n381), .Y(n897) );
  NAND3X1 U1315 ( .A(n901), .B(n259), .C(n381), .Y(n898) );
  AOI22X1 U1316 ( .A(\regs[2][0] ), .B(n1336), .C(outreg_data[0]), .D(n347), 
        .Y(n907) );
  NAND3X1 U1317 ( .A(n351), .B(n378), .C(n901), .Y(n1340) );
  NAND3X1 U1318 ( .A(r1_sel[1]), .B(n378), .C(n258), .Y(n1338) );
  OAI22X1 U1319 ( .A(n294), .B(n900), .C(n423), .D(n899), .Y(n905) );
  NAND3X1 U1320 ( .A(r1_sel[1]), .B(n258), .C(n349), .Y(n1344) );
  NAND3X1 U1321 ( .A(n901), .B(n259), .C(n349), .Y(n1342) );
  OAI22X1 U1322 ( .A(n333), .B(n903), .C(n428), .D(n902), .Y(n904) );
  NOR2X1 U1323 ( .A(n905), .B(n904), .Y(n906) );
  NAND3X1 U1324 ( .A(n908), .B(n907), .C(n906), .Y(n909) );
  OR2X2 U1325 ( .A(n910), .B(n909), .Y(r1_data[0]) );
  AOI22X1 U1326 ( .A(\regs[5][1] ), .B(n375), .C(\regs[7][1] ), .D(n326), .Y(
        n919) );
  AOI22X1 U1327 ( .A(\regs[3][1] ), .B(n382), .C(\regs[1][1] ), .D(n350), .Y(
        n918) );
  OAI22X1 U1328 ( .A(n412), .B(n912), .C(n414), .D(n911), .Y(n916) );
  OAI22X1 U1329 ( .A(n289), .B(n914), .C(n419), .D(n913), .Y(n915) );
  NOR2X1 U1330 ( .A(n915), .B(n916), .Y(n917) );
  NAND3X1 U1331 ( .A(n919), .B(n918), .C(n917), .Y(n930) );
  AOI22X1 U1332 ( .A(\regs[4][1] ), .B(n1334), .C(\regs[6][1] ), .D(n1333), 
        .Y(n928) );
  AOI22X1 U1333 ( .A(\regs[2][1] ), .B(n1336), .C(outreg_data[1]), .D(n347), 
        .Y(n927) );
  OAI22X1 U1334 ( .A(n294), .B(n921), .C(n423), .D(n920), .Y(n925) );
  OAI22X1 U1335 ( .A(n333), .B(n923), .C(n427), .D(n922), .Y(n924) );
  NOR2X1 U1336 ( .A(n925), .B(n924), .Y(n926) );
  NAND3X1 U1337 ( .A(n928), .B(n927), .C(n926), .Y(n929) );
  OR2X2 U1338 ( .A(n930), .B(n929), .Y(r1_data[1]) );
  AOI22X1 U1339 ( .A(\regs[5][2] ), .B(n377), .C(\regs[7][2] ), .D(n326), .Y(
        n939) );
  AOI22X1 U1340 ( .A(\regs[3][2] ), .B(n382), .C(\regs[1][2] ), .D(n350), .Y(
        n938) );
  OAI22X1 U1341 ( .A(n932), .B(n412), .C(n415), .D(n931), .Y(n936) );
  OAI22X1 U1342 ( .A(n934), .B(n417), .C(n419), .D(n933), .Y(n935) );
  NOR2X1 U1343 ( .A(n935), .B(n936), .Y(n937) );
  NAND3X1 U1344 ( .A(n939), .B(n938), .C(n937), .Y(n950) );
  AOI22X1 U1345 ( .A(\regs[4][2] ), .B(n1334), .C(\regs[6][2] ), .D(n1333), 
        .Y(n948) );
  AOI22X1 U1346 ( .A(\regs[2][2] ), .B(n1336), .C(outreg_data[2]), .D(n348), 
        .Y(n947) );
  OAI22X1 U1347 ( .A(n421), .B(n941), .C(n423), .D(n940), .Y(n945) );
  OAI22X1 U1348 ( .A(n333), .B(n943), .C(n427), .D(n942), .Y(n944) );
  NOR2X1 U1349 ( .A(n945), .B(n944), .Y(n946) );
  NAND3X1 U1350 ( .A(n947), .B(n948), .C(n946), .Y(n949) );
  AOI22X1 U1351 ( .A(\regs[5][3] ), .B(n377), .C(\regs[7][3] ), .D(n327), .Y(
        n959) );
  AOI22X1 U1352 ( .A(\regs[3][3] ), .B(n382), .C(\regs[1][3] ), .D(n1320), .Y(
        n958) );
  OAI22X1 U1353 ( .A(n412), .B(n952), .C(n415), .D(n951), .Y(n956) );
  OAI22X1 U1354 ( .A(n417), .B(n954), .C(n419), .D(n953), .Y(n955) );
  NOR2X1 U1355 ( .A(n955), .B(n956), .Y(n957) );
  NAND3X1 U1356 ( .A(n959), .B(n958), .C(n957), .Y(n970) );
  AOI22X1 U1357 ( .A(\regs[4][3] ), .B(n1334), .C(\regs[6][3] ), .D(n1333), 
        .Y(n968) );
  AOI22X1 U1358 ( .A(\regs[2][3] ), .B(n1336), .C(outreg_data[3]), .D(n348), 
        .Y(n967) );
  OAI22X1 U1359 ( .A(n421), .B(n961), .C(n423), .D(n960), .Y(n965) );
  OAI22X1 U1360 ( .A(n333), .B(n963), .C(n427), .D(n962), .Y(n964) );
  NOR2X1 U1361 ( .A(n965), .B(n964), .Y(n966) );
  NAND3X1 U1362 ( .A(n968), .B(n967), .C(n966), .Y(n969) );
  AOI22X1 U1363 ( .A(\regs[5][4] ), .B(n377), .C(\regs[7][4] ), .D(n327), .Y(
        n979) );
  AOI22X1 U1364 ( .A(\regs[3][4] ), .B(n383), .C(\regs[1][4] ), .D(n350), .Y(
        n978) );
  OAI22X1 U1365 ( .A(n412), .B(n972), .C(n414), .D(n971), .Y(n976) );
  OAI22X1 U1366 ( .A(n289), .B(n974), .C(n419), .D(n973), .Y(n975) );
  NOR2X1 U1367 ( .A(n975), .B(n976), .Y(n977) );
  NAND3X1 U1368 ( .A(n979), .B(n978), .C(n977), .Y(n990) );
  AOI22X1 U1369 ( .A(\regs[4][4] ), .B(n1334), .C(\regs[6][4] ), .D(n1333), 
        .Y(n988) );
  AOI22X1 U1370 ( .A(\regs[2][4] ), .B(n1336), .C(outreg_data[4]), .D(n347), 
        .Y(n987) );
  OAI22X1 U1371 ( .A(n294), .B(n981), .C(n423), .D(n980), .Y(n985) );
  OAI22X1 U1372 ( .A(n333), .B(n983), .C(n428), .D(n982), .Y(n984) );
  NOR2X1 U1373 ( .A(n985), .B(n984), .Y(n986) );
  NAND3X1 U1374 ( .A(n988), .B(n987), .C(n986), .Y(n989) );
  AOI22X1 U1375 ( .A(\regs[5][5] ), .B(n377), .C(\regs[7][5] ), .D(n326), .Y(
        n999) );
  AOI22X1 U1376 ( .A(\regs[3][5] ), .B(n383), .C(\regs[1][5] ), .D(n1320), .Y(
        n998) );
  OAI22X1 U1377 ( .A(n412), .B(n992), .C(n415), .D(n991), .Y(n996) );
  OAI22X1 U1378 ( .A(n417), .B(n994), .C(n419), .D(n993), .Y(n995) );
  NOR2X1 U1379 ( .A(n995), .B(n996), .Y(n997) );
  NAND3X1 U1380 ( .A(n999), .B(n998), .C(n997), .Y(n1010) );
  AOI22X1 U1381 ( .A(\regs[4][5] ), .B(n1334), .C(\regs[6][5] ), .D(n1333), 
        .Y(n1008) );
  AOI22X1 U1382 ( .A(\regs[2][5] ), .B(n1336), .C(outreg_data[5]), .D(n348), 
        .Y(n1007) );
  OAI22X1 U1383 ( .A(n293), .B(n1001), .C(n423), .D(n1000), .Y(n1005) );
  OAI22X1 U1384 ( .A(n333), .B(n1003), .C(n428), .D(n1002), .Y(n1004) );
  NOR2X1 U1385 ( .A(n1005), .B(n1004), .Y(n1006) );
  NAND3X1 U1386 ( .A(n1008), .B(n1007), .C(n1006), .Y(n1009) );
  AOI22X1 U1387 ( .A(\regs[5][6] ), .B(n377), .C(\regs[7][6] ), .D(n326), .Y(
        n1019) );
  AOI22X1 U1388 ( .A(\regs[3][6] ), .B(n383), .C(\regs[1][6] ), .D(n350), .Y(
        n1018) );
  OAI22X1 U1389 ( .A(n1012), .B(n412), .C(n415), .D(n1011), .Y(n1016) );
  OAI22X1 U1390 ( .A(n289), .B(n1014), .C(n419), .D(n1013), .Y(n1015) );
  NOR2X1 U1391 ( .A(n1015), .B(n1016), .Y(n1017) );
  NAND3X1 U1392 ( .A(n1019), .B(n1018), .C(n1017), .Y(n1030) );
  AOI22X1 U1393 ( .A(\regs[4][6] ), .B(n1334), .C(\regs[6][6] ), .D(n1333), 
        .Y(n1028) );
  AOI22X1 U1394 ( .A(\regs[2][6] ), .B(n1336), .C(outreg_data[6]), .D(n315), 
        .Y(n1027) );
  OAI22X1 U1395 ( .A(n293), .B(n1021), .C(n423), .D(n1020), .Y(n1025) );
  OAI22X1 U1396 ( .A(n425), .B(n1023), .C(n428), .D(n1022), .Y(n1024) );
  NOR2X1 U1397 ( .A(n1025), .B(n1024), .Y(n1026) );
  NAND3X1 U1398 ( .A(n1028), .B(n1027), .C(n1026), .Y(n1029) );
  AOI22X1 U1399 ( .A(\regs[5][7] ), .B(n377), .C(\regs[7][7] ), .D(n327), .Y(
        n1039) );
  AOI22X1 U1400 ( .A(\regs[3][7] ), .B(n383), .C(\regs[1][7] ), .D(n350), .Y(
        n1038) );
  OAI22X1 U1401 ( .A(n412), .B(n1032), .C(n415), .D(n1031), .Y(n1036) );
  OAI22X1 U1402 ( .A(n417), .B(n1034), .C(n419), .D(n1033), .Y(n1035) );
  NOR2X1 U1403 ( .A(n1035), .B(n1036), .Y(n1037) );
  NAND3X1 U1404 ( .A(n1039), .B(n1038), .C(n1037), .Y(n1050) );
  AOI22X1 U1405 ( .A(n1334), .B(\regs[4][7] ), .C(\regs[6][7] ), .D(n1333), 
        .Y(n1048) );
  AOI22X1 U1406 ( .A(\regs[2][7] ), .B(n1336), .C(outreg_data[7]), .D(n347), 
        .Y(n1047) );
  OAI22X1 U1407 ( .A(n421), .B(n1041), .C(n423), .D(n1040), .Y(n1045) );
  OAI22X1 U1408 ( .A(n1043), .B(n425), .C(n427), .D(n1042), .Y(n1044) );
  NOR2X1 U1409 ( .A(n1045), .B(n1044), .Y(n1046) );
  NAND3X1 U1410 ( .A(n1048), .B(n1047), .C(n1046), .Y(n1049) );
  AOI22X1 U1411 ( .A(\regs[5][8] ), .B(n376), .C(\regs[7][8] ), .D(n327), .Y(
        n1059) );
  AOI22X1 U1412 ( .A(\regs[3][8] ), .B(n382), .C(\regs[1][8] ), .D(n350), .Y(
        n1058) );
  OAI22X1 U1413 ( .A(n412), .B(n1052), .C(n414), .D(n1051), .Y(n1056) );
  OAI22X1 U1414 ( .A(n1054), .B(n289), .C(n1053), .D(n419), .Y(n1055) );
  NOR2X1 U1415 ( .A(n1055), .B(n1056), .Y(n1057) );
  NAND3X1 U1416 ( .A(n1059), .B(n1058), .C(n1057), .Y(n1070) );
  AOI22X1 U1417 ( .A(\regs[4][8] ), .B(n334), .C(\regs[6][8] ), .D(n1333), .Y(
        n1068) );
  AOI22X1 U1418 ( .A(\regs[2][8] ), .B(n1336), .C(outreg_data[8]), .D(n315), 
        .Y(n1067) );
  OAI22X1 U1419 ( .A(n293), .B(n1061), .C(n423), .D(n1060), .Y(n1065) );
  OAI22X1 U1420 ( .A(n425), .B(n1063), .C(n428), .D(n1062), .Y(n1064) );
  NOR2X1 U1421 ( .A(n1065), .B(n1064), .Y(n1066) );
  NAND3X1 U1422 ( .A(n1068), .B(n1067), .C(n1066), .Y(n1069) );
  OR2X2 U1423 ( .A(n1070), .B(n1069), .Y(r1_data[8]) );
  AOI22X1 U1424 ( .A(\regs[5][9] ), .B(n377), .C(\regs[7][9] ), .D(n327), .Y(
        n1079) );
  AOI22X1 U1425 ( .A(\regs[3][9] ), .B(n382), .C(\regs[1][9] ), .D(n350), .Y(
        n1078) );
  OAI22X1 U1426 ( .A(n412), .B(n1072), .C(n414), .D(n1071), .Y(n1076) );
  OAI22X1 U1427 ( .A(n417), .B(n1074), .C(n419), .D(n1073), .Y(n1075) );
  NOR2X1 U1428 ( .A(n1075), .B(n1076), .Y(n1077) );
  NAND3X1 U1429 ( .A(n1079), .B(n1078), .C(n1077), .Y(n1090) );
  AOI22X1 U1430 ( .A(\regs[4][9] ), .B(n1334), .C(\regs[6][9] ), .D(n1333), 
        .Y(n1088) );
  AOI22X1 U1431 ( .A(\regs[2][9] ), .B(n1336), .C(outreg_data[9]), .D(n315), 
        .Y(n1087) );
  OAI22X1 U1432 ( .A(n293), .B(n1081), .C(n423), .D(n1080), .Y(n1085) );
  OAI22X1 U1433 ( .A(n333), .B(n1083), .C(n1082), .D(n427), .Y(n1084) );
  NOR2X1 U1434 ( .A(n1085), .B(n1084), .Y(n1086) );
  NAND3X1 U1435 ( .A(n1087), .B(n1088), .C(n1086), .Y(n1089) );
  OR2X2 U1436 ( .A(n1090), .B(n1089), .Y(r1_data[9]) );
  AOI22X1 U1437 ( .A(\regs[5][10] ), .B(n377), .C(\regs[7][10] ), .D(n326), 
        .Y(n1099) );
  AOI22X1 U1438 ( .A(\regs[3][10] ), .B(n383), .C(\regs[1][10] ), .D(n1320), 
        .Y(n1098) );
  OAI22X1 U1439 ( .A(n412), .B(n1092), .C(n415), .D(n1091), .Y(n1096) );
  OAI22X1 U1440 ( .A(n417), .B(n1094), .C(n419), .D(n1093), .Y(n1095) );
  NOR2X1 U1441 ( .A(n1095), .B(n1096), .Y(n1097) );
  NAND3X1 U1442 ( .A(n1099), .B(n1098), .C(n1097), .Y(n1110) );
  AOI22X1 U1443 ( .A(\regs[4][10] ), .B(n1334), .C(\regs[6][10] ), .D(n1333), 
        .Y(n1108) );
  AOI22X1 U1444 ( .A(\regs[2][10] ), .B(n1336), .C(outreg_data[10]), .D(n348), 
        .Y(n1107) );
  OAI22X1 U1445 ( .A(n1101), .B(n294), .C(n423), .D(n1100), .Y(n1105) );
  OAI22X1 U1446 ( .A(n333), .B(n1103), .C(n427), .D(n1102), .Y(n1104) );
  NOR2X1 U1447 ( .A(n1105), .B(n1104), .Y(n1106) );
  NAND3X1 U1448 ( .A(n1108), .B(n1107), .C(n1106), .Y(n1109) );
  AOI22X1 U1449 ( .A(\regs[5][11] ), .B(n377), .C(\regs[7][11] ), .D(n326), 
        .Y(n1119) );
  AOI22X1 U1450 ( .A(\regs[3][11] ), .B(n382), .C(\regs[1][11] ), .D(n1320), 
        .Y(n1118) );
  OAI22X1 U1451 ( .A(n1112), .B(n412), .C(n415), .D(n1111), .Y(n1116) );
  OAI22X1 U1452 ( .A(n1114), .B(n417), .C(n419), .D(n1113), .Y(n1115) );
  NOR2X1 U1453 ( .A(n1115), .B(n1116), .Y(n1117) );
  NAND3X1 U1454 ( .A(n1119), .B(n1118), .C(n1117), .Y(n1130) );
  AOI22X1 U1455 ( .A(\regs[4][11] ), .B(n1334), .C(\regs[6][11] ), .D(n1333), 
        .Y(n1128) );
  AOI22X1 U1456 ( .A(\regs[2][11] ), .B(n1336), .C(outreg_data[11]), .D(n348), 
        .Y(n1127) );
  OAI22X1 U1457 ( .A(n421), .B(n1121), .C(n423), .D(n1120), .Y(n1125) );
  OAI22X1 U1458 ( .A(n333), .B(n1123), .C(n427), .D(n1122), .Y(n1124) );
  NOR2X1 U1459 ( .A(n1125), .B(n1124), .Y(n1126) );
  NAND3X1 U1460 ( .A(n1127), .B(n1128), .C(n1126), .Y(n1129) );
  AOI22X1 U1461 ( .A(\regs[5][12] ), .B(n376), .C(\regs[7][12] ), .D(n327), 
        .Y(n1139) );
  AOI22X1 U1462 ( .A(\regs[3][12] ), .B(n382), .C(\regs[1][12] ), .D(n350), 
        .Y(n1138) );
  OAI22X1 U1463 ( .A(n412), .B(n1132), .C(n414), .D(n1131), .Y(n1136) );
  OAI22X1 U1464 ( .A(n289), .B(n1134), .C(n419), .D(n1133), .Y(n1135) );
  NOR2X1 U1465 ( .A(n1136), .B(n1135), .Y(n1137) );
  NAND3X1 U1466 ( .A(n1139), .B(n1138), .C(n1137), .Y(n1278) );
  AOI22X1 U1467 ( .A(\regs[4][12] ), .B(n334), .C(\regs[6][12] ), .D(n312), 
        .Y(n1276) );
  AOI22X1 U1468 ( .A(\regs[2][12] ), .B(n330), .C(outreg_data[12]), .D(n315), 
        .Y(n1275) );
  OAI22X1 U1469 ( .A(n294), .B(n1269), .C(n321), .D(n1268), .Y(n1273) );
  OAI22X1 U1470 ( .A(n425), .B(n1271), .C(n428), .D(n1270), .Y(n1272) );
  NOR2X1 U1471 ( .A(n1273), .B(n1272), .Y(n1274) );
  NAND3X1 U1472 ( .A(n1276), .B(n1275), .C(n1274), .Y(n1277) );
  OR2X2 U1473 ( .A(n1277), .B(n1278), .Y(r1_data[12]) );
  AOI22X1 U1474 ( .A(\regs[5][13] ), .B(n376), .C(\regs[7][13] ), .D(n326), 
        .Y(n1287) );
  AOI22X1 U1475 ( .A(\regs[3][13] ), .B(n383), .C(\regs[1][13] ), .D(n350), 
        .Y(n1286) );
  OAI22X1 U1476 ( .A(n412), .B(n1280), .C(n414), .D(n1279), .Y(n1284) );
  OAI22X1 U1477 ( .A(n289), .B(n1282), .C(n419), .D(n1281), .Y(n1283) );
  NOR2X1 U1478 ( .A(n1284), .B(n1283), .Y(n1285) );
  NAND3X1 U1479 ( .A(n1287), .B(n1286), .C(n1285), .Y(n1298) );
  AOI22X1 U1480 ( .A(\regs[4][13] ), .B(n334), .C(\regs[6][13] ), .D(n1333), 
        .Y(n1296) );
  AOI22X1 U1481 ( .A(\regs[2][13] ), .B(n330), .C(outreg_data[13]), .D(n347), 
        .Y(n1295) );
  OAI22X1 U1482 ( .A(n294), .B(n1289), .C(n321), .D(n1288), .Y(n1293) );
  OAI22X1 U1483 ( .A(n425), .B(n1291), .C(n428), .D(n1290), .Y(n1292) );
  NOR2X1 U1484 ( .A(n1293), .B(n1292), .Y(n1294) );
  NAND3X1 U1485 ( .A(n1296), .B(n1295), .C(n1294), .Y(n1297) );
  OR2X2 U1486 ( .A(n1298), .B(n1297), .Y(r1_data[13]) );
  AOI22X1 U1487 ( .A(\regs[5][14] ), .B(n376), .C(\regs[7][14] ), .D(n327), 
        .Y(n1307) );
  AOI22X1 U1488 ( .A(\regs[3][14] ), .B(n383), .C(\regs[1][14] ), .D(n350), 
        .Y(n1306) );
  OAI22X1 U1489 ( .A(n412), .B(n1300), .C(n1299), .D(n414), .Y(n1304) );
  OAI22X1 U1490 ( .A(n310), .B(n1302), .C(n290), .D(n1301), .Y(n1303) );
  NOR2X1 U1491 ( .A(n1304), .B(n1303), .Y(n1305) );
  NAND3X1 U1492 ( .A(n1307), .B(n1306), .C(n1305), .Y(n1318) );
  AOI22X1 U1493 ( .A(\regs[4][14] ), .B(n334), .C(\regs[6][14] ), .D(n312), 
        .Y(n1316) );
  AOI22X1 U1494 ( .A(\regs[2][14] ), .B(n330), .C(outreg_data[14]), .D(n347), 
        .Y(n1315) );
  OAI22X1 U1495 ( .A(n293), .B(n1309), .C(n321), .D(n1308), .Y(n1313) );
  OAI22X1 U1496 ( .A(n425), .B(n1311), .C(n428), .D(n1310), .Y(n1312) );
  NOR2X1 U1497 ( .A(n1313), .B(n1312), .Y(n1314) );
  NAND3X1 U1498 ( .A(n1316), .B(n1315), .C(n1314), .Y(n1317) );
  OR2X2 U1499 ( .A(n1318), .B(n1317), .Y(r1_data[14]) );
  AOI22X1 U1500 ( .A(\regs[5][15] ), .B(n376), .C(\regs[7][15] ), .D(n326), 
        .Y(n1332) );
  AOI22X1 U1501 ( .A(\regs[3][15] ), .B(n382), .C(\regs[1][15] ), .D(n350), 
        .Y(n1331) );
  OAI22X1 U1502 ( .A(n412), .B(n1322), .C(n414), .D(n1321), .Y(n1329) );
  OAI22X1 U1503 ( .A(n310), .B(n1326), .C(n290), .D(n1324), .Y(n1328) );
  NOR2X1 U1504 ( .A(n1329), .B(n1328), .Y(n1330) );
  NAND3X1 U1505 ( .A(n1332), .B(n1331), .C(n1330), .Y(n1351) );
  AOI22X1 U1506 ( .A(\regs[4][15] ), .B(n334), .C(\regs[6][15] ), .D(n312), 
        .Y(n1349) );
  AOI22X1 U1507 ( .A(\regs[2][15] ), .B(n330), .C(outreg_data[15]), .D(n315), 
        .Y(n1348) );
  OAI22X1 U1508 ( .A(n293), .B(n1339), .C(n321), .D(n1337), .Y(n1346) );
  OAI22X1 U1509 ( .A(n425), .B(n1343), .C(n291), .D(n1341), .Y(n1345) );
  NOR2X1 U1510 ( .A(n1346), .B(n1345), .Y(n1347) );
  NAND3X1 U1511 ( .A(n1349), .B(n1348), .C(n1347), .Y(n1350) );
  OR2X2 U1512 ( .A(n1351), .B(n1350), .Y(r1_data[15]) );
endmodule


module scalable_cla_block_CLA_BLK_SIZE_BITS4_3 ( A, B, Cin, S, PG, GG );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output PG, GG;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47;

  INVX1 U1 ( .A(n6), .Y(n7) );
  INVX4 U2 ( .A(n15), .Y(n8) );
  AND2X2 U3 ( .A(A[2]), .B(B[2]), .Y(n24) );
  INVX2 U4 ( .A(B[2]), .Y(n34) );
  INVX1 U5 ( .A(n34), .Y(n1) );
  BUFX2 U6 ( .A(A[3]), .Y(n2) );
  INVX1 U7 ( .A(A[3]), .Y(n16) );
  INVX1 U8 ( .A(n35), .Y(n3) );
  INVX1 U9 ( .A(n3), .Y(n4) );
  INVX1 U10 ( .A(n2), .Y(n5) );
  NAND2X1 U11 ( .A(B[1]), .B(A[1]), .Y(n6) );
  NAND2X1 U12 ( .A(n7), .B(n17), .Y(n27) );
  INVX1 U13 ( .A(n5), .Y(n11) );
  INVX2 U14 ( .A(B[3]), .Y(n15) );
  OR2X2 U15 ( .A(A[3]), .B(B[3]), .Y(n23) );
  INVX1 U16 ( .A(n34), .Y(n9) );
  INVX1 U17 ( .A(n1), .Y(n10) );
  BUFX2 U18 ( .A(A[0]), .Y(n14) );
  BUFX2 U19 ( .A(A[1]), .Y(n13) );
  INVX1 U20 ( .A(A[1]), .Y(n37) );
  INVX1 U21 ( .A(n20), .Y(n12) );
  XOR2X1 U22 ( .A(n41), .B(n44), .Y(S[2]) );
  INVX2 U23 ( .A(A[2]), .Y(n35) );
  AOI22X1 U24 ( .A(n34), .B(n35), .C(n16), .D(n15), .Y(n17) );
  AND2X2 U25 ( .A(B[0]), .B(A[0]), .Y(n22) );
  INVX2 U26 ( .A(B[1]), .Y(n19) );
  INVX2 U27 ( .A(A[1]), .Y(n18) );
  NAND2X1 U28 ( .A(n19), .B(n18), .Y(n21) );
  OAI22X1 U29 ( .A(B[2]), .B(A[2]), .C(A[3]), .D(B[3]), .Y(n28) );
  INVX2 U30 ( .A(n28), .Y(n20) );
  NAND3X1 U31 ( .A(n21), .B(n22), .C(n20), .Y(n26) );
  AOI22X1 U32 ( .A(n2), .B(n8), .C(n24), .D(n23), .Y(n25) );
  NAND3X1 U33 ( .A(n26), .B(n27), .C(n25), .Y(GG) );
  INVX2 U34 ( .A(B[1]), .Y(n38) );
  NAND2X1 U35 ( .A(n38), .B(n37), .Y(n39) );
  INVX2 U36 ( .A(n39), .Y(n29) );
  NOR2X1 U37 ( .A(n29), .B(n12), .Y(PG) );
  XOR2X1 U38 ( .A(B[0]), .B(n14), .Y(n30) );
  XOR2X1 U39 ( .A(Cin), .B(n30), .Y(S[0]) );
  XOR2X1 U40 ( .A(n38), .B(n13), .Y(n33) );
  OAI21X1 U41 ( .A(B[0]), .B(n14), .C(Cin), .Y(n32) );
  NAND2X1 U42 ( .A(B[0]), .B(A[0]), .Y(n31) );
  AND2X2 U43 ( .A(n32), .B(n31), .Y(n36) );
  XOR2X1 U44 ( .A(n33), .B(n36), .Y(S[1]) );
  NAND2X1 U45 ( .A(n3), .B(n9), .Y(n43) );
  NAND2X1 U46 ( .A(n4), .B(n10), .Y(n42) );
  NAND2X1 U47 ( .A(n43), .B(n42), .Y(n41) );
  OAI21X1 U48 ( .A(n38), .B(n37), .C(n36), .Y(n40) );
  NAND2X1 U49 ( .A(n40), .B(n39), .Y(n44) );
  INVX2 U50 ( .A(n42), .Y(n45) );
  OAI21X1 U51 ( .A(n45), .B(n44), .C(n43), .Y(n47) );
  XOR2X1 U52 ( .A(n8), .B(n11), .Y(n46) );
  XOR2X1 U53 ( .A(n47), .B(n46), .Y(S[3]) );
endmodule


module scalable_cla_block_CLA_BLK_SIZE_BITS4_2 ( A, B, Cin, S, PG, GG );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output PG, GG;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60;

  INVX2 U1 ( .A(A[1]), .Y(n37) );
  INVX4 U2 ( .A(A[2]), .Y(n18) );
  INVX2 U3 ( .A(Cin), .Y(n41) );
  INVX4 U4 ( .A(n24), .Y(n7) );
  AND2X1 U5 ( .A(A[1]), .B(B[1]), .Y(n22) );
  INVX4 U6 ( .A(B[1]), .Y(n16) );
  NAND2X1 U7 ( .A(n16), .B(n37), .Y(n1) );
  INVX2 U8 ( .A(n42), .Y(n3) );
  XNOR2X1 U9 ( .A(n41), .B(n2), .Y(S[0]) );
  XOR2X1 U10 ( .A(n5), .B(n13), .Y(n2) );
  XNOR2X1 U11 ( .A(n43), .B(n3), .Y(S[2]) );
  INVX1 U12 ( .A(n9), .Y(n4) );
  INVX1 U13 ( .A(n37), .Y(n9) );
  INVX1 U14 ( .A(n33), .Y(n5) );
  INVX1 U15 ( .A(B[0]), .Y(n33) );
  BUFX2 U16 ( .A(B[1]), .Y(n6) );
  INVX2 U17 ( .A(B[3]), .Y(n24) );
  OAI21X1 U18 ( .A(n59), .B(n60), .C(n58), .Y(S[3]) );
  INVX1 U19 ( .A(n18), .Y(n8) );
  AND2X1 U20 ( .A(A[2]), .B(B[2]), .Y(n27) );
  INVX2 U21 ( .A(n25), .Y(n12) );
  INVX1 U22 ( .A(B[3]), .Y(n14) );
  OR2X2 U23 ( .A(B[3]), .B(A[3]), .Y(n31) );
  INVX1 U24 ( .A(n12), .Y(n44) );
  INVX1 U25 ( .A(n21), .Y(n10) );
  INVX1 U26 ( .A(A[3]), .Y(n15) );
  INVX2 U27 ( .A(A[3]), .Y(n25) );
  XNOR2X1 U28 ( .A(n35), .B(n11), .Y(S[1]) );
  XNOR2X1 U29 ( .A(n9), .B(n6), .Y(n11) );
  INVX2 U30 ( .A(n34), .Y(n13) );
  INVX1 U31 ( .A(A[0]), .Y(n34) );
  INVX1 U32 ( .A(n23), .Y(n54) );
  AOI22X1 U33 ( .A(n16), .B(n37), .C(n15), .D(n14), .Y(n20) );
  NAND2X1 U34 ( .A(B[0]), .B(A[0]), .Y(n17) );
  AOI21X1 U35 ( .A(n18), .B(n21), .C(n17), .Y(n19) );
  NAND2X1 U36 ( .A(n20), .B(n19), .Y(n30) );
  INVX2 U37 ( .A(B[2]), .Y(n21) );
  NAND2X1 U38 ( .A(n18), .B(n21), .Y(n23) );
  NAND3X1 U39 ( .A(n31), .B(n49), .C(n22), .Y(n29) );
  NAND2X1 U40 ( .A(n25), .B(n24), .Y(n26) );
  AOI22X1 U41 ( .A(n7), .B(n12), .C(n26), .D(n27), .Y(n28) );
  NAND3X1 U42 ( .A(n30), .B(n28), .C(n29), .Y(GG) );
  NAND2X1 U43 ( .A(n16), .B(n37), .Y(n51) );
  NAND2X1 U44 ( .A(n18), .B(n21), .Y(n49) );
  NAND3X1 U45 ( .A(n51), .B(n31), .C(n23), .Y(n32) );
  INVX2 U46 ( .A(n32), .Y(PG) );
  NAND2X1 U47 ( .A(n5), .B(n13), .Y(n36) );
  NAND2X1 U48 ( .A(n34), .B(n33), .Y(n38) );
  NAND2X1 U49 ( .A(Cin), .B(n38), .Y(n46) );
  NAND2X1 U50 ( .A(n36), .B(n46), .Y(n35) );
  OAI21X1 U51 ( .A(n16), .B(n4), .C(n36), .Y(n39) );
  INVX2 U52 ( .A(n39), .Y(n47) );
  OAI21X1 U53 ( .A(n39), .B(n38), .C(n1), .Y(n40) );
  AOI21X1 U54 ( .A(n47), .B(n41), .C(n40), .Y(n43) );
  NAND2X1 U55 ( .A(n10), .B(n8), .Y(n45) );
  INVX2 U56 ( .A(n45), .Y(n48) );
  NOR2X1 U57 ( .A(n54), .B(n48), .Y(n42) );
  XOR2X1 U58 ( .A(n44), .B(n7), .Y(n52) );
  INVX2 U59 ( .A(n52), .Y(n50) );
  NAND2X1 U60 ( .A(n45), .B(n50), .Y(n60) );
  NAND2X1 U61 ( .A(n47), .B(n46), .Y(n59) );
  XOR2X1 U62 ( .A(n50), .B(n48), .Y(n57) );
  NAND3X1 U63 ( .A(n50), .B(n1), .C(n49), .Y(n56) );
  NAND2X1 U64 ( .A(n52), .B(n1), .Y(n53) );
  NOR2X1 U65 ( .A(n54), .B(n53), .Y(n55) );
  AOI22X1 U66 ( .A(n57), .B(n56), .C(n59), .D(n55), .Y(n58) );
endmodule


module scalable_cla_block_CLA_BLK_SIZE_BITS4_1 ( A, B, Cin, S, PG, GG );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output PG, GG;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73;

  BUFX4 U1 ( .A(n47), .Y(n1) );
  INVX1 U2 ( .A(B[0]), .Y(n39) );
  INVX1 U3 ( .A(Cin), .Y(n58) );
  AND2X2 U4 ( .A(n48), .B(n47), .Y(n2) );
  INVX2 U5 ( .A(n2), .Y(n69) );
  INVX4 U6 ( .A(B[3]), .Y(n5) );
  INVX2 U7 ( .A(Cin), .Y(n10) );
  INVX1 U8 ( .A(A[3]), .Y(n3) );
  INVX1 U9 ( .A(A[3]), .Y(n4) );
  INVX2 U10 ( .A(A[3]), .Y(n29) );
  BUFX2 U11 ( .A(n25), .Y(n6) );
  BUFX2 U12 ( .A(n32), .Y(n7) );
  INVX1 U13 ( .A(A[1]), .Y(n32) );
  INVX1 U14 ( .A(B[1]), .Y(n31) );
  INVX2 U15 ( .A(n20), .Y(n47) );
  OR2X2 U16 ( .A(B[1]), .B(A[1]), .Y(n8) );
  INVX1 U17 ( .A(n5), .Y(n9) );
  INVX1 U18 ( .A(n48), .Y(n30) );
  AOI22X1 U19 ( .A(n27), .B(n28), .C(n5), .D(n4), .Y(n33) );
  BUFX2 U20 ( .A(n24), .Y(n11) );
  AND2X2 U21 ( .A(n56), .B(n2), .Y(n12) );
  INVX1 U22 ( .A(n3), .Y(n13) );
  NAND2X1 U23 ( .A(n29), .B(n5), .Y(n14) );
  BUFX2 U24 ( .A(n11), .Y(n15) );
  OR2X2 U25 ( .A(B[2]), .B(A[2]), .Y(n24) );
  BUFX2 U26 ( .A(n8), .Y(n16) );
  BUFX2 U27 ( .A(n2), .Y(n17) );
  AND2X2 U28 ( .A(B[2]), .B(A[2]), .Y(n18) );
  INVX2 U29 ( .A(n18), .Y(n60) );
  NAND2X1 U30 ( .A(n5), .B(n29), .Y(n19) );
  AND2X2 U31 ( .A(A[0]), .B(B[0]), .Y(n20) );
  INVX2 U32 ( .A(A[2]), .Y(n28) );
  AND2X1 U33 ( .A(n71), .B(n72), .Y(n22) );
  XNOR2X1 U34 ( .A(Cin), .B(n21), .Y(S[0]) );
  XOR2X1 U35 ( .A(B[0]), .B(n40), .Y(n21) );
  AND2X2 U36 ( .A(n66), .B(n16), .Y(n23) );
  NAND2X1 U37 ( .A(n28), .B(n27), .Y(n25) );
  BUFX2 U38 ( .A(A[3]), .Y(n26) );
  INVX1 U39 ( .A(A[0]), .Y(n40) );
  NAND2X1 U40 ( .A(n22), .B(n73), .Y(S[3]) );
  INVX2 U41 ( .A(B[2]), .Y(n27) );
  NAND2X1 U42 ( .A(A[1]), .B(B[1]), .Y(n48) );
  NAND3X1 U43 ( .A(n19), .B(n25), .C(n30), .Y(n37) );
  AOI22X1 U44 ( .A(n13), .B(n9), .C(n14), .D(n18), .Y(n36) );
  NAND2X1 U45 ( .A(n31), .B(n32), .Y(n34) );
  NAND3X1 U46 ( .A(n20), .B(n33), .C(n34), .Y(n35) );
  NAND3X1 U47 ( .A(n37), .B(n36), .C(n35), .Y(GG) );
  NAND3X1 U48 ( .A(n24), .B(n19), .C(n8), .Y(n38) );
  INVX2 U49 ( .A(n38), .Y(PG) );
  XOR2X1 U50 ( .A(n7), .B(B[1]), .Y(n43) );
  NAND2X1 U51 ( .A(n40), .B(n39), .Y(n49) );
  NAND3X1 U52 ( .A(Cin), .B(n49), .C(n43), .Y(n46) );
  INVX2 U53 ( .A(n43), .Y(n41) );
  NAND3X1 U54 ( .A(n41), .B(n1), .C(n10), .Y(n45) );
  OAI21X1 U55 ( .A(n43), .B(n49), .C(n1), .Y(n42) );
  OAI21X1 U56 ( .A(n43), .B(n1), .C(n42), .Y(n44) );
  NAND3X1 U57 ( .A(n44), .B(n46), .C(n45), .Y(S[1]) );
  NAND2X1 U58 ( .A(n60), .B(n11), .Y(n50) );
  INVX2 U59 ( .A(n50), .Y(n52) );
  NAND3X1 U60 ( .A(n52), .B(n17), .C(n10), .Y(n55) );
  INVX2 U61 ( .A(n49), .Y(n56) );
  NAND2X1 U62 ( .A(n56), .B(n2), .Y(n66) );
  NAND3X1 U63 ( .A(Cin), .B(n50), .C(n23), .Y(n54) );
  OAI21X1 U64 ( .A(n17), .B(n52), .C(n23), .Y(n51) );
  OAI21X1 U65 ( .A(n52), .B(n23), .C(n51), .Y(n53) );
  NAND3X1 U66 ( .A(n53), .B(n54), .C(n55), .Y(S[2]) );
  XOR2X1 U67 ( .A(n5), .B(n26), .Y(n61) );
  INVX2 U68 ( .A(n61), .Y(n62) );
  NAND2X1 U69 ( .A(n60), .B(n62), .Y(n67) );
  NOR2X1 U70 ( .A(n69), .B(n67), .Y(n59) );
  NAND3X1 U71 ( .A(n61), .B(n16), .C(n6), .Y(n65) );
  NOR2X1 U72 ( .A(n56), .B(n65), .Y(n57) );
  AOI22X1 U73 ( .A(n58), .B(n59), .C(Cin), .D(n57), .Y(n73) );
  XOR2X1 U74 ( .A(n61), .B(n60), .Y(n64) );
  NAND3X1 U75 ( .A(n62), .B(n16), .C(n15), .Y(n63) );
  NAND2X1 U76 ( .A(n64), .B(n63), .Y(n72) );
  INVX2 U77 ( .A(n65), .Y(n70) );
  INVX2 U78 ( .A(n67), .Y(n68) );
  AOI22X1 U79 ( .A(n70), .B(n69), .C(n12), .D(n68), .Y(n71) );
endmodule


module scalable_cla_block_CLA_BLK_SIZE_BITS4_0 ( A, B, Cin, S, PG, GG );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output PG, GG;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44;

  INVX2 U1 ( .A(Cin), .Y(n28) );
  AND2X2 U2 ( .A(n12), .B(n2), .Y(n1) );
  OR2X2 U3 ( .A(B[1]), .B(A[1]), .Y(n36) );
  INVX1 U4 ( .A(n36), .Y(n21) );
  NAND2X1 U5 ( .A(B[0]), .B(A[0]), .Y(n2) );
  INVX1 U6 ( .A(n2), .Y(n13) );
  XNOR2X1 U7 ( .A(n23), .B(n3), .Y(S[2]) );
  AND2X2 U8 ( .A(n25), .B(n37), .Y(n3) );
  NOR2X1 U9 ( .A(n20), .B(n33), .Y(n4) );
  XNOR2X1 U10 ( .A(n37), .B(n38), .Y(n39) );
  OR2X2 U11 ( .A(A[2]), .B(B[2]), .Y(n25) );
  XNOR2X1 U12 ( .A(Cin), .B(n5), .Y(S[0]) );
  XNOR2X1 U13 ( .A(B[0]), .B(A[0]), .Y(n5) );
  OR2X2 U14 ( .A(A[0]), .B(B[0]), .Y(n20) );
  INVX2 U15 ( .A(B[3]), .Y(n24) );
  INVX2 U16 ( .A(A[3]), .Y(n10) );
  INVX2 U17 ( .A(B[1]), .Y(n11) );
  NAND2X1 U18 ( .A(n24), .B(n10), .Y(n7) );
  NAND3X1 U19 ( .A(n36), .B(n25), .C(n7), .Y(n6) );
  INVX2 U20 ( .A(n6), .Y(PG) );
  NAND2X1 U21 ( .A(B[0]), .B(A[0]), .Y(n18) );
  INVX2 U22 ( .A(n25), .Y(n41) );
  NAND2X1 U23 ( .A(A[1]), .B(B[1]), .Y(n19) );
  NAND2X1 U24 ( .A(B[2]), .B(A[2]), .Y(n37) );
  OAI21X1 U25 ( .A(n41), .B(n19), .C(n37), .Y(n8) );
  AOI22X1 U26 ( .A(PG), .B(n13), .C(n8), .D(n7), .Y(n9) );
  OAI21X1 U27 ( .A(n24), .B(n10), .C(n9), .Y(GG) );
  XOR2X1 U28 ( .A(n11), .B(A[1]), .Y(n14) );
  INVX2 U29 ( .A(n14), .Y(n12) );
  NAND2X1 U30 ( .A(n28), .B(n1), .Y(n17) );
  AOI22X1 U31 ( .A(n13), .B(n14), .C(n1), .D(n26), .Y(n16) );
  NAND3X1 U32 ( .A(Cin), .B(n20), .C(n14), .Y(n15) );
  NAND3X1 U33 ( .A(n16), .B(n15), .C(n17), .Y(S[1]) );
  NAND2X1 U34 ( .A(n19), .B(n18), .Y(n33) );
  INVX2 U35 ( .A(n20), .Y(n26) );
  NOR2X1 U36 ( .A(n4), .B(n21), .Y(n22) );
  OAI21X1 U37 ( .A(n33), .B(Cin), .C(n22), .Y(n23) );
  XOR2X1 U38 ( .A(n24), .B(A[3]), .Y(n27) );
  NAND3X1 U39 ( .A(n27), .B(n36), .C(n25), .Y(n32) );
  NOR2X1 U40 ( .A(n26), .B(n32), .Y(n30) );
  INVX2 U41 ( .A(n27), .Y(n38) );
  NAND2X1 U42 ( .A(n38), .B(n37), .Y(n31) );
  NOR2X1 U43 ( .A(n33), .B(n31), .Y(n29) );
  AOI22X1 U44 ( .A(Cin), .B(n30), .C(n28), .D(n29), .Y(n44) );
  INVX2 U45 ( .A(n31), .Y(n35) );
  INVX2 U46 ( .A(n32), .Y(n34) );
  AOI22X1 U47 ( .A(n4), .B(n35), .C(n34), .D(n33), .Y(n43) );
  NAND2X1 U48 ( .A(n36), .B(n38), .Y(n40) );
  OAI21X1 U49 ( .A(n41), .B(n40), .C(n39), .Y(n42) );
  NAND3X1 U50 ( .A(n42), .B(n43), .C(n44), .Y(S[3]) );
endmodule


module scalable_cla_addr_NUM_CLA_BLKS4_CLA_BLK_SIZE_BITS4 ( A, B, Cin, S, V );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Cin;
  output V;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18;
  wire   [3:0] gg_vector;
  wire   [3:0] pg_vector;

  scalable_cla_block_CLA_BLK_SIZE_BITS4_3 CLA_BLK_0 ( .A(A[3:0]), .B(B[3:0]), 
        .Cin(Cin), .S(S[3:0]), .PG(pg_vector[0]), .GG(gg_vector[0]) );
  scalable_cla_block_CLA_BLK_SIZE_BITS4_2 CLA_BLK_1 ( .A(A[7:4]), .B(B[7:4]), 
        .Cin(n4), .S(S[7:4]), .PG(pg_vector[1]), .GG(gg_vector[1]) );
  scalable_cla_block_CLA_BLK_SIZE_BITS4_1 CLA_BLK_2 ( .A(A[11:8]), .B(B[11:8]), 
        .Cin(n18), .S(S[11:8]), .PG(pg_vector[2]), .GG(gg_vector[2]) );
  scalable_cla_block_CLA_BLK_SIZE_BITS4_0 CLA_BLK_3 ( .A(A[15:12]), .B(
        B[15:12]), .Cin(n17), .S(S[15:12]), .PG(pg_vector[3]), .GG(
        gg_vector[3]) );
  INVX2 U1 ( .A(gg_vector[2]), .Y(n7) );
  INVX1 U2 ( .A(n14), .Y(V) );
  BUFX2 U3 ( .A(n17), .Y(n1) );
  BUFX2 U4 ( .A(gg_vector[1]), .Y(n2) );
  BUFX2 U5 ( .A(pg_vector[1]), .Y(n3) );
  INVX2 U6 ( .A(gg_vector[0]), .Y(n6) );
  NAND2X1 U7 ( .A(n13), .B(n6), .Y(n4) );
  INVX4 U8 ( .A(n12), .Y(n17) );
  INVX4 U9 ( .A(n5), .Y(n18) );
  AOI21X1 U10 ( .A(n3), .B(n10), .C(n2), .Y(n5) );
  AND2X2 U11 ( .A(pg_vector[2]), .B(pg_vector[1]), .Y(n11) );
  NAND2X1 U12 ( .A(pg_vector[0]), .B(Cin), .Y(n13) );
  NAND2X1 U13 ( .A(n13), .B(n6), .Y(n10) );
  NAND2X1 U14 ( .A(gg_vector[1]), .B(pg_vector[2]), .Y(n8) );
  NAND2X1 U15 ( .A(n8), .B(n7), .Y(n9) );
  AOI21X1 U16 ( .A(n11), .B(n15), .C(n9), .Y(n12) );
  NAND2X1 U17 ( .A(n13), .B(n6), .Y(n15) );
  AOI21X1 U18 ( .A(pg_vector[3]), .B(n1), .C(gg_vector[3]), .Y(n14) );
endmodule


module alu_DATA_SIZE_BITS16 ( A, B, alu_op, result, overflow );
  input [15:0] A;
  input [15:0] B;
  output [15:0] result;
  input alu_op;
  output overflow;
  wire   int_V, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43;
  wire   [15:0] int_A;
  wire   [15:0] int_B;
  wire   [15:0] int_S;

  scalable_cla_addr_NUM_CLA_BLKS4_CLA_BLK_SIZE_BITS4 CLA_ADDR ( .A(int_A), .B(
        int_B), .Cin(1'b0), .S(int_S), .V(int_V) );
  BUFX2 U2 ( .A(A[1]), .Y(n1) );
  MUX2X1 U3 ( .B(int_S[10]), .A(n10), .S(n22), .Y(n38) );
  INVX4 U4 ( .A(n22), .Y(n17) );
  INVX2 U5 ( .A(n23), .Y(n11) );
  AND2X2 U6 ( .A(A[0]), .B(alu_op), .Y(int_A[0]) );
  INVX1 U7 ( .A(n24), .Y(n2) );
  INVX1 U8 ( .A(alu_op), .Y(n22) );
  INVX1 U9 ( .A(n32), .Y(result[4]) );
  INVX1 U10 ( .A(n33), .Y(result[5]) );
  INVX1 U11 ( .A(n34), .Y(result[6]) );
  INVX1 U12 ( .A(n36), .Y(result[8]) );
  INVX1 U13 ( .A(n40), .Y(result[12]) );
  AND2X2 U14 ( .A(n13), .B(A[8]), .Y(int_A[8]) );
  INVX1 U15 ( .A(n37), .Y(result[9]) );
  INVX1 U16 ( .A(n43), .Y(result[15]) );
  INVX1 U17 ( .A(n39), .Y(result[11]) );
  BUFX2 U18 ( .A(A[6]), .Y(n3) );
  MUX2X1 U19 ( .B(A[14]), .A(int_S[14]), .S(alu_op), .Y(n42) );
  BUFX2 U20 ( .A(A[7]), .Y(n4) );
  INVX2 U21 ( .A(alu_op), .Y(n23) );
  INVX1 U22 ( .A(n35), .Y(result[7]) );
  BUFX2 U23 ( .A(A[5]), .Y(n5) );
  BUFX2 U24 ( .A(A[2]), .Y(n6) );
  BUFX2 U25 ( .A(A[3]), .Y(n7) );
  AND2X2 U26 ( .A(alu_op), .B(A[13]), .Y(int_A[13]) );
  INVX1 U27 ( .A(n38), .Y(result[10]) );
  INVX1 U28 ( .A(n41), .Y(result[13]) );
  BUFX2 U29 ( .A(A[0]), .Y(n8) );
  BUFX2 U30 ( .A(A[11]), .Y(n9) );
  INVX1 U31 ( .A(n42), .Y(result[14]) );
  AND2X2 U32 ( .A(alu_op), .B(A[10]), .Y(int_A[10]) );
  INVX1 U33 ( .A(A[10]), .Y(n25) );
  AND2X2 U34 ( .A(n16), .B(A[1]), .Y(int_A[1]) );
  INVX1 U35 ( .A(n25), .Y(n10) );
  INVX1 U36 ( .A(alu_op), .Y(n20) );
  INVX1 U37 ( .A(n20), .Y(n19) );
  INVX1 U38 ( .A(n23), .Y(n16) );
  INVX1 U39 ( .A(n21), .Y(n13) );
  INVX1 U40 ( .A(n20), .Y(n14) );
  AND2X2 U41 ( .A(A[5]), .B(n11), .Y(int_A[5]) );
  AND2X2 U42 ( .A(n11), .B(A[9]), .Y(int_A[9]) );
  AND2X2 U43 ( .A(A[15]), .B(n23), .Y(n12) );
  AND2X2 U44 ( .A(n13), .B(A[12]), .Y(int_A[12]) );
  AND2X2 U45 ( .A(A[2]), .B(n11), .Y(int_A[2]) );
  AND2X2 U46 ( .A(n16), .B(A[7]), .Y(int_A[7]) );
  AND2X2 U47 ( .A(n11), .B(A[6]), .Y(int_A[6]) );
  AND2X2 U48 ( .A(A[11]), .B(n14), .Y(int_A[11]) );
  AND2X2 U49 ( .A(n13), .B(A[3]), .Y(int_A[3]) );
  AND2X2 U50 ( .A(n9), .B(n23), .Y(n15) );
  INVX8 U51 ( .A(n21), .Y(n18) );
  INVX4 U52 ( .A(alu_op), .Y(n21) );
  AND2X2 U53 ( .A(B[0]), .B(n18), .Y(int_B[0]) );
  AND2X2 U54 ( .A(B[1]), .B(n18), .Y(int_B[1]) );
  AND2X2 U55 ( .A(B[2]), .B(n19), .Y(int_B[2]) );
  AND2X2 U56 ( .A(n18), .B(B[3]), .Y(int_B[3]) );
  AND2X2 U57 ( .A(B[4]), .B(n18), .Y(int_B[4]) );
  AND2X2 U58 ( .A(B[5]), .B(n18), .Y(int_B[5]) );
  AND2X2 U59 ( .A(B[6]), .B(n18), .Y(int_B[6]) );
  AND2X2 U60 ( .A(B[7]), .B(n18), .Y(int_B[7]) );
  AND2X2 U61 ( .A(B[8]), .B(n18), .Y(int_B[8]) );
  AND2X2 U62 ( .A(B[9]), .B(n18), .Y(int_B[9]) );
  AND2X2 U63 ( .A(B[10]), .B(n18), .Y(int_B[10]) );
  AND2X2 U64 ( .A(B[11]), .B(n18), .Y(int_B[11]) );
  AND2X2 U65 ( .A(B[12]), .B(n18), .Y(int_B[12]) );
  AND2X2 U66 ( .A(B[13]), .B(n18), .Y(int_B[13]) );
  AND2X2 U67 ( .A(B[14]), .B(n18), .Y(int_B[14]) );
  AND2X2 U68 ( .A(B[15]), .B(n18), .Y(int_B[15]) );
  INVX2 U69 ( .A(A[4]), .Y(n24) );
  NOR2X1 U70 ( .A(n23), .B(n24), .Y(int_A[4]) );
  INVX2 U71 ( .A(A[14]), .Y(n26) );
  NOR2X1 U72 ( .A(n26), .B(n20), .Y(int_A[14]) );
  INVX2 U73 ( .A(A[15]), .Y(n27) );
  NOR2X1 U74 ( .A(n27), .B(n20), .Y(int_A[15]) );
  AND2X2 U75 ( .A(int_V), .B(n18), .Y(overflow) );
  MUX2X1 U76 ( .B(n8), .A(int_S[0]), .S(n17), .Y(n28) );
  INVX2 U77 ( .A(n28), .Y(result[0]) );
  MUX2X1 U78 ( .B(n1), .A(int_S[1]), .S(n17), .Y(n29) );
  INVX2 U79 ( .A(n29), .Y(result[1]) );
  MUX2X1 U80 ( .B(n6), .A(int_S[2]), .S(n17), .Y(n30) );
  INVX2 U81 ( .A(n30), .Y(result[2]) );
  MUX2X1 U82 ( .B(n7), .A(int_S[3]), .S(n17), .Y(n31) );
  INVX2 U83 ( .A(n31), .Y(result[3]) );
  MUX2X1 U84 ( .B(n2), .A(int_S[4]), .S(n17), .Y(n32) );
  MUX2X1 U85 ( .B(n5), .A(int_S[5]), .S(n17), .Y(n33) );
  MUX2X1 U86 ( .B(n3), .A(int_S[6]), .S(n17), .Y(n34) );
  MUX2X1 U87 ( .B(n4), .A(int_S[7]), .S(n17), .Y(n35) );
  MUX2X1 U88 ( .B(A[8]), .A(int_S[8]), .S(n17), .Y(n36) );
  MUX2X1 U89 ( .B(A[9]), .A(int_S[9]), .S(n17), .Y(n37) );
  OAI22X1 U90 ( .A(n18), .B(n15), .C(n15), .D(int_S[11]), .Y(n39) );
  MUX2X1 U91 ( .B(A[12]), .A(int_S[12]), .S(n17), .Y(n40) );
  MUX2X1 U92 ( .B(A[13]), .A(int_S[13]), .S(n17), .Y(n41) );
  OAI22X1 U93 ( .A(n18), .B(n12), .C(n12), .D(int_S[15]), .Y(n43) );
endmodule


module datapath ( clk, n_reset, op, src1, src2, dest, ext_data, outreg_data, 
        overflow );
  input [1:0] op;
  input [3:0] src1;
  input [3:0] src2;
  input [3:0] dest;
  input [15:0] ext_data;
  output [15:0] outreg_data;
  input clk, n_reset;
  output overflow;
  wire   int_w_data_sel, int_w_en, int_alu_op, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34;
  wire   [15:0] int_src1_data;
  wire   [15:0] int_src2_data;
  wire   [15:0] int_result;

  datapath_ctrl DP_CTRL ( .op(op), .w_data_sel(int_w_data_sel), .w_en(int_w_en), .alu_op(int_alu_op) );
  regfile_NUM_REG_ADDR_BITS4_REG_SIZE_BITS16 REG_FILE ( .clk(clk), .n_reset(
        n_reset), .w_sel(dest), .r1_sel(src1), .r2_sel(src2), .w_data({n33, 
        n32, n31, n34, n29, n28, n27, n30, n25, n24, n23, n26, n21, n20, n19, 
        n22}), .w_en(int_w_en), .r1_data(int_src1_data), .r2_data(
        int_src2_data), .outreg_data(outreg_data) );
  alu_DATA_SIZE_BITS16 ALU_MAP ( .A(int_src1_data), .B(int_src2_data), 
        .alu_op(int_alu_op), .result(int_result), .overflow(overflow) );
  INVX4 U1 ( .A(int_w_data_sel), .Y(n1) );
  INVX4 U2 ( .A(n7), .Y(n26) );
  INVX4 U3 ( .A(n8), .Y(n23) );
  INVX4 U4 ( .A(n9), .Y(n24) );
  INVX4 U5 ( .A(n11), .Y(n30) );
  INVX4 U6 ( .A(n15), .Y(n34) );
  INVX4 U7 ( .A(n12), .Y(n27) );
  INVX4 U8 ( .A(n13), .Y(n28) );
  INVX4 U9 ( .A(n10), .Y(n25) );
  INVX4 U10 ( .A(n16), .Y(n31) );
  INVX4 U11 ( .A(n17), .Y(n32) );
  INVX4 U12 ( .A(n14), .Y(n29) );
  INVX2 U13 ( .A(n1), .Y(n2) );
  INVX4 U14 ( .A(n18), .Y(n33) );
  MUX2X1 U15 ( .B(ext_data[0]), .A(int_result[0]), .S(int_w_data_sel), .Y(n3)
         );
  INVX2 U16 ( .A(n3), .Y(n22) );
  MUX2X1 U17 ( .B(ext_data[1]), .A(int_result[1]), .S(int_w_data_sel), .Y(n4)
         );
  INVX2 U18 ( .A(n4), .Y(n19) );
  MUX2X1 U19 ( .B(ext_data[2]), .A(int_result[2]), .S(int_w_data_sel), .Y(n5)
         );
  INVX2 U20 ( .A(n5), .Y(n20) );
  MUX2X1 U21 ( .B(ext_data[3]), .A(int_result[3]), .S(int_w_data_sel), .Y(n6)
         );
  INVX2 U22 ( .A(n6), .Y(n21) );
  MUX2X1 U23 ( .B(ext_data[4]), .A(int_result[4]), .S(int_w_data_sel), .Y(n7)
         );
  AOI22X1 U24 ( .A(int_result[5]), .B(n2), .C(ext_data[5]), .D(n1), .Y(n8) );
  AOI22X1 U25 ( .A(int_result[6]), .B(n2), .C(ext_data[6]), .D(n1), .Y(n9) );
  AOI22X1 U26 ( .A(int_result[7]), .B(n2), .C(ext_data[7]), .D(n1), .Y(n10) );
  AOI22X1 U27 ( .A(int_result[8]), .B(n2), .C(ext_data[8]), .D(n1), .Y(n11) );
  AOI22X1 U28 ( .A(int_result[9]), .B(n2), .C(ext_data[9]), .D(n1), .Y(n12) );
  AOI22X1 U29 ( .A(ext_data[10]), .B(n1), .C(int_result[10]), .D(
        int_w_data_sel), .Y(n13) );
  AOI22X1 U30 ( .A(ext_data[11]), .B(n1), .C(int_result[11]), .D(n2), .Y(n14)
         );
  AOI22X1 U31 ( .A(int_result[12]), .B(n2), .C(ext_data[12]), .D(n1), .Y(n15)
         );
  AOI22X1 U32 ( .A(int_result[13]), .B(n2), .C(ext_data[13]), .D(n1), .Y(n16)
         );
  AOI22X1 U33 ( .A(ext_data[14]), .B(n1), .C(int_result[14]), .D(n2), .Y(n17)
         );
  AOI22X1 U34 ( .A(ext_data[15]), .B(n1), .C(int_result[15]), .D(n2), .Y(n18)
         );
endmodule


module flex_counter_NUM_CNT_BITS16_DW01_inc_2 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n18,
         n19, n20, n22, n23, n25, n26, n27, n28, n29, n31, n32, n34, n35, n36,
         n38, n40, n41, n42, n43, n44, n45, n47, n48, n50, n51, n52, n54;
  assign n7 = A[12];
  assign n13 = A[11];
  assign n16 = A[10];
  assign n20 = A[9];
  assign n23 = A[8];
  assign n29 = A[7];
  assign n32 = A[6];
  assign n36 = A[5];
  assign n40 = A[4];
  assign n45 = A[3];
  assign n48 = A[2];
  assign n52 = A[1];
  assign n54 = A[0];

  XOR2X1 U1 ( .A(n1), .B(A[15]), .Y(SUM[15]) );
  HAX1 U2 ( .A(A[14]), .B(n2), .YC(n1), .YS(SUM[14]) );
  XOR2X1 U3 ( .A(n6), .B(n5), .Y(SUM[13]) );
  NOR2X1 U4 ( .A(n26), .B(n3), .Y(n2) );
  NAND2X1 U5 ( .A(n4), .B(n11), .Y(n3) );
  NOR2X1 U6 ( .A(n5), .B(n8), .Y(n4) );
  XNOR2X1 U8 ( .A(n9), .B(n8), .Y(SUM[12]) );
  NAND2X1 U9 ( .A(n7), .B(n9), .Y(n6) );
  NOR2X1 U13 ( .A(n10), .B(n26), .Y(n9) );
  NOR2X1 U15 ( .A(n12), .B(n19), .Y(n11) );
  NAND2X1 U16 ( .A(n13), .B(n16), .Y(n12) );
  NAND2X1 U20 ( .A(n16), .B(n18), .Y(n15) );
  NOR2X1 U24 ( .A(n19), .B(n26), .Y(n18) );
  NAND2X1 U25 ( .A(n20), .B(n23), .Y(n19) );
  NAND2X1 U29 ( .A(n23), .B(n25), .Y(n22) );
  NAND2X1 U34 ( .A(n43), .B(n27), .Y(n26) );
  NOR2X1 U35 ( .A(n28), .B(n35), .Y(n27) );
  NAND2X1 U36 ( .A(n29), .B(n32), .Y(n28) );
  NAND2X1 U40 ( .A(n32), .B(n34), .Y(n31) );
  NOR2X1 U44 ( .A(n35), .B(n42), .Y(n34) );
  NAND2X1 U45 ( .A(n36), .B(n40), .Y(n35) );
  XOR2X1 U48 ( .A(n42), .B(n41), .Y(SUM[4]) );
  NOR2X1 U49 ( .A(n41), .B(n42), .Y(n38) );
  NOR2X1 U55 ( .A(n51), .B(n44), .Y(n43) );
  NAND2X1 U56 ( .A(n45), .B(n48), .Y(n44) );
  NAND2X1 U60 ( .A(n48), .B(n50), .Y(n47) );
  NAND2X1 U65 ( .A(n54), .B(n52), .Y(n51) );
  XNOR2X1 U72 ( .A(n15), .B(n13), .Y(SUM[11]) );
  XOR2X1 U73 ( .A(n34), .B(n32), .Y(SUM[6]) );
  XOR2X1 U74 ( .A(n50), .B(n48), .Y(SUM[2]) );
  XOR2X1 U75 ( .A(n25), .B(n23), .Y(SUM[8]) );
  XNOR2X1 U76 ( .A(n31), .B(n29), .Y(SUM[7]) );
  XNOR2X1 U77 ( .A(n47), .B(n45), .Y(SUM[3]) );
  XOR2X1 U78 ( .A(n38), .B(n36), .Y(SUM[5]) );
  XNOR2X1 U79 ( .A(n22), .B(n20), .Y(SUM[9]) );
  XOR2X1 U80 ( .A(n18), .B(n16), .Y(SUM[10]) );
  XOR2X1 U81 ( .A(n52), .B(n54), .Y(SUM[1]) );
  INVX2 U82 ( .A(n7), .Y(n8) );
  INVX2 U83 ( .A(n51), .Y(n50) );
  INVX2 U84 ( .A(A[13]), .Y(n5) );
  INVX2 U85 ( .A(n43), .Y(n42) );
  INVX2 U86 ( .A(n40), .Y(n41) );
  INVX2 U87 ( .A(n26), .Y(n25) );
  INVX2 U88 ( .A(n11), .Y(n10) );
  INVX2 U89 ( .A(n54), .Y(SUM[0]) );
endmodule


module flex_counter_NUM_CNT_BITS16_DW01_inc_3 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n3, n5, n6, n7, n8, n10, n11, n12, n13, n15, n16, n17, n18, n19,
         n20, n22, n23, n25, n26, n27, n29, n31, n32, n33, n34, n35, n36, n38,
         n39, n41, n42, n43, n45, n83;
  assign n3 = A[13];
  assign n8 = A[11];
  assign n13 = A[9];
  assign n20 = A[7];
  assign n23 = A[6];
  assign n27 = A[5];
  assign n31 = A[4];
  assign n36 = A[3];
  assign n39 = A[2];
  assign n43 = A[1];
  assign n45 = A[0];

  XOR2X1 U1 ( .A(n1), .B(A[15]), .Y(SUM[15]) );
  HAX1 U2 ( .A(A[14]), .B(n83), .YC(n1), .YS(SUM[14]) );
  XOR2X1 U8 ( .A(n7), .B(n6), .Y(SUM[12]) );
  NOR2X1 U9 ( .A(n6), .B(n7), .Y(n5) );
  NAND2X1 U12 ( .A(n8), .B(n10), .Y(n7) );
  XOR2X1 U15 ( .A(n12), .B(n11), .Y(SUM[10]) );
  NOR2X1 U16 ( .A(n11), .B(n12), .Y(n10) );
  NAND2X1 U19 ( .A(n13), .B(n15), .Y(n12) );
  XOR2X1 U22 ( .A(n17), .B(n16), .Y(SUM[8]) );
  NOR2X1 U23 ( .A(n16), .B(n17), .Y(n15) );
  NAND2X1 U26 ( .A(n34), .B(n18), .Y(n17) );
  NOR2X1 U27 ( .A(n19), .B(n26), .Y(n18) );
  NAND2X1 U28 ( .A(n20), .B(n23), .Y(n19) );
  NAND2X1 U32 ( .A(n23), .B(n25), .Y(n22) );
  NOR2X1 U36 ( .A(n26), .B(n33), .Y(n25) );
  NAND2X1 U37 ( .A(n27), .B(n31), .Y(n26) );
  XOR2X1 U40 ( .A(n33), .B(n32), .Y(SUM[4]) );
  NOR2X1 U41 ( .A(n32), .B(n33), .Y(n29) );
  NOR2X1 U47 ( .A(n42), .B(n35), .Y(n34) );
  NAND2X1 U48 ( .A(n36), .B(n39), .Y(n35) );
  NAND2X1 U52 ( .A(n39), .B(n41), .Y(n38) );
  NAND2X1 U57 ( .A(n45), .B(n43), .Y(n42) );
  XOR2X1 U64 ( .A(n5), .B(n3), .Y(SUM[13]) );
  XOR2X1 U65 ( .A(n10), .B(n8), .Y(SUM[11]) );
  AND2X2 U66 ( .A(n3), .B(n5), .Y(n83) );
  XNOR2X1 U67 ( .A(n22), .B(n20), .Y(SUM[7]) );
  XOR2X1 U68 ( .A(n15), .B(n13), .Y(SUM[9]) );
  XOR2X1 U69 ( .A(n43), .B(n45), .Y(SUM[1]) );
  XOR2X1 U70 ( .A(n29), .B(n27), .Y(SUM[5]) );
  XOR2X1 U71 ( .A(n25), .B(n23), .Y(SUM[6]) );
  XNOR2X1 U72 ( .A(n38), .B(n36), .Y(SUM[3]) );
  XOR2X1 U73 ( .A(n41), .B(n39), .Y(SUM[2]) );
  INVX2 U74 ( .A(A[12]), .Y(n6) );
  INVX2 U75 ( .A(n42), .Y(n41) );
  INVX2 U76 ( .A(n34), .Y(n33) );
  INVX2 U77 ( .A(n31), .Y(n32) );
  INVX2 U78 ( .A(A[8]), .Y(n16) );
  INVX2 U79 ( .A(A[10]), .Y(n11) );
  INVX2 U80 ( .A(n45), .Y(SUM[0]) );
endmodule


module flex_counter_NUM_CNT_BITS16 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [15:0] rollover_val;
  output [15:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34,
         N35, N36, N37, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, N57, N56, N55, N54,
         N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, n1, n2,
         n3, n4, n5, n6, n7, n8, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110;

  DFFSR \count_out_reg[15]  ( .D(n131), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[15]) );
  DFFSR \count_out_reg[14]  ( .D(n130), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[14]) );
  DFFSR \count_out_reg[13]  ( .D(n129), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[13]) );
  DFFSR \count_out_reg[12]  ( .D(n128), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[12]) );
  DFFSR \count_out_reg[11]  ( .D(n127), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[11]) );
  DFFSR \count_out_reg[10]  ( .D(n126), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[10]) );
  DFFSR \count_out_reg[9]  ( .D(n125), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[9]) );
  DFFSR \count_out_reg[8]  ( .D(n124), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[8]) );
  DFFSR \count_out_reg[7]  ( .D(n123), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[7]) );
  DFFSR \count_out_reg[6]  ( .D(n122), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[6]) );
  DFFSR \count_out_reg[5]  ( .D(n121), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \count_out_reg[4]  ( .D(n120), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \count_out_reg[3]  ( .D(n119), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[2]  ( .D(n118), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[1]  ( .D(n117), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[0]  ( .D(n116), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n115), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  flex_counter_NUM_CNT_BITS16_DW01_inc_2 add_44_aco ( .A({N57, N56, N55, N54, 
        N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42}), .SUM({
        N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, 
        N23, N22}) );
  flex_counter_NUM_CNT_BITS16_DW01_inc_3 add_38 ( .A(count_out), .SUM({N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3})
         );
  AND2X2 U20 ( .A(n4), .B(n7), .Y(n1) );
  INVX2 U21 ( .A(n2), .Y(n6) );
  INVX2 U22 ( .A(n2), .Y(n5) );
  OR2X2 U23 ( .A(n65), .B(n64), .Y(n2) );
  INVX2 U24 ( .A(n3), .Y(n4) );
  NOR2X1 U25 ( .A(count_enable), .B(clear), .Y(n3) );
  INVX2 U26 ( .A(count_out[13]), .Y(n67) );
  INVX2 U27 ( .A(clear), .Y(n7) );
  NAND2X1 U28 ( .A(N35), .B(n1), .Y(n8) );
  OAI21X1 U29 ( .A(n4), .B(n67), .C(n8), .Y(n129) );
  INVX2 U30 ( .A(count_out[12]), .Y(n68) );
  NAND2X1 U31 ( .A(N34), .B(n1), .Y(n26) );
  OAI21X1 U32 ( .A(n4), .B(n68), .C(n26), .Y(n128) );
  INVX2 U33 ( .A(count_out[5]), .Y(n75) );
  NAND2X1 U34 ( .A(N27), .B(n1), .Y(n27) );
  OAI21X1 U35 ( .A(n4), .B(n75), .C(n27), .Y(n121) );
  INVX2 U36 ( .A(count_out[4]), .Y(n76) );
  NAND2X1 U37 ( .A(N26), .B(n1), .Y(n28) );
  OAI21X1 U38 ( .A(n4), .B(n76), .C(n28), .Y(n120) );
  INVX2 U39 ( .A(count_out[14]), .Y(n66) );
  NAND2X1 U40 ( .A(N36), .B(n1), .Y(n29) );
  OAI21X1 U41 ( .A(n4), .B(n66), .C(n29), .Y(n130) );
  INVX2 U42 ( .A(count_out[6]), .Y(n74) );
  NAND2X1 U43 ( .A(N28), .B(n1), .Y(n30) );
  OAI21X1 U44 ( .A(n4), .B(n74), .C(n30), .Y(n122) );
  INVX2 U45 ( .A(count_out[7]), .Y(n73) );
  NAND2X1 U46 ( .A(N29), .B(n1), .Y(n31) );
  OAI21X1 U47 ( .A(n4), .B(n73), .C(n31), .Y(n123) );
  INVX2 U48 ( .A(count_out[8]), .Y(n72) );
  NAND2X1 U49 ( .A(N30), .B(n1), .Y(n32) );
  OAI21X1 U50 ( .A(n4), .B(n72), .C(n32), .Y(n124) );
  INVX2 U51 ( .A(count_out[9]), .Y(n71) );
  NAND2X1 U52 ( .A(N31), .B(n1), .Y(n33) );
  OAI21X1 U53 ( .A(n4), .B(n71), .C(n33), .Y(n125) );
  INVX2 U54 ( .A(count_out[0]), .Y(n80) );
  NAND2X1 U55 ( .A(N22), .B(n1), .Y(n34) );
  OAI21X1 U56 ( .A(n4), .B(n80), .C(n34), .Y(n116) );
  INVX2 U57 ( .A(count_out[1]), .Y(n79) );
  NAND2X1 U58 ( .A(N23), .B(n1), .Y(n35) );
  OAI21X1 U59 ( .A(n4), .B(n79), .C(n35), .Y(n117) );
  INVX2 U60 ( .A(count_out[11]), .Y(n69) );
  NAND2X1 U61 ( .A(N33), .B(n1), .Y(n36) );
  OAI21X1 U62 ( .A(n4), .B(n69), .C(n36), .Y(n127) );
  INVX2 U63 ( .A(count_out[10]), .Y(n70) );
  NAND2X1 U64 ( .A(N32), .B(n1), .Y(n37) );
  OAI21X1 U65 ( .A(n4), .B(n70), .C(n37), .Y(n126) );
  INVX2 U66 ( .A(count_out[3]), .Y(n77) );
  NAND2X1 U67 ( .A(N25), .B(n1), .Y(n38) );
  OAI21X1 U68 ( .A(n4), .B(n77), .C(n38), .Y(n119) );
  INVX2 U69 ( .A(count_out[2]), .Y(n78) );
  NAND2X1 U70 ( .A(N24), .B(n1), .Y(n39) );
  OAI21X1 U71 ( .A(n4), .B(n78), .C(n39), .Y(n118) );
  XOR2X1 U72 ( .A(count_out[9]), .B(rollover_val[9]), .Y(n44) );
  XNOR2X1 U73 ( .A(rollover_val[1]), .B(count_out[1]), .Y(n42) );
  XNOR2X1 U74 ( .A(rollover_val[0]), .B(count_out[0]), .Y(n41) );
  XOR2X1 U75 ( .A(n72), .B(rollover_val[8]), .Y(n40) );
  NAND3X1 U76 ( .A(n42), .B(n41), .C(n40), .Y(n43) );
  NOR2X1 U77 ( .A(n44), .B(n43), .Y(n51) );
  XOR2X1 U78 ( .A(count_out[10]), .B(rollover_val[10]), .Y(n49) );
  XNOR2X1 U79 ( .A(rollover_val[2]), .B(count_out[2]), .Y(n47) );
  XNOR2X1 U80 ( .A(rollover_val[3]), .B(count_out[3]), .Y(n46) );
  XOR2X1 U81 ( .A(n69), .B(rollover_val[11]), .Y(n45) );
  NAND3X1 U82 ( .A(n47), .B(n46), .C(n45), .Y(n48) );
  NOR2X1 U83 ( .A(n49), .B(n48), .Y(n50) );
  NAND2X1 U84 ( .A(n51), .B(n50), .Y(n65) );
  XOR2X1 U85 ( .A(count_out[12]), .B(rollover_val[12]), .Y(n56) );
  XNOR2X1 U86 ( .A(rollover_val[4]), .B(count_out[4]), .Y(n54) );
  XNOR2X1 U87 ( .A(rollover_val[5]), .B(count_out[5]), .Y(n53) );
  XOR2X1 U88 ( .A(n67), .B(rollover_val[13]), .Y(n52) );
  NAND3X1 U89 ( .A(n54), .B(n53), .C(n52), .Y(n55) );
  NOR2X1 U90 ( .A(n56), .B(n55), .Y(n63) );
  XOR2X1 U91 ( .A(count_out[15]), .B(rollover_val[15]), .Y(n61) );
  XNOR2X1 U92 ( .A(rollover_val[7]), .B(count_out[7]), .Y(n59) );
  XNOR2X1 U93 ( .A(rollover_val[6]), .B(count_out[6]), .Y(n58) );
  XOR2X1 U94 ( .A(n66), .B(rollover_val[14]), .Y(n57) );
  NAND3X1 U95 ( .A(n59), .B(n58), .C(n57), .Y(n60) );
  NOR2X1 U96 ( .A(n61), .B(n60), .Y(n62) );
  NAND2X1 U97 ( .A(n63), .B(n62), .Y(n64) );
  INVX2 U98 ( .A(count_out[15]), .Y(n82) );
  NOR2X1 U99 ( .A(n5), .B(n82), .Y(N57) );
  NOR2X1 U100 ( .A(n6), .B(n66), .Y(N56) );
  NOR2X1 U101 ( .A(n5), .B(n67), .Y(N55) );
  NOR2X1 U102 ( .A(n6), .B(n68), .Y(N54) );
  NOR2X1 U103 ( .A(n5), .B(n69), .Y(N53) );
  NOR2X1 U104 ( .A(n6), .B(n70), .Y(N52) );
  NOR2X1 U105 ( .A(n5), .B(n71), .Y(N51) );
  NOR2X1 U106 ( .A(n6), .B(n72), .Y(N50) );
  NOR2X1 U107 ( .A(n5), .B(n73), .Y(N49) );
  NOR2X1 U108 ( .A(n6), .B(n74), .Y(N48) );
  NOR2X1 U109 ( .A(n5), .B(n75), .Y(N47) );
  NOR2X1 U110 ( .A(n6), .B(n76), .Y(N46) );
  NOR2X1 U111 ( .A(n5), .B(n77), .Y(N45) );
  NOR2X1 U112 ( .A(n6), .B(n78), .Y(N44) );
  NOR2X1 U113 ( .A(n5), .B(n79), .Y(N43) );
  NOR2X1 U114 ( .A(n6), .B(n80), .Y(N42) );
  NAND2X1 U115 ( .A(N37), .B(n1), .Y(n81) );
  OAI21X1 U116 ( .A(n4), .B(n82), .C(n81), .Y(n131) );
  XOR2X1 U117 ( .A(rollover_val[10]), .B(N13), .Y(n87) );
  XOR2X1 U118 ( .A(rollover_val[11]), .B(N14), .Y(n86) );
  XNOR2X1 U119 ( .A(N5), .B(rollover_val[2]), .Y(n84) );
  XNOR2X1 U120 ( .A(N6), .B(rollover_val[3]), .Y(n83) );
  NAND2X1 U121 ( .A(n84), .B(n83), .Y(n85) );
  NOR3X1 U122 ( .A(n87), .B(n86), .C(n85), .Y(n94) );
  XOR2X1 U123 ( .A(rollover_val[1]), .B(N4), .Y(n92) );
  XOR2X1 U124 ( .A(rollover_val[5]), .B(N8), .Y(n91) );
  XNOR2X1 U125 ( .A(N3), .B(rollover_val[0]), .Y(n89) );
  XNOR2X1 U126 ( .A(N7), .B(rollover_val[4]), .Y(n88) );
  NAND2X1 U127 ( .A(n89), .B(n88), .Y(n90) );
  NOR3X1 U128 ( .A(n92), .B(n91), .C(n90), .Y(n93) );
  NAND2X1 U129 ( .A(n94), .B(n93), .Y(n110) );
  XNOR2X1 U130 ( .A(N17), .B(rollover_val[14]), .Y(n95) );
  NAND2X1 U131 ( .A(n1), .B(n95), .Y(n100) );
  XNOR2X1 U132 ( .A(N10), .B(rollover_val[7]), .Y(n98) );
  XNOR2X1 U133 ( .A(N9), .B(rollover_val[6]), .Y(n97) );
  XNOR2X1 U134 ( .A(rollover_val[15]), .B(N18), .Y(n96) );
  NAND3X1 U135 ( .A(n98), .B(n97), .C(n96), .Y(n99) );
  NOR2X1 U136 ( .A(n100), .B(n99), .Y(n107) );
  XOR2X1 U137 ( .A(rollover_val[12]), .B(N15), .Y(n105) );
  XOR2X1 U138 ( .A(rollover_val[13]), .B(N16), .Y(n104) );
  XNOR2X1 U139 ( .A(N11), .B(rollover_val[8]), .Y(n102) );
  XNOR2X1 U140 ( .A(N12), .B(rollover_val[9]), .Y(n101) );
  NAND2X1 U141 ( .A(n102), .B(n101), .Y(n103) );
  NOR3X1 U142 ( .A(n105), .B(n104), .C(n103), .Y(n106) );
  NAND2X1 U143 ( .A(n107), .B(n106), .Y(n109) );
  NAND2X1 U144 ( .A(rollover_flag), .B(n3), .Y(n108) );
  OAI21X1 U145 ( .A(n110), .B(n109), .C(n108), .Y(n115) );
endmodule


module counter ( clk, n_reset, cnt_up, one_k_samples );
  input clk, n_reset, cnt_up;
  output one_k_samples;

  wire   [15:0] rollover_val;

  flex_counter_NUM_CNT_BITS16 IX ( .clk(clk), .n_rst(n_reset), .clear(1'b0), 
        .count_enable(cnt_up), .rollover_val({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .rollover_flag(one_k_samples) );
endmodule


module avg_four ( clk, n_reset, sample_data, data_ready, one_k_samples, 
        modwait, avg_out, err );
  input [15:0] sample_data;
  output [15:0] avg_out;
  input clk, n_reset, data_ready;
  output one_k_samples, modwait, err;
  wire   dr, overflow, cnt_up, n1, n2;
  wire   [1:0] op;
  wire   [3:0] src1;
  wire   [3:0] src2;
  wire   [3:0] dest;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;
  assign avg_out[14] = 1'b0;
  assign avg_out[15] = 1'b0;

  controller CONTROLLER ( .clk(clk), .n_reset(n_reset), .dr(dr), .overflow(
        overflow), .cnt_up(cnt_up), .modwait(modwait), .op(op), .src1(src1), 
        .src2({src2[3:1], SYNOPSYS_UNCONNECTED__0}), .dest(dest), .err(err) );
  sync SYNC ( .clk(clk), .n_rst(n_reset), .async_in(data_ready), .sync_out(dr)
         );
  datapath DATAPATH ( .clk(clk), .n_reset(n_reset), .op(op), .src1({src1[3:1], 
        n2}), .src2({src2[3:1], 1'b0}), .dest(dest), .ext_data(sample_data), 
        .outreg_data({avg_out[13:0], SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2}), .overflow(overflow) );
  counter COUNTER ( .clk(clk), .n_reset(n_reset), .cnt_up(cnt_up), 
        .one_k_samples(one_k_samples) );
  INVX4 U2 ( .A(src1[0]), .Y(n1) );
  INVX8 U3 ( .A(n1), .Y(n2) );
endmodule

