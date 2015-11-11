module lab7_out_ctrl (
	clk, 
	n_rst, 
	d_plus, 
	d_minus, 
	bus_mode, 
	tx_value);
   input clk;
   input n_rst;
   output d_plus;
   output d_minus;
   input [1:0] bus_mode;
   input tx_value;

   // Internal wires
   wire FE_OFN11_nd_minus;
   wire FE_OFN10_nd_plus;
   wire n9;
   wire n10;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n11;
   wire n12;

   BUFX2 FE_OFC11_nd_minus (.Y(d_minus), 
	.A(FE_OFN11_nd_minus));
   BUFX2 FE_OFC10_nd_plus (.Y(d_plus), 
	.A(FE_OFN10_nd_plus));
   DFFSR d_minus_reg_reg (.S(1'b1), 
	.R(n_rst), 
	.Q(FE_OFN11_nd_minus), 
	.D(n10), 
	.CLK(clk));
   DFFSR d_plus_reg_reg (.S(n_rst), 
	.R(1'b1), 
	.Q(FE_OFN10_nd_plus), 
	.D(n9), 
	.CLK(clk));
   INVX2 U5 (.Y(n3), 
	.A(tx_value));
   MUX2X1 U6 (.Y(n4), 
	.S(n5), 
	.B(d_minus), 
	.A(n3));
   INVX2 U7 (.Y(n7), 
	.A(bus_mode[0]));
   NOR2X1 U8 (.Y(n10), 
	.B(n4), 
	.A(n7));
   INVX2 U9 (.Y(n5), 
	.A(bus_mode[1]));
   NAND2X1 U10 (.Y(n11), 
	.B(n5), 
	.A(bus_mode[0]));
   INVX2 U11 (.Y(n6), 
	.A(d_plus));
   OAI21X1 U12 (.Y(n8), 
	.C(bus_mode[1]), 
	.B(n6), 
	.A(n7));
   OAI21X1 U13 (.Y(n12), 
	.C(n8), 
	.B(n11), 
	.A(tx_value));
   INVX2 U14 (.Y(n9), 
	.A(n12));
endmodule

module lab7_encoder (
	clk, 
	n_rst, 
	tx_bit, 
	shift_enable, 
	tx_value);
   input clk;
   input n_rst;
   input tx_bit;
   input shift_enable;
   output tx_value;

   // Internal wires
   wire last_bit;
   wire n4;
   wire n1;
   wire n2;

   DFFSR last_bit_reg (.S(n_rst), 
	.R(1'b1), 
	.Q(last_bit), 
	.D(n4), 
	.CLK(clk));
   XOR2X1 U2 (.Y(tx_value), 
	.B(n2), 
	.A(tx_bit));
   INVX1 U3 (.Y(n1), 
	.A(tx_bit));
   INVX2 U4 (.Y(n2), 
	.A(last_bit));
   MUX2X1 U5 (.Y(n4), 
	.S(shift_enable), 
	.B(n2), 
	.A(n1));
endmodule

module lab7_tx_sr_1 (
	clk, 
	n_rst, 
	shift_enable, 
	tx_enable, 
	tx_data, 
	load_data, 
	tx_out);
   input clk;
   input n_rst;
   input shift_enable;
   input tx_enable;
   input [7:0] tx_data;
   input load_data;
   output tx_out;

   // Internal wires
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n9;
   wire n10;
   wire n11;
   wire n13;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire [7:1] curr_val;

   DFFSR \curr_val_reg[7]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[7]), 
	.D(n30), 
	.CLK(clk));
   DFFSR \curr_val_reg[6]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[6]), 
	.D(n31), 
	.CLK(clk));
   DFFSR \curr_val_reg[5]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[5]), 
	.D(n32), 
	.CLK(clk));
   DFFSR \curr_val_reg[4]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[4]), 
	.D(n33), 
	.CLK(clk));
   DFFSR \curr_val_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[3]), 
	.D(n34), 
	.CLK(clk));
   DFFSR \curr_val_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[2]), 
	.D(n35), 
	.CLK(clk));
   DFFSR \curr_val_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[1]), 
	.D(n36), 
	.CLK(clk));
   DFFSR \curr_val_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(tx_out), 
	.D(n29), 
	.CLK(clk));
   INVX1 U11 (.Y(n9), 
	.A(load_data));
   AND2X2 U13 (.Y(n13), 
	.B(n18), 
	.A(n9));
   AND2X1 U14 (.Y(n10), 
	.B(shift_enable), 
	.A(tx_enable));
   AND2X2 U15 (.Y(n11), 
	.B(n9), 
	.A(n10));
   INVX1 U16 (.Y(n20), 
	.A(n11));
   NAND2X1 U21 (.Y(n18), 
	.B(tx_enable), 
	.A(shift_enable));
   MUX2X1 U22 (.Y(n19), 
	.S(n13), 
	.B(tx_data[7]), 
	.A(curr_val[7]));
   NAND2X1 U23 (.Y(n30), 
	.B(n19), 
	.A(n20));
   NAND2X1 U24 (.Y(n23), 
	.B(n11), 
	.A(curr_val[7]));
   NAND2X1 U25 (.Y(n22), 
	.B(curr_val[6]), 
	.A(n13));
   NAND2X1 U26 (.Y(n21), 
	.B(load_data), 
	.A(tx_data[6]));
   NAND3X1 U27 (.Y(n31), 
	.C(n22), 
	.B(n23), 
	.A(n21));
   NAND2X1 U28 (.Y(n26), 
	.B(n11), 
	.A(curr_val[6]));
   NAND2X1 U29 (.Y(n25), 
	.B(curr_val[5]), 
	.A(n13));
   NAND2X1 U30 (.Y(n24), 
	.B(load_data), 
	.A(tx_data[5]));
   NAND3X1 U31 (.Y(n32), 
	.C(n25), 
	.B(n26), 
	.A(n24));
   NAND2X1 U32 (.Y(n37), 
	.B(n11), 
	.A(curr_val[5]));
   NAND2X1 U33 (.Y(n28), 
	.B(curr_val[4]), 
	.A(n13));
   NAND2X1 U34 (.Y(n27), 
	.B(load_data), 
	.A(tx_data[4]));
   NAND3X1 U35 (.Y(n33), 
	.C(n28), 
	.B(n37), 
	.A(n27));
   NAND2X1 U36 (.Y(n40), 
	.B(n11), 
	.A(curr_val[4]));
   NAND2X1 U37 (.Y(n39), 
	.B(curr_val[3]), 
	.A(n13));
   NAND2X1 U38 (.Y(n38), 
	.B(load_data), 
	.A(tx_data[3]));
   NAND3X1 U39 (.Y(n34), 
	.C(n39), 
	.B(n40), 
	.A(n38));
   NAND2X1 U40 (.Y(n43), 
	.B(n11), 
	.A(curr_val[3]));
   NAND2X1 U41 (.Y(n42), 
	.B(curr_val[2]), 
	.A(n13));
   NAND2X1 U42 (.Y(n41), 
	.B(load_data), 
	.A(tx_data[2]));
   NAND3X1 U43 (.Y(n35), 
	.C(n42), 
	.B(n43), 
	.A(n41));
   NAND2X1 U44 (.Y(n46), 
	.B(n11), 
	.A(curr_val[2]));
   NAND2X1 U45 (.Y(n45), 
	.B(curr_val[1]), 
	.A(n13));
   NAND2X1 U46 (.Y(n44), 
	.B(load_data), 
	.A(tx_data[1]));
   NAND3X1 U47 (.Y(n36), 
	.C(n45), 
	.B(n46), 
	.A(n44));
   NAND2X1 U48 (.Y(n49), 
	.B(n11), 
	.A(curr_val[1]));
   NAND2X1 U49 (.Y(n48), 
	.B(tx_out), 
	.A(n13));
   NAND2X1 U50 (.Y(n47), 
	.B(load_data), 
	.A(tx_data[0]));
   NAND3X1 U51 (.Y(n29), 
	.C(n48), 
	.B(n49), 
	.A(n47));
endmodule

module fiforam (
	wclk, 
	wenable, 
	waddr, 
	raddr, 
	wdata, 
	rdata, 
	nclk__L2_N2, 
	nclk__L2_N4, 
	nclk__L2_N5, 
	nclk__L2_N6, 
	nclk__L2_N7);
   input wclk;
   input wenable;
   input [2:0] waddr;
   input [2:0] raddr;
   input [7:0] wdata;
   output [7:0] rdata;
   input nclk__L2_N2;
   input nclk__L2_N4;
   input nclk__L2_N5;
   input nclk__L2_N6;
   input nclk__L2_N7;

   // Internal wires
   wire FE_OFN9_n196;
   wire FE_OFN8_n193;
   wire FE_OFN7_n195;
   wire FE_OFN6_n194;
   wire FE_OFN5_n289;
   wire FE_OFN4_n285;
   wire FE_OFN3_n287;
   wire FE_OFN2_n283;
   wire \fiforeg[0][7] ;
   wire \fiforeg[0][6] ;
   wire \fiforeg[0][5] ;
   wire \fiforeg[0][4] ;
   wire \fiforeg[0][3] ;
   wire \fiforeg[0][2] ;
   wire \fiforeg[0][1] ;
   wire \fiforeg[0][0] ;
   wire \fiforeg[1][7] ;
   wire \fiforeg[1][6] ;
   wire \fiforeg[1][5] ;
   wire \fiforeg[1][4] ;
   wire \fiforeg[1][3] ;
   wire \fiforeg[1][2] ;
   wire \fiforeg[1][1] ;
   wire \fiforeg[1][0] ;
   wire \fiforeg[2][7] ;
   wire \fiforeg[2][6] ;
   wire \fiforeg[2][5] ;
   wire \fiforeg[2][4] ;
   wire \fiforeg[2][3] ;
   wire \fiforeg[2][2] ;
   wire \fiforeg[2][1] ;
   wire \fiforeg[2][0] ;
   wire \fiforeg[3][7] ;
   wire \fiforeg[3][6] ;
   wire \fiforeg[3][5] ;
   wire \fiforeg[3][4] ;
   wire \fiforeg[3][3] ;
   wire \fiforeg[3][2] ;
   wire \fiforeg[3][1] ;
   wire \fiforeg[3][0] ;
   wire \fiforeg[4][7] ;
   wire \fiforeg[4][6] ;
   wire \fiforeg[4][5] ;
   wire \fiforeg[4][4] ;
   wire \fiforeg[4][3] ;
   wire \fiforeg[4][2] ;
   wire \fiforeg[4][1] ;
   wire \fiforeg[4][0] ;
   wire \fiforeg[5][7] ;
   wire \fiforeg[5][6] ;
   wire \fiforeg[5][5] ;
   wire \fiforeg[5][4] ;
   wire \fiforeg[5][3] ;
   wire \fiforeg[5][2] ;
   wire \fiforeg[5][1] ;
   wire \fiforeg[5][0] ;
   wire \fiforeg[6][7] ;
   wire \fiforeg[6][6] ;
   wire \fiforeg[6][5] ;
   wire \fiforeg[6][4] ;
   wire \fiforeg[6][3] ;
   wire \fiforeg[6][2] ;
   wire \fiforeg[6][1] ;
   wire \fiforeg[6][0] ;
   wire \fiforeg[7][7] ;
   wire \fiforeg[7][6] ;
   wire \fiforeg[7][5] ;
   wire \fiforeg[7][4] ;
   wire \fiforeg[7][3] ;
   wire \fiforeg[7][2] ;
   wire \fiforeg[7][1] ;
   wire \fiforeg[7][0] ;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n1;
   wire n3;
   wire n4;
   wire n7;
   wire n15;
   wire n16;
   wire n17;
   wire n32;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n58;
   wire n59;
   wire n60;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n211;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;

   BUFX2 FE_OFC9_n196 (.Y(FE_OFN9_n196), 
	.A(n196));
   BUFX2 FE_OFC8_n193 (.Y(FE_OFN8_n193), 
	.A(n193));
   BUFX2 FE_OFC7_n195 (.Y(FE_OFN7_n195), 
	.A(n195));
   BUFX2 FE_OFC6_n194 (.Y(FE_OFN6_n194), 
	.A(n194));
   BUFX2 FE_OFC5_n289 (.Y(FE_OFN5_n289), 
	.A(n289));
   BUFX2 FE_OFC4_n285 (.Y(FE_OFN4_n285), 
	.A(n285));
   BUFX2 FE_OFC3_n287 (.Y(FE_OFN3_n287), 
	.A(n287));
   BUFX2 FE_OFC2_n283 (.Y(FE_OFN2_n283), 
	.A(n283));
   DFFPOSX1 \fiforeg_reg[7][7]  (.Q(\fiforeg[7][7] ), 
	.D(n212), 
	.CLK(nclk__L2_N5));
   DFFPOSX1 \fiforeg_reg[6][7]  (.Q(\fiforeg[6][7] ), 
	.D(n213), 
	.CLK(nclk__L2_N5));
   DFFPOSX1 \fiforeg_reg[5][7]  (.Q(\fiforeg[5][7] ), 
	.D(n214), 
	.CLK(nclk__L2_N5));
   DFFPOSX1 \fiforeg_reg[4][7]  (.Q(\fiforeg[4][7] ), 
	.D(n215), 
	.CLK(nclk__L2_N5));
   DFFPOSX1 \fiforeg_reg[3][7]  (.Q(\fiforeg[3][7] ), 
	.D(n216), 
	.CLK(nclk__L2_N5));
   DFFPOSX1 \fiforeg_reg[2][7]  (.Q(\fiforeg[2][7] ), 
	.D(n217), 
	.CLK(nclk__L2_N4));
   DFFPOSX1 \fiforeg_reg[1][7]  (.Q(\fiforeg[1][7] ), 
	.D(n218), 
	.CLK(nclk__L2_N5));
   DFFPOSX1 \fiforeg_reg[0][7]  (.Q(\fiforeg[0][7] ), 
	.D(n219), 
	.CLK(nclk__L2_N5));
   DFFPOSX1 \fiforeg_reg[7][6]  (.Q(\fiforeg[7][6] ), 
	.D(n220), 
	.CLK(nclk__L2_N4));
   DFFPOSX1 \fiforeg_reg[6][6]  (.Q(\fiforeg[6][6] ), 
	.D(n221), 
	.CLK(nclk__L2_N6));
   DFFPOSX1 \fiforeg_reg[5][6]  (.Q(\fiforeg[5][6] ), 
	.D(n222), 
	.CLK(nclk__L2_N4));
   DFFPOSX1 \fiforeg_reg[4][6]  (.Q(\fiforeg[4][6] ), 
	.D(n223), 
	.CLK(nclk__L2_N4));
   DFFPOSX1 \fiforeg_reg[3][6]  (.Q(\fiforeg[3][6] ), 
	.D(n224), 
	.CLK(nclk__L2_N6));
   DFFPOSX1 \fiforeg_reg[2][6]  (.Q(\fiforeg[2][6] ), 
	.D(n225), 
	.CLK(nclk__L2_N4));
   DFFPOSX1 \fiforeg_reg[1][6]  (.Q(\fiforeg[1][6] ), 
	.D(n226), 
	.CLK(nclk__L2_N6));
   DFFPOSX1 \fiforeg_reg[0][6]  (.Q(\fiforeg[0][6] ), 
	.D(n227), 
	.CLK(nclk__L2_N6));
   DFFPOSX1 \fiforeg_reg[7][5]  (.Q(\fiforeg[7][5] ), 
	.D(n228), 
	.CLK(nclk__L2_N6));
   DFFPOSX1 \fiforeg_reg[6][5]  (.Q(\fiforeg[6][5] ), 
	.D(n229), 
	.CLK(nclk__L2_N4));
   DFFPOSX1 \fiforeg_reg[5][5]  (.Q(\fiforeg[5][5] ), 
	.D(n230), 
	.CLK(nclk__L2_N4));
   DFFPOSX1 \fiforeg_reg[4][5]  (.Q(\fiforeg[4][5] ), 
	.D(n231), 
	.CLK(nclk__L2_N4));
   DFFPOSX1 \fiforeg_reg[3][5]  (.Q(\fiforeg[3][5] ), 
	.D(n232), 
	.CLK(nclk__L2_N7));
   DFFPOSX1 \fiforeg_reg[2][5]  (.Q(\fiforeg[2][5] ), 
	.D(n233), 
	.CLK(nclk__L2_N7));
   DFFPOSX1 \fiforeg_reg[1][5]  (.Q(\fiforeg[1][5] ), 
	.D(n234), 
	.CLK(nclk__L2_N6));
   DFFPOSX1 \fiforeg_reg[0][5]  (.Q(\fiforeg[0][5] ), 
	.D(n235), 
	.CLK(nclk__L2_N6));
   DFFPOSX1 \fiforeg_reg[7][4]  (.Q(\fiforeg[7][4] ), 
	.D(n236), 
	.CLK(nclk__L2_N4));
   DFFPOSX1 \fiforeg_reg[6][4]  (.Q(\fiforeg[6][4] ), 
	.D(n237), 
	.CLK(nclk__L2_N4));
   DFFPOSX1 \fiforeg_reg[5][4]  (.Q(\fiforeg[5][4] ), 
	.D(n238), 
	.CLK(nclk__L2_N4));
   DFFPOSX1 \fiforeg_reg[4][4]  (.Q(\fiforeg[4][4] ), 
	.D(n239), 
	.CLK(nclk__L2_N4));
   DFFPOSX1 \fiforeg_reg[3][4]  (.Q(\fiforeg[3][4] ), 
	.D(n240), 
	.CLK(nclk__L2_N7));
   DFFPOSX1 \fiforeg_reg[2][4]  (.Q(\fiforeg[2][4] ), 
	.D(n241), 
	.CLK(nclk__L2_N7));
   DFFPOSX1 \fiforeg_reg[1][4]  (.Q(\fiforeg[1][4] ), 
	.D(n242), 
	.CLK(nclk__L2_N6));
   DFFPOSX1 \fiforeg_reg[0][4]  (.Q(\fiforeg[0][4] ), 
	.D(n243), 
	.CLK(nclk__L2_N6));
   DFFPOSX1 \fiforeg_reg[7][3]  (.Q(\fiforeg[7][3] ), 
	.D(n244), 
	.CLK(nclk__L2_N7));
   DFFPOSX1 \fiforeg_reg[6][3]  (.Q(\fiforeg[6][3] ), 
	.D(n245), 
	.CLK(nclk__L2_N7));
   DFFPOSX1 \fiforeg_reg[5][3]  (.Q(\fiforeg[5][3] ), 
	.D(n246), 
	.CLK(nclk__L2_N7));
   DFFPOSX1 \fiforeg_reg[4][3]  (.Q(\fiforeg[4][3] ), 
	.D(n247), 
	.CLK(nclk__L2_N7));
   DFFPOSX1 \fiforeg_reg[3][3]  (.Q(\fiforeg[3][3] ), 
	.D(n248), 
	.CLK(nclk__L2_N7));
   DFFPOSX1 \fiforeg_reg[2][3]  (.Q(\fiforeg[2][3] ), 
	.D(n249), 
	.CLK(nclk__L2_N7));
   DFFPOSX1 \fiforeg_reg[1][3]  (.Q(\fiforeg[1][3] ), 
	.D(n250), 
	.CLK(nclk__L2_N7));
   DFFPOSX1 \fiforeg_reg[0][3]  (.Q(\fiforeg[0][3] ), 
	.D(n251), 
	.CLK(nclk__L2_N6));
   DFFPOSX1 \fiforeg_reg[7][2]  (.Q(\fiforeg[7][2] ), 
	.D(n252), 
	.CLK(nclk__L2_N5));
   DFFPOSX1 \fiforeg_reg[6][2]  (.Q(\fiforeg[6][2] ), 
	.D(n253), 
	.CLK(nclk__L2_N5));
   DFFPOSX1 \fiforeg_reg[5][2]  (.Q(\fiforeg[5][2] ), 
	.D(n254), 
	.CLK(nclk__L2_N5));
   DFFPOSX1 \fiforeg_reg[4][2]  (.Q(\fiforeg[4][2] ), 
	.D(n255), 
	.CLK(nclk__L2_N5));
   DFFPOSX1 \fiforeg_reg[3][2]  (.Q(\fiforeg[3][2] ), 
	.D(n256), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[2][2]  (.Q(\fiforeg[2][2] ), 
	.D(n257), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[1][2]  (.Q(\fiforeg[1][2] ), 
	.D(n258), 
	.CLK(nclk__L2_N6));
   DFFPOSX1 \fiforeg_reg[0][2]  (.Q(\fiforeg[0][2] ), 
	.D(n259), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[7][1]  (.Q(\fiforeg[7][1] ), 
	.D(n260), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[6][1]  (.Q(\fiforeg[6][1] ), 
	.D(n261), 
	.CLK(nclk__L2_N5));
   DFFPOSX1 \fiforeg_reg[5][1]  (.Q(\fiforeg[5][1] ), 
	.D(n262), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[4][1]  (.Q(\fiforeg[4][1] ), 
	.D(n263), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[3][1]  (.Q(\fiforeg[3][1] ), 
	.D(n264), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[2][1]  (.Q(\fiforeg[2][1] ), 
	.D(n265), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[1][1]  (.Q(\fiforeg[1][1] ), 
	.D(n266), 
	.CLK(nclk__L2_N6));
   DFFPOSX1 \fiforeg_reg[0][1]  (.Q(\fiforeg[0][1] ), 
	.D(n267), 
	.CLK(nclk__L2_N6));
   DFFPOSX1 \fiforeg_reg[7][0]  (.Q(\fiforeg[7][0] ), 
	.D(n275), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[6][0]  (.Q(\fiforeg[6][0] ), 
	.D(n268), 
	.CLK(nclk__L2_N2));
   DFFPOSX1 \fiforeg_reg[5][0]  (.Q(\fiforeg[5][0] ), 
	.D(n269), 
	.CLK(nclk__L2_N2));
   DFFPOSX1 \fiforeg_reg[4][0]  (.Q(\fiforeg[4][0] ), 
	.D(n270), 
	.CLK(nclk__L2_N2));
   DFFPOSX1 \fiforeg_reg[3][0]  (.Q(\fiforeg[3][0] ), 
	.D(n271), 
	.CLK(nclk__L2_N2));
   DFFPOSX1 \fiforeg_reg[2][0]  (.Q(\fiforeg[2][0] ), 
	.D(n272), 
	.CLK(nclk__L2_N2));
   DFFPOSX1 \fiforeg_reg[1][0]  (.Q(\fiforeg[1][0] ), 
	.D(n273), 
	.CLK(wclk));
   DFFPOSX1 \fiforeg_reg[0][0]  (.Q(\fiforeg[0][0] ), 
	.D(n274), 
	.CLK(wclk));
   MUX2X1 U2 (.Y(n278), 
	.S(n1), 
	.B(wdata[7]), 
	.A(n202));
   INVX2 U3 (.Y(n1), 
	.A(wenable));
   INVX2 U4 (.Y(n65), 
	.A(raddr[0]));
   INVX1 U6 (.Y(n3), 
	.A(raddr[1]));
   MUX2X1 U8 (.Y(n224), 
	.S(FE_OFN9_n196), 
	.B(n182), 
	.A(n187));
   MUX2X1 U9 (.Y(n232), 
	.S(FE_OFN9_n196), 
	.B(n162), 
	.A(n167));
   MUX2X1 U10 (.Y(n240), 
	.S(n196), 
	.B(n142), 
	.A(n147));
   MUX2X1 U11 (.Y(n248), 
	.S(n196), 
	.B(n122), 
	.A(n127));
   MUX2X1 U13 (.Y(n225), 
	.S(FE_OFN7_n195), 
	.B(n182), 
	.A(n186));
   INVX4 U14 (.Y(n203), 
	.A(n41));
   INVX1 U16 (.Y(n4), 
	.A(n64));
   MUX2X1 U19 (.Y(n256), 
	.S(FE_OFN9_n196), 
	.B(n102), 
	.A(n107));
   MUX2X1 U20 (.Y(n264), 
	.S(FE_OFN9_n196), 
	.B(n82), 
	.A(n87));
   MUX2X1 U22 (.Y(n216), 
	.S(FE_OFN9_n196), 
	.B(n278), 
	.A(n288));
   MUX2X1 U23 (.Y(n219), 
	.S(FE_OFN6_n194), 
	.B(n278), 
	.A(n282));
   INVX2 U24 (.Y(n276), 
	.A(FE_OFN6_n194));
   MUX2X1 U26 (.Y(n217), 
	.S(FE_OFN7_n195), 
	.B(n278), 
	.A(n286));
   INVX1 U28 (.Y(n7), 
	.A(waddr[1]));
   MUX2X1 U32 (.Y(n162), 
	.S(n1), 
	.B(wdata[5]), 
	.A(n158));
   MUX2X1 U33 (.Y(n142), 
	.S(n1), 
	.B(wdata[4]), 
	.A(n138));
   MUX2X1 U34 (.Y(n122), 
	.S(n1), 
	.B(wdata[3]), 
	.A(n118));
   MUX2X1 U35 (.Y(n102), 
	.S(n1), 
	.B(wdata[2]), 
	.A(n98));
   MUX2X1 U36 (.Y(n82), 
	.S(n1), 
	.B(wdata[1]), 
	.A(n78));
   MUX2X1 U37 (.Y(n32), 
	.S(n1), 
	.B(wdata[0]), 
	.A(n53));
   MUX2X1 U38 (.Y(n271), 
	.S(FE_OFN9_n196), 
	.B(n32), 
	.A(n67));
   INVX2 U39 (.Y(n46), 
	.A(waddr[2]));
   INVX2 U41 (.Y(n47), 
	.A(waddr[0]));
   AND2X2 U44 (.Y(n15), 
	.B(n65), 
	.A(n17));
   AND2X2 U45 (.Y(n16), 
	.B(raddr[0]), 
	.A(n17));
   AND2X2 U49 (.Y(n17), 
	.B(raddr[2]), 
	.A(raddr[1]));
   INVX4 U63 (.Y(n205), 
	.A(n42));
   INVX4 U64 (.Y(n207), 
	.A(n43));
   INVX4 U65 (.Y(n277), 
	.A(n44));
   INVX2 U70 (.Y(n54), 
	.A(\fiforeg[6][0] ));
   NAND3X1 U71 (.Y(n41), 
	.C(n47), 
	.B(waddr[1]), 
	.A(waddr[2]));
   NAND3X1 U72 (.Y(n42), 
	.C(waddr[0]), 
	.B(waddr[1]), 
	.A(waddr[2]));
   AOI22X1 U73 (.Y(n52), 
	.D(n205), 
	.C(\fiforeg[7][0] ), 
	.B(n203), 
	.A(\fiforeg[6][0] ));
   NAND3X1 U74 (.Y(n43), 
	.C(n7), 
	.B(n47), 
	.A(waddr[2]));
   NAND3X1 U75 (.Y(n44), 
	.C(n7), 
	.B(waddr[0]), 
	.A(waddr[2]));
   AOI22X1 U76 (.Y(n51), 
	.D(n277), 
	.C(\fiforeg[5][0] ), 
	.B(n207), 
	.A(\fiforeg[4][0] ));
   NAND3X1 U77 (.Y(n194), 
	.C(n47), 
	.B(n46), 
	.A(n7));
   INVX2 U78 (.Y(n62), 
	.A(\fiforeg[0][0] ));
   NAND3X1 U79 (.Y(n193), 
	.C(n46), 
	.B(n7), 
	.A(waddr[0]));
   INVX2 U80 (.Y(n63), 
	.A(\fiforeg[1][0] ));
   OAI22X1 U81 (.Y(n49), 
	.D(n63), 
	.C(FE_OFN8_n193), 
	.B(FE_OFN6_n194), 
	.A(n62));
   NAND3X1 U82 (.Y(n196), 
	.C(n46), 
	.B(waddr[0]), 
	.A(waddr[1]));
   INVX2 U83 (.Y(n67), 
	.A(\fiforeg[3][0] ));
   NAND3X1 U84 (.Y(n195), 
	.C(n47), 
	.B(n46), 
	.A(waddr[1]));
   INVX2 U85 (.Y(n66), 
	.A(\fiforeg[2][0] ));
   OAI22X1 U86 (.Y(n48), 
	.D(n66), 
	.C(FE_OFN7_n195), 
	.B(n67), 
	.A(FE_OFN9_n196));
   NOR2X1 U87 (.Y(n50), 
	.B(n48), 
	.A(n49));
   NAND3X1 U88 (.Y(n53), 
	.C(n50), 
	.B(n51), 
	.A(n52));
   MUX2X1 U89 (.Y(n268), 
	.S(n203), 
	.B(n54), 
	.A(n32));
   INVX2 U90 (.Y(n55), 
	.A(\fiforeg[7][0] ));
   MUX2X1 U91 (.Y(n275), 
	.S(n205), 
	.B(n55), 
	.A(n32));
   INVX2 U92 (.Y(n56), 
	.A(\fiforeg[4][0] ));
   MUX2X1 U93 (.Y(n270), 
	.S(n207), 
	.B(n56), 
	.A(n32));
   INVX2 U94 (.Y(n209), 
	.A(FE_OFN7_n195));
   MUX2X1 U95 (.Y(n272), 
	.S(n209), 
	.B(n66), 
	.A(n32));
   INVX2 U97 (.Y(n211), 
	.A(FE_OFN8_n193));
   MUX2X1 U98 (.Y(n273), 
	.S(n211), 
	.B(n63), 
	.A(n32));
   MUX2X1 U99 (.Y(n274), 
	.S(n276), 
	.B(n62), 
	.A(n32));
   INVX2 U100 (.Y(n58), 
	.A(\fiforeg[5][0] ));
   MUX2X1 U101 (.Y(n269), 
	.S(n277), 
	.B(n58), 
	.A(n32));
   NAND3X1 U102 (.Y(n59), 
	.C(n3), 
	.B(n4), 
	.A(raddr[0]));
   INVX2 U103 (.Y(n281), 
	.A(n59));
   NAND3X1 U104 (.Y(n60), 
	.C(n65), 
	.B(n3), 
	.A(n4));
   INVX2 U105 (.Y(n280), 
	.A(n60));
   AOI22X1 U106 (.Y(n72), 
	.D(n280), 
	.C(\fiforeg[4][0] ), 
	.B(n281), 
	.A(\fiforeg[5][0] ));
   AOI22X1 U107 (.Y(n71), 
	.D(n15), 
	.C(\fiforeg[6][0] ), 
	.B(n16), 
	.A(\fiforeg[7][0] ));
   INVX2 U108 (.Y(n64), 
	.A(raddr[2]));
   NAND3X1 U109 (.Y(n285), 
	.C(n64), 
	.B(n3), 
	.A(raddr[0]));
   NAND3X1 U110 (.Y(n283), 
	.C(n64), 
	.B(n3), 
	.A(n65));
   OAI22X1 U111 (.Y(n69), 
	.D(n62), 
	.C(FE_OFN2_n283), 
	.B(n63), 
	.A(FE_OFN4_n285));
   NAND3X1 U112 (.Y(n289), 
	.C(n64), 
	.B(raddr[0]), 
	.A(raddr[1]));
   NAND3X1 U113 (.Y(n287), 
	.C(n64), 
	.B(n65), 
	.A(raddr[1]));
   OAI22X1 U114 (.Y(n68), 
	.D(n66), 
	.C(FE_OFN3_n287), 
	.B(n67), 
	.A(FE_OFN5_n289));
   NOR2X1 U115 (.Y(n70), 
	.B(n68), 
	.A(n69));
   NAND3X1 U116 (.Y(rdata[0]), 
	.C(n70), 
	.B(n71), 
	.A(n72));
   INVX2 U117 (.Y(n79), 
	.A(\fiforeg[6][1] ));
   AOI22X1 U118 (.Y(n77), 
	.D(n205), 
	.C(\fiforeg[7][1] ), 
	.B(n203), 
	.A(\fiforeg[6][1] ));
   AOI22X1 U119 (.Y(n76), 
	.D(n277), 
	.C(\fiforeg[5][1] ), 
	.B(n207), 
	.A(\fiforeg[4][1] ));
   INVX2 U120 (.Y(n84), 
	.A(\fiforeg[0][1] ));
   INVX2 U121 (.Y(n85), 
	.A(\fiforeg[1][1] ));
   OAI22X1 U122 (.Y(n74), 
	.D(n85), 
	.C(FE_OFN8_n193), 
	.B(n84), 
	.A(FE_OFN6_n194));
   INVX2 U123 (.Y(n87), 
	.A(\fiforeg[3][1] ));
   INVX2 U124 (.Y(n86), 
	.A(\fiforeg[2][1] ));
   OAI22X1 U125 (.Y(n73), 
	.D(n86), 
	.C(FE_OFN7_n195), 
	.B(n87), 
	.A(FE_OFN9_n196));
   NOR2X1 U126 (.Y(n75), 
	.B(n73), 
	.A(n74));
   NAND3X1 U127 (.Y(n78), 
	.C(n75), 
	.B(n76), 
	.A(n77));
   MUX2X1 U128 (.Y(n261), 
	.S(n203), 
	.B(n79), 
	.A(n82));
   INVX2 U129 (.Y(n80), 
	.A(\fiforeg[7][1] ));
   MUX2X1 U130 (.Y(n260), 
	.S(n205), 
	.B(n80), 
	.A(n82));
   INVX2 U131 (.Y(n81), 
	.A(\fiforeg[4][1] ));
   MUX2X1 U132 (.Y(n263), 
	.S(n207), 
	.B(n81), 
	.A(n82));
   MUX2X1 U133 (.Y(n265), 
	.S(n209), 
	.B(n86), 
	.A(n82));
   MUX2X1 U134 (.Y(n266), 
	.S(n211), 
	.B(n85), 
	.A(n82));
   MUX2X1 U135 (.Y(n267), 
	.S(n276), 
	.B(n84), 
	.A(n82));
   INVX2 U136 (.Y(n83), 
	.A(\fiforeg[5][1] ));
   MUX2X1 U137 (.Y(n262), 
	.S(n277), 
	.B(n83), 
	.A(n82));
   AOI22X1 U138 (.Y(n92), 
	.D(n280), 
	.C(\fiforeg[4][1] ), 
	.B(n281), 
	.A(\fiforeg[5][1] ));
   AOI22X1 U139 (.Y(n91), 
	.D(n15), 
	.C(\fiforeg[6][1] ), 
	.B(n16), 
	.A(\fiforeg[7][1] ));
   OAI22X1 U140 (.Y(n89), 
	.D(n84), 
	.C(FE_OFN2_n283), 
	.B(n85), 
	.A(FE_OFN4_n285));
   OAI22X1 U141 (.Y(n88), 
	.D(n86), 
	.C(FE_OFN3_n287), 
	.B(n87), 
	.A(FE_OFN5_n289));
   NOR2X1 U142 (.Y(n90), 
	.B(n88), 
	.A(n89));
   NAND3X1 U143 (.Y(rdata[1]), 
	.C(n90), 
	.B(n91), 
	.A(n92));
   INVX2 U144 (.Y(n99), 
	.A(\fiforeg[6][2] ));
   AOI22X1 U145 (.Y(n97), 
	.D(n205), 
	.C(\fiforeg[7][2] ), 
	.B(n203), 
	.A(\fiforeg[6][2] ));
   AOI22X1 U146 (.Y(n96), 
	.D(n277), 
	.C(\fiforeg[5][2] ), 
	.B(n207), 
	.A(\fiforeg[4][2] ));
   INVX2 U147 (.Y(n104), 
	.A(\fiforeg[0][2] ));
   INVX2 U148 (.Y(n105), 
	.A(\fiforeg[1][2] ));
   OAI22X1 U149 (.Y(n94), 
	.D(n105), 
	.C(FE_OFN8_n193), 
	.B(n104), 
	.A(FE_OFN6_n194));
   INVX2 U150 (.Y(n107), 
	.A(\fiforeg[3][2] ));
   INVX2 U151 (.Y(n106), 
	.A(\fiforeg[2][2] ));
   OAI22X1 U152 (.Y(n93), 
	.D(n106), 
	.C(FE_OFN7_n195), 
	.B(n107), 
	.A(FE_OFN9_n196));
   NOR2X1 U153 (.Y(n95), 
	.B(n93), 
	.A(n94));
   NAND3X1 U154 (.Y(n98), 
	.C(n95), 
	.B(n96), 
	.A(n97));
   MUX2X1 U155 (.Y(n253), 
	.S(n203), 
	.B(n99), 
	.A(n102));
   INVX2 U156 (.Y(n100), 
	.A(\fiforeg[7][2] ));
   MUX2X1 U157 (.Y(n252), 
	.S(n205), 
	.B(n100), 
	.A(n102));
   INVX2 U158 (.Y(n101), 
	.A(\fiforeg[4][2] ));
   MUX2X1 U159 (.Y(n255), 
	.S(n207), 
	.B(n101), 
	.A(n102));
   MUX2X1 U160 (.Y(n257), 
	.S(n209), 
	.B(n106), 
	.A(n102));
   MUX2X1 U161 (.Y(n258), 
	.S(n211), 
	.B(n105), 
	.A(n102));
   MUX2X1 U162 (.Y(n259), 
	.S(n276), 
	.B(n104), 
	.A(n102));
   INVX2 U163 (.Y(n103), 
	.A(\fiforeg[5][2] ));
   MUX2X1 U164 (.Y(n254), 
	.S(n277), 
	.B(n103), 
	.A(n102));
   AOI22X1 U165 (.Y(n112), 
	.D(n280), 
	.C(\fiforeg[4][2] ), 
	.B(n281), 
	.A(\fiforeg[5][2] ));
   AOI22X1 U166 (.Y(n111), 
	.D(n15), 
	.C(\fiforeg[6][2] ), 
	.B(n16), 
	.A(\fiforeg[7][2] ));
   OAI22X1 U167 (.Y(n109), 
	.D(n104), 
	.C(FE_OFN2_n283), 
	.B(n105), 
	.A(FE_OFN4_n285));
   OAI22X1 U168 (.Y(n108), 
	.D(n106), 
	.C(FE_OFN3_n287), 
	.B(n107), 
	.A(FE_OFN5_n289));
   NOR2X1 U169 (.Y(n110), 
	.B(n108), 
	.A(n109));
   NAND3X1 U170 (.Y(rdata[2]), 
	.C(n110), 
	.B(n111), 
	.A(n112));
   INVX2 U171 (.Y(n119), 
	.A(\fiforeg[6][3] ));
   AOI22X1 U172 (.Y(n117), 
	.D(n205), 
	.C(\fiforeg[7][3] ), 
	.B(n203), 
	.A(\fiforeg[6][3] ));
   AOI22X1 U173 (.Y(n116), 
	.D(n277), 
	.C(\fiforeg[5][3] ), 
	.B(n207), 
	.A(\fiforeg[4][3] ));
   INVX2 U174 (.Y(n124), 
	.A(\fiforeg[0][3] ));
   INVX2 U175 (.Y(n125), 
	.A(\fiforeg[1][3] ));
   OAI22X1 U176 (.Y(n114), 
	.D(n125), 
	.C(FE_OFN8_n193), 
	.B(n124), 
	.A(FE_OFN6_n194));
   INVX2 U177 (.Y(n127), 
	.A(\fiforeg[3][3] ));
   INVX2 U178 (.Y(n126), 
	.A(\fiforeg[2][3] ));
   OAI22X1 U179 (.Y(n113), 
	.D(n126), 
	.C(FE_OFN7_n195), 
	.B(n127), 
	.A(n196));
   NOR2X1 U180 (.Y(n115), 
	.B(n113), 
	.A(n114));
   NAND3X1 U181 (.Y(n118), 
	.C(n115), 
	.B(n116), 
	.A(n117));
   MUX2X1 U182 (.Y(n245), 
	.S(n203), 
	.B(n119), 
	.A(n122));
   INVX2 U183 (.Y(n120), 
	.A(\fiforeg[7][3] ));
   MUX2X1 U184 (.Y(n244), 
	.S(n205), 
	.B(n120), 
	.A(n122));
   INVX2 U185 (.Y(n121), 
	.A(\fiforeg[4][3] ));
   MUX2X1 U186 (.Y(n247), 
	.S(n207), 
	.B(n121), 
	.A(n122));
   MUX2X1 U187 (.Y(n249), 
	.S(n209), 
	.B(n126), 
	.A(n122));
   MUX2X1 U188 (.Y(n250), 
	.S(n211), 
	.B(n125), 
	.A(n122));
   MUX2X1 U189 (.Y(n251), 
	.S(n276), 
	.B(n124), 
	.A(n122));
   INVX2 U190 (.Y(n123), 
	.A(\fiforeg[5][3] ));
   MUX2X1 U191 (.Y(n246), 
	.S(n277), 
	.B(n123), 
	.A(n122));
   AOI22X1 U192 (.Y(n132), 
	.D(n280), 
	.C(\fiforeg[4][3] ), 
	.B(n281), 
	.A(\fiforeg[5][3] ));
   AOI22X1 U193 (.Y(n131), 
	.D(n15), 
	.C(\fiforeg[6][3] ), 
	.B(n16), 
	.A(\fiforeg[7][3] ));
   OAI22X1 U194 (.Y(n129), 
	.D(n124), 
	.C(FE_OFN2_n283), 
	.B(n125), 
	.A(FE_OFN4_n285));
   OAI22X1 U195 (.Y(n128), 
	.D(n126), 
	.C(FE_OFN3_n287), 
	.B(n127), 
	.A(FE_OFN5_n289));
   NOR2X1 U196 (.Y(n130), 
	.B(n128), 
	.A(n129));
   NAND3X1 U197 (.Y(rdata[3]), 
	.C(n130), 
	.B(n131), 
	.A(n132));
   INVX2 U198 (.Y(n139), 
	.A(\fiforeg[6][4] ));
   AOI22X1 U199 (.Y(n137), 
	.D(n205), 
	.C(\fiforeg[7][4] ), 
	.B(n203), 
	.A(\fiforeg[6][4] ));
   AOI22X1 U200 (.Y(n136), 
	.D(n277), 
	.C(\fiforeg[5][4] ), 
	.B(n207), 
	.A(\fiforeg[4][4] ));
   INVX2 U201 (.Y(n144), 
	.A(\fiforeg[0][4] ));
   INVX2 U202 (.Y(n145), 
	.A(\fiforeg[1][4] ));
   OAI22X1 U203 (.Y(n134), 
	.D(n145), 
	.C(FE_OFN8_n193), 
	.B(n144), 
	.A(FE_OFN6_n194));
   INVX2 U204 (.Y(n147), 
	.A(\fiforeg[3][4] ));
   INVX2 U205 (.Y(n146), 
	.A(\fiforeg[2][4] ));
   OAI22X1 U206 (.Y(n133), 
	.D(n146), 
	.C(FE_OFN7_n195), 
	.B(n147), 
	.A(n196));
   NOR2X1 U207 (.Y(n135), 
	.B(n133), 
	.A(n134));
   NAND3X1 U208 (.Y(n138), 
	.C(n135), 
	.B(n136), 
	.A(n137));
   MUX2X1 U209 (.Y(n237), 
	.S(n203), 
	.B(n139), 
	.A(n142));
   INVX2 U210 (.Y(n140), 
	.A(\fiforeg[7][4] ));
   MUX2X1 U211 (.Y(n236), 
	.S(n205), 
	.B(n140), 
	.A(n142));
   INVX2 U212 (.Y(n141), 
	.A(\fiforeg[4][4] ));
   MUX2X1 U213 (.Y(n239), 
	.S(n207), 
	.B(n141), 
	.A(n142));
   MUX2X1 U214 (.Y(n241), 
	.S(n209), 
	.B(n146), 
	.A(n142));
   MUX2X1 U215 (.Y(n242), 
	.S(n211), 
	.B(n145), 
	.A(n142));
   MUX2X1 U216 (.Y(n243), 
	.S(n276), 
	.B(n144), 
	.A(n142));
   INVX2 U217 (.Y(n143), 
	.A(\fiforeg[5][4] ));
   MUX2X1 U218 (.Y(n238), 
	.S(n277), 
	.B(n143), 
	.A(n142));
   AOI22X1 U219 (.Y(n152), 
	.D(n280), 
	.C(\fiforeg[4][4] ), 
	.B(n281), 
	.A(\fiforeg[5][4] ));
   AOI22X1 U220 (.Y(n151), 
	.D(n15), 
	.C(\fiforeg[6][4] ), 
	.B(n16), 
	.A(\fiforeg[7][4] ));
   OAI22X1 U221 (.Y(n149), 
	.D(n144), 
	.C(FE_OFN2_n283), 
	.B(n145), 
	.A(FE_OFN4_n285));
   OAI22X1 U222 (.Y(n148), 
	.D(n146), 
	.C(FE_OFN3_n287), 
	.B(n147), 
	.A(FE_OFN5_n289));
   NOR2X1 U223 (.Y(n150), 
	.B(n148), 
	.A(n149));
   NAND3X1 U224 (.Y(rdata[4]), 
	.C(n150), 
	.B(n151), 
	.A(n152));
   INVX2 U225 (.Y(n159), 
	.A(\fiforeg[6][5] ));
   AOI22X1 U226 (.Y(n157), 
	.D(n205), 
	.C(\fiforeg[7][5] ), 
	.B(n203), 
	.A(\fiforeg[6][5] ));
   AOI22X1 U227 (.Y(n156), 
	.D(n277), 
	.C(\fiforeg[5][5] ), 
	.B(n207), 
	.A(\fiforeg[4][5] ));
   INVX2 U228 (.Y(n164), 
	.A(\fiforeg[0][5] ));
   INVX2 U229 (.Y(n165), 
	.A(\fiforeg[1][5] ));
   OAI22X1 U230 (.Y(n154), 
	.D(n165), 
	.C(FE_OFN8_n193), 
	.B(n164), 
	.A(FE_OFN6_n194));
   INVX2 U231 (.Y(n167), 
	.A(\fiforeg[3][5] ));
   INVX2 U232 (.Y(n166), 
	.A(\fiforeg[2][5] ));
   OAI22X1 U233 (.Y(n153), 
	.D(n166), 
	.C(FE_OFN7_n195), 
	.B(n167), 
	.A(FE_OFN9_n196));
   NOR2X1 U234 (.Y(n155), 
	.B(n153), 
	.A(n154));
   NAND3X1 U235 (.Y(n158), 
	.C(n155), 
	.B(n156), 
	.A(n157));
   MUX2X1 U236 (.Y(n229), 
	.S(n203), 
	.B(n159), 
	.A(n162));
   INVX2 U237 (.Y(n160), 
	.A(\fiforeg[7][5] ));
   MUX2X1 U238 (.Y(n228), 
	.S(n205), 
	.B(n160), 
	.A(n162));
   INVX2 U239 (.Y(n161), 
	.A(\fiforeg[4][5] ));
   MUX2X1 U240 (.Y(n231), 
	.S(n207), 
	.B(n161), 
	.A(n162));
   MUX2X1 U241 (.Y(n233), 
	.S(n209), 
	.B(n166), 
	.A(n162));
   MUX2X1 U242 (.Y(n234), 
	.S(n211), 
	.B(n165), 
	.A(n162));
   MUX2X1 U243 (.Y(n235), 
	.S(n276), 
	.B(n164), 
	.A(n162));
   INVX2 U244 (.Y(n163), 
	.A(\fiforeg[5][5] ));
   MUX2X1 U245 (.Y(n230), 
	.S(n277), 
	.B(n163), 
	.A(n162));
   AOI22X1 U246 (.Y(n172), 
	.D(n280), 
	.C(\fiforeg[4][5] ), 
	.B(n281), 
	.A(\fiforeg[5][5] ));
   AOI22X1 U247 (.Y(n171), 
	.D(n15), 
	.C(\fiforeg[6][5] ), 
	.B(n16), 
	.A(\fiforeg[7][5] ));
   OAI22X1 U248 (.Y(n169), 
	.D(n164), 
	.C(FE_OFN2_n283), 
	.B(n165), 
	.A(FE_OFN4_n285));
   OAI22X1 U249 (.Y(n168), 
	.D(n166), 
	.C(FE_OFN3_n287), 
	.B(n167), 
	.A(FE_OFN5_n289));
   NOR2X1 U250 (.Y(n170), 
	.B(n168), 
	.A(n169));
   NAND3X1 U251 (.Y(rdata[5]), 
	.C(n170), 
	.B(n171), 
	.A(n172));
   INVX2 U252 (.Y(n179), 
	.A(\fiforeg[6][6] ));
   AOI22X1 U253 (.Y(n177), 
	.D(n205), 
	.C(\fiforeg[7][6] ), 
	.B(n203), 
	.A(\fiforeg[6][6] ));
   AOI22X1 U254 (.Y(n176), 
	.D(n277), 
	.C(\fiforeg[5][6] ), 
	.B(n207), 
	.A(\fiforeg[4][6] ));
   INVX2 U255 (.Y(n184), 
	.A(\fiforeg[0][6] ));
   INVX2 U256 (.Y(n185), 
	.A(\fiforeg[1][6] ));
   OAI22X1 U257 (.Y(n174), 
	.D(n185), 
	.C(FE_OFN8_n193), 
	.B(FE_OFN6_n194), 
	.A(n184));
   INVX2 U258 (.Y(n187), 
	.A(\fiforeg[3][6] ));
   INVX2 U259 (.Y(n186), 
	.A(\fiforeg[2][6] ));
   OAI22X1 U260 (.Y(n173), 
	.D(n186), 
	.C(FE_OFN7_n195), 
	.B(n187), 
	.A(FE_OFN9_n196));
   NOR2X1 U261 (.Y(n175), 
	.B(n173), 
	.A(n174));
   NAND3X1 U262 (.Y(n178), 
	.C(n175), 
	.B(n176), 
	.A(n177));
   MUX2X1 U263 (.Y(n182), 
	.S(wenable), 
	.B(n178), 
	.A(wdata[6]));
   MUX2X1 U264 (.Y(n221), 
	.S(n203), 
	.B(n179), 
	.A(n182));
   INVX2 U265 (.Y(n180), 
	.A(\fiforeg[7][6] ));
   MUX2X1 U266 (.Y(n220), 
	.S(n205), 
	.B(n180), 
	.A(n182));
   INVX2 U267 (.Y(n181), 
	.A(\fiforeg[4][6] ));
   MUX2X1 U268 (.Y(n223), 
	.S(n207), 
	.B(n181), 
	.A(n182));
   MUX2X1 U269 (.Y(n226), 
	.S(n211), 
	.B(n185), 
	.A(n182));
   MUX2X1 U270 (.Y(n227), 
	.S(n276), 
	.B(n184), 
	.A(n182));
   INVX2 U271 (.Y(n183), 
	.A(\fiforeg[5][6] ));
   MUX2X1 U272 (.Y(n222), 
	.S(n277), 
	.B(n183), 
	.A(n182));
   AOI22X1 U273 (.Y(n192), 
	.D(n280), 
	.C(\fiforeg[4][6] ), 
	.B(n281), 
	.A(\fiforeg[5][6] ));
   AOI22X1 U274 (.Y(n191), 
	.D(n15), 
	.C(\fiforeg[6][6] ), 
	.B(n16), 
	.A(\fiforeg[7][6] ));
   OAI22X1 U275 (.Y(n189), 
	.D(n184), 
	.C(FE_OFN2_n283), 
	.B(n185), 
	.A(FE_OFN4_n285));
   OAI22X1 U276 (.Y(n188), 
	.D(n186), 
	.C(FE_OFN3_n287), 
	.B(n187), 
	.A(FE_OFN5_n289));
   NOR2X1 U277 (.Y(n190), 
	.B(n188), 
	.A(n189));
   NAND3X1 U278 (.Y(rdata[6]), 
	.C(n190), 
	.B(n191), 
	.A(n192));
   INVX2 U279 (.Y(n204), 
	.A(\fiforeg[6][7] ));
   AOI22X1 U280 (.Y(n201), 
	.D(\fiforeg[7][7] ), 
	.C(n205), 
	.B(\fiforeg[6][7] ), 
	.A(n203));
   AOI22X1 U281 (.Y(n200), 
	.D(\fiforeg[5][7] ), 
	.C(n277), 
	.B(\fiforeg[4][7] ), 
	.A(n207));
   INVX2 U282 (.Y(n282), 
	.A(\fiforeg[0][7] ));
   INVX2 U283 (.Y(n284), 
	.A(\fiforeg[1][7] ));
   OAI22X1 U284 (.Y(n198), 
	.D(FE_OFN8_n193), 
	.C(n284), 
	.B(n282), 
	.A(FE_OFN6_n194));
   INVX2 U285 (.Y(n288), 
	.A(\fiforeg[3][7] ));
   INVX2 U286 (.Y(n286), 
	.A(\fiforeg[2][7] ));
   OAI22X1 U287 (.Y(n197), 
	.D(FE_OFN7_n195), 
	.C(n286), 
	.B(FE_OFN9_n196), 
	.A(n288));
   NOR2X1 U288 (.Y(n199), 
	.B(n197), 
	.A(n198));
   NAND3X1 U289 (.Y(n202), 
	.C(n199), 
	.B(n200), 
	.A(n201));
   MUX2X1 U290 (.Y(n213), 
	.S(n203), 
	.B(n204), 
	.A(n278));
   INVX2 U291 (.Y(n206), 
	.A(\fiforeg[7][7] ));
   MUX2X1 U292 (.Y(n212), 
	.S(n205), 
	.B(n206), 
	.A(n278));
   INVX2 U293 (.Y(n208), 
	.A(\fiforeg[4][7] ));
   MUX2X1 U294 (.Y(n215), 
	.S(n207), 
	.B(n208), 
	.A(n278));
   MUX2X1 U295 (.Y(n218), 
	.S(n211), 
	.B(n284), 
	.A(n278));
   INVX2 U296 (.Y(n279), 
	.A(\fiforeg[5][7] ));
   MUX2X1 U297 (.Y(n214), 
	.S(n277), 
	.B(n279), 
	.A(n278));
   AOI22X1 U298 (.Y(n294), 
	.D(n280), 
	.C(\fiforeg[4][7] ), 
	.B(n281), 
	.A(\fiforeg[5][7] ));
   AOI22X1 U299 (.Y(n293), 
	.D(n15), 
	.C(\fiforeg[6][7] ), 
	.B(n16), 
	.A(\fiforeg[7][7] ));
   OAI22X1 U300 (.Y(n291), 
	.D(n282), 
	.C(FE_OFN2_n283), 
	.B(n284), 
	.A(FE_OFN4_n285));
   OAI22X1 U301 (.Y(n290), 
	.D(n286), 
	.C(FE_OFN3_n287), 
	.B(n288), 
	.A(FE_OFN5_n289));
   NOR2X1 U302 (.Y(n292), 
	.B(n290), 
	.A(n291));
   NAND3X1 U303 (.Y(rdata[7]), 
	.C(n292), 
	.B(n293), 
	.A(n294));
endmodule

module write_ptr (
	wclk, 
	rst_n, 
	wenable, 
	wptr, 
	wptr_nxt, 
	nclk__L2_N7);
   input wclk;
   input rst_n;
   input wenable;
   output [3:0] wptr;
   output [3:0] wptr_nxt;
   input nclk__L2_N7;

   // Internal wires
   wire n9;
   wire n12;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire [2:0] binary_nxt;
   wire [3:0] binary_r;

   DFFSR \binary_r_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[0]), 
	.D(n12), 
	.CLK(wclk));
   DFFSR \binary_r_reg[1]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[1]), 
	.D(binary_nxt[1]), 
	.CLK(nclk__L2_N7));
   DFFSR \binary_r_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[2]), 
	.D(binary_nxt[2]), 
	.CLK(wclk));
   DFFSR \binary_r_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[3]), 
	.D(wptr_nxt[3]), 
	.CLK(wclk));
   DFFSR \gray_r_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wptr[3]), 
	.D(wptr_nxt[3]), 
	.CLK(wclk));
   DFFSR \gray_r_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wptr[2]), 
	.D(wptr_nxt[2]), 
	.CLK(wclk));
   DFFSR \gray_r_reg[1]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wptr[1]), 
	.D(wptr_nxt[1]), 
	.CLK(wclk));
   DFFSR \gray_r_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wptr[0]), 
	.D(wptr_nxt[0]), 
	.CLK(wclk));
   INVX1 U11 (.Y(n9), 
	.A(n18));
   INVX1 U12 (.Y(n23), 
	.A(n22));
   XOR2X1 U13 (.Y(wptr_nxt[1]), 
	.B(n20), 
	.A(n21));
   INVX1 U14 (.Y(binary_nxt[1]), 
	.A(n20));
   INVX1 U15 (.Y(n18), 
	.A(binary_r[0]));
   INVX1 U16 (.Y(n17), 
	.A(binary_r[1]));
   INVX2 U17 (.Y(n14), 
	.A(binary_r[3]));
   XNOR2X1 U18 (.Y(wptr_nxt[0]), 
	.B(n12), 
	.A(n20));
   XNOR2X1 U19 (.Y(n12), 
	.B(wenable), 
	.A(n18));
   XNOR2X1 U20 (.Y(n25), 
	.B(n14), 
	.A(n24));
   INVX1 U22 (.Y(n15), 
	.A(wenable));
   INVX2 U23 (.Y(wptr_nxt[3]), 
	.A(n25));
   NOR2X1 U24 (.Y(n16), 
	.B(n15), 
	.A(n17));
   AOI22X1 U25 (.Y(n19), 
	.D(binary_r[0]), 
	.C(n16), 
	.B(n17), 
	.A(n18));
   OAI21X1 U26 (.Y(n20), 
	.C(n19), 
	.B(wenable), 
	.A(binary_r[1]));
   NAND3X1 U27 (.Y(n22), 
	.C(binary_r[1]), 
	.B(binary_r[0]), 
	.A(wenable));
   XOR2X1 U28 (.Y(n21), 
	.B(binary_r[2]), 
	.A(n22));
   INVX2 U29 (.Y(binary_nxt[2]), 
	.A(n21));
   NAND2X1 U30 (.Y(n24), 
	.B(n23), 
	.A(binary_r[2]));
   NAND2X1 U31 (.Y(n32), 
	.B(n14), 
	.A(binary_r[1]));
   NAND2X1 U32 (.Y(n31), 
	.B(n9), 
	.A(wenable));
   INVX2 U33 (.Y(n26), 
	.A(binary_r[2]));
   NAND3X1 U34 (.Y(n29), 
	.C(n26), 
	.B(binary_r[0]), 
	.A(binary_r[1]));
   XOR2X1 U35 (.Y(n28), 
	.B(binary_r[2]), 
	.A(binary_r[3]));
   NOR2X1 U36 (.Y(n27), 
	.B(n14), 
	.A(wenable));
   AOI22X1 U37 (.Y(n30), 
	.D(n26), 
	.C(n27), 
	.B(n28), 
	.A(n29));
   OAI21X1 U38 (.Y(wptr_nxt[2]), 
	.C(n30), 
	.B(n31), 
	.A(n32));
endmodule

module write_fifo_ctrl (
	wclk, 
	rst_n, 
	wenable, 
	rptr, 
	wenable_fifo, 
	wptr, 
	waddr, 
	full_flag, 
	nclk__L2_N3, 
	nclk__L2_N7);
   input wclk;
   input rst_n;
   input wenable;
   input [3:0] rptr;
   output wenable_fifo;
   output [3:0] wptr;
   output [2:0] waddr;
   output full_flag;
   input nclk__L2_N3;
   input nclk__L2_N7;

   // Internal wires
   wire n25;
   wire n26;
   wire \gray_wptr[2] ;
   wire N5;
   wire n2;
   wire n4;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire [3:0] wptr_nxt;
   wire [3:0] wrptr_r2;
   wire [3:0] wrptr_r1;

   write_ptr WPU1 (.wclk(nclk__L2_N3), 
	.rst_n(rst_n), 
	.wenable(n25), 
	.wptr(wptr), 
	.wptr_nxt(wptr_nxt), 
	.nclk__L2_N7(nclk__L2_N7));
   DFFSR \wrptr_r1_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r1[3]), 
	.D(rptr[3]), 
	.CLK(nclk__L2_N3));
   DFFSR \wrptr_r1_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r1[2]), 
	.D(rptr[2]), 
	.CLK(nclk__L2_N3));
   DFFSR \wrptr_r1_reg[1]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r1[1]), 
	.D(rptr[1]), 
	.CLK(nclk__L2_N3));
   DFFSR \wrptr_r1_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r1[0]), 
	.D(rptr[0]), 
	.CLK(nclk__L2_N3));
   DFFSR \wrptr_r2_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r2[3]), 
	.D(wrptr_r1[3]), 
	.CLK(nclk__L2_N3));
   DFFSR \wrptr_r2_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r2[2]), 
	.D(wrptr_r1[2]), 
	.CLK(nclk__L2_N3));
   DFFSR \wrptr_r2_reg[1]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r2[1]), 
	.D(wrptr_r1[1]), 
	.CLK(nclk__L2_N3));
   DFFSR \wrptr_r2_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(wrptr_r2[0]), 
	.D(wrptr_r1[0]), 
	.CLK(nclk__L2_N3));
   DFFSR full_flag_r_reg (.S(1'b1), 
	.R(rst_n), 
	.Q(full_flag), 
	.D(N5), 
	.CLK(wclk));
   DFFSR \waddr_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(waddr[2]), 
	.D(\gray_wptr[2] ), 
	.CLK(nclk__L2_N3));
   DFFSR \waddr_reg[1]  (.S(1'b1), 
	.R(rst_n), 
	.Q(waddr[1]), 
	.D(wptr_nxt[1]), 
	.CLK(nclk__L2_N3));
   DFFSR \waddr_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(n26), 
	.D(wptr_nxt[0]), 
	.CLK(nclk__L2_N3));
   AND2X2 U15 (.Y(wenable_fifo), 
	.B(n23), 
	.A(wenable));
   INVX2 U16 (.Y(n23), 
	.A(full_flag));
   INVX2 U17 (.Y(n25), 
	.A(n24));
   INVX2 U18 (.Y(n2), 
	.A(n26));
   INVX2 U19 (.Y(waddr[0]), 
	.A(n2));
   XOR2X1 U20 (.Y(n4), 
	.B(wrptr_r2[2]), 
	.A(wrptr_r2[3]));
   XOR2X1 U21 (.Y(n17), 
	.B(n4), 
	.A(wptr_nxt[3]));
   XOR2X1 U22 (.Y(n22), 
	.B(wrptr_r2[1]), 
	.A(wptr_nxt[1]));
   XOR2X1 U23 (.Y(n20), 
	.B(wrptr_r2[3]), 
	.A(wptr_nxt[3]));
   XNOR2X1 U24 (.Y(n19), 
	.B(wptr_nxt[2]), 
	.A(n17));
   XNOR2X1 U25 (.Y(n18), 
	.B(wrptr_r2[0]), 
	.A(wptr_nxt[0]));
   NAND3X1 U26 (.Y(n21), 
	.C(n19), 
	.B(n18), 
	.A(n20));
   NOR2X1 U27 (.Y(N5), 
	.B(n21), 
	.A(n22));
   NAND2X1 U28 (.Y(n24), 
	.B(n23), 
	.A(wenable));
   XOR2X1 U29 (.Y(\gray_wptr[2] ), 
	.B(wptr_nxt[2]), 
	.A(wptr_nxt[3]));
endmodule

module read_ptr (
	rclk, 
	rst_n, 
	renable, 
	rptr, 
	rptr_nxt, 
	nclk__L2_N3);
   input rclk;
   input rst_n;
   input renable;
   output [3:0] rptr;
   output [3:0] rptr_nxt;
   input nclk__L2_N3;

   // Internal wires
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n19;
   wire n20;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n56;
   wire n57;
   wire n58;
   wire [2:0] binary_nxt;
   wire [3:0] binary_r;

   DFFSR \binary_r_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[0]), 
	.D(binary_nxt[0]), 
	.CLK(rclk));
   DFFSR \binary_r_reg[1]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[1]), 
	.D(binary_nxt[1]), 
	.CLK(rclk));
   DFFSR \binary_r_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[2]), 
	.D(binary_nxt[2]), 
	.CLK(rclk));
   DFFSR \binary_r_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(binary_r[3]), 
	.D(rptr_nxt[3]), 
	.CLK(rclk));
   DFFSR \gray_r_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rptr[3]), 
	.D(rptr_nxt[3]), 
	.CLK(nclk__L2_N3));
   DFFSR \gray_r_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rptr[2]), 
	.D(rptr_nxt[2]), 
	.CLK(nclk__L2_N3));
   DFFSR \gray_r_reg[1]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rptr[1]), 
	.D(rptr_nxt[1]), 
	.CLK(nclk__L2_N3));
   DFFSR \gray_r_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rptr[0]), 
	.D(rptr_nxt[0]), 
	.CLK(nclk__L2_N3));
   INVX2 U15 (.Y(n32), 
	.A(n14));
   INVX2 U16 (.Y(rptr_nxt[3]), 
	.A(n16));
   INVX2 U17 (.Y(n26), 
	.A(binary_r[2]));
   NAND2X1 U18 (.Y(n13), 
	.B(n27), 
	.A(n19));
   OAI21X1 U19 (.Y(n16), 
	.C(n15), 
	.B(n13), 
	.A(n14));
   INVX1 U20 (.Y(n14), 
	.A(renable));
   INVX2 U21 (.Y(n15), 
	.A(n51));
   AOI21X1 U22 (.Y(n51), 
	.C(binary_r[3]), 
	.B(renable), 
	.A(n17));
   INVX1 U23 (.Y(n17), 
	.A(n50));
   AND2X2 U25 (.Y(n19), 
	.B(binary_r[0]), 
	.A(binary_r[1]));
   INVX2 U26 (.Y(n54), 
	.A(n19));
   INVX1 U27 (.Y(n20), 
	.A(renable));
   INVX1 U31 (.Y(n40), 
	.A(binary_r[1]));
   NOR2X1 U34 (.Y(n27), 
	.B(n26), 
	.A(n52));
   INVX1 U35 (.Y(n28), 
	.A(n54));
   INVX1 U36 (.Y(n29), 
	.A(n20));
   AND2X1 U37 (.Y(n30), 
	.B(binary_r[3]), 
	.A(n26));
   NAND2X1 U39 (.Y(n56), 
	.B(n30), 
	.A(n14));
   XOR2X1 U40 (.Y(binary_nxt[0]), 
	.B(binary_r[0]), 
	.A(n29));
   INVX2 U41 (.Y(n34), 
	.A(binary_r[0]));
   NAND2X1 U42 (.Y(n41), 
	.B(n40), 
	.A(n34));
   OAI21X1 U43 (.Y(n33), 
	.C(n41), 
	.B(n20), 
	.A(n54));
   AOI21X1 U44 (.Y(binary_nxt[1]), 
	.C(n33), 
	.B(n40), 
	.A(n20));
   AOI22X1 U45 (.Y(n37), 
	.D(binary_r[0]), 
	.C(binary_r[1]), 
	.B(n40), 
	.A(n34));
   NAND2X1 U46 (.Y(n45), 
	.B(n54), 
	.A(n41));
   OAI21X1 U47 (.Y(n35), 
	.C(n54), 
	.B(n45), 
	.A(binary_r[0]));
   NAND2X1 U48 (.Y(n36), 
	.B(renable), 
	.A(n35));
   OAI21X1 U49 (.Y(n38), 
	.C(n36), 
	.B(n37), 
	.A(n32));
   INVX2 U50 (.Y(rptr_nxt[0]), 
	.A(n38));
   NAND2X1 U51 (.Y(n50), 
	.B(n19), 
	.A(binary_r[2]));
   NAND2X1 U52 (.Y(n44), 
	.B(n26), 
	.A(n54));
   OAI21X1 U53 (.Y(n39), 
	.C(n44), 
	.B(n50), 
	.A(n20));
   AOI21X1 U54 (.Y(binary_nxt[2]), 
	.C(n39), 
	.B(n26), 
	.A(n20));
   OAI22X1 U55 (.Y(n43), 
	.D(binary_r[1]), 
	.C(binary_r[2]), 
	.B(n26), 
	.A(n40));
   NOR2X1 U56 (.Y(n42), 
	.B(n44), 
	.A(n41));
   AOI21X1 U57 (.Y(n49), 
	.C(n42), 
	.B(n43), 
	.A(n14));
   INVX2 U58 (.Y(n46), 
	.A(n44));
   OAI21X1 U59 (.Y(n47), 
	.C(n50), 
	.B(n45), 
	.A(n46));
   NAND2X1 U60 (.Y(n48), 
	.B(n47), 
	.A(n32));
   AND2X2 U61 (.Y(rptr_nxt[1]), 
	.B(n48), 
	.A(n49));
   INVX2 U62 (.Y(n52), 
	.A(binary_r[3]));
   NAND3X1 U63 (.Y(n58), 
	.C(n32), 
	.B(n52), 
	.A(n28));
   XOR2X1 U64 (.Y(n53), 
	.B(binary_r[2]), 
	.A(binary_r[3]));
   OAI21X1 U65 (.Y(n57), 
	.C(n53), 
	.B(n54), 
	.A(binary_r[2]));
   NAND3X1 U66 (.Y(rptr_nxt[2]), 
	.C(n58), 
	.B(n56), 
	.A(n57));
endmodule

module read_fifo_ctrl (
	rclk, 
	rst_n, 
	renable, 
	wptr, 
	rptr, 
	raddr, 
	empty_flag, 
	nclk__L2_N3);
   input rclk;
   input rst_n;
   input renable;
   input [3:0] wptr;
   output [3:0] rptr;
   output [2:0] raddr;
   output empty_flag;
   input nclk__L2_N3;

   // Internal wires
   wire n29;
   wire renable_p2;
   wire \gray_rptr[2] ;
   wire N3;
   wire n1;
   wire n4;
   wire n17;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire [3:0] rptr_nxt;
   wire [3:0] rwptr_r2;
   wire [3:0] rwptr_r1;

   read_ptr RPU1 (.rclk(rclk), 
	.rst_n(rst_n), 
	.renable(renable_p2), 
	.rptr(rptr), 
	.rptr_nxt(rptr_nxt), 
	.nclk__L2_N3(nclk__L2_N3));
   DFFSR \rwptr_r1_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rwptr_r1[3]), 
	.D(wptr[3]), 
	.CLK(nclk__L2_N3));
   DFFSR \rwptr_r1_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rwptr_r1[2]), 
	.D(wptr[2]), 
	.CLK(nclk__L2_N3));
   DFFSR \rwptr_r1_reg[1]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rwptr_r1[1]), 
	.D(wptr[1]), 
	.CLK(nclk__L2_N3));
   DFFSR \rwptr_r1_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rwptr_r1[0]), 
	.D(wptr[0]), 
	.CLK(nclk__L2_N3));
   DFFSR \rwptr_r2_reg[3]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rwptr_r2[3]), 
	.D(rwptr_r1[3]), 
	.CLK(nclk__L2_N3));
   DFFSR \rwptr_r2_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rwptr_r2[2]), 
	.D(rwptr_r1[2]), 
	.CLK(nclk__L2_N3));
   DFFSR \rwptr_r2_reg[1]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rwptr_r2[1]), 
	.D(rwptr_r1[1]), 
	.CLK(nclk__L2_N3));
   DFFSR \rwptr_r2_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(rwptr_r2[0]), 
	.D(rwptr_r1[0]), 
	.CLK(nclk__L2_N3));
   DFFSR empty_flag_r_reg (.S(rst_n), 
	.R(1'b1), 
	.Q(empty_flag), 
	.D(N3), 
	.CLK(rclk));
   DFFSR \raddr_reg[2]  (.S(1'b1), 
	.R(rst_n), 
	.Q(raddr[2]), 
	.D(\gray_rptr[2] ), 
	.CLK(rclk));
   DFFSR \raddr_reg[1]  (.S(1'b1), 
	.R(rst_n), 
	.Q(raddr[1]), 
	.D(rptr_nxt[1]), 
	.CLK(rclk));
   DFFSR \raddr_reg[0]  (.S(1'b1), 
	.R(rst_n), 
	.Q(n29), 
	.D(rptr_nxt[0]), 
	.CLK(rclk));
   XOR2X1 U15 (.Y(n23), 
	.B(n1), 
	.A(rptr_nxt[2]));
   INVX2 U16 (.Y(n1), 
	.A(rwptr_r2[2]));
   INVX2 U19 (.Y(renable_p2), 
	.A(n21));
   XNOR2X1 U20 (.Y(\gray_rptr[2] ), 
	.B(rptr_nxt[3]), 
	.A(n4));
   INVX1 U21 (.Y(n4), 
	.A(rptr_nxt[2]));
   INVX2 U22 (.Y(n17), 
	.A(n29));
   INVX2 U23 (.Y(raddr[0]), 
	.A(n17));
   NAND2X1 U26 (.Y(n21), 
	.B(renable), 
	.A(n28));
   XNOR2X1 U27 (.Y(n22), 
	.B(rwptr_r2[0]), 
	.A(rptr_nxt[0]));
   NAND2X1 U28 (.Y(n27), 
	.B(n22), 
	.A(n23));
   XNOR2X1 U29 (.Y(n25), 
	.B(rwptr_r2[3]), 
	.A(rptr_nxt[3]));
   XNOR2X1 U30 (.Y(n24), 
	.B(rwptr_r2[1]), 
	.A(rptr_nxt[1]));
   NAND2X1 U31 (.Y(n26), 
	.B(n24), 
	.A(n25));
   NOR2X1 U32 (.Y(N3), 
	.B(n26), 
	.A(n27));
   INVX2 U33 (.Y(n28), 
	.A(empty_flag));
endmodule

module fifo (
	r_clk, 
	w_clk, 
	n_rst, 
	r_enable, 
	w_enable, 
	w_data, 
	r_data, 
	empty, 
	full, 
	nclk__L2_N3, 
	nclk__L2_N4, 
	nclk__L2_N5, 
	nclk__L2_N6, 
	nclk__L2_N7);
   input r_clk;
   input w_clk;
   input n_rst;
   input r_enable;
   input w_enable;
   input [7:0] w_data;
   output [7:0] r_data;
   output empty;
   output full;
   input nclk__L2_N3;
   input nclk__L2_N4;
   input nclk__L2_N5;
   input nclk__L2_N6;
   input nclk__L2_N7;

   // Internal wires
   wire wenable_fifo;
   wire [2:0] waddr;
   wire [2:0] raddr;
   wire [3:0] rptr;
   wire [3:0] wptr;

   fiforam UFIFORAM (.wclk(w_clk), 
	.wenable(wenable_fifo), 
	.waddr(waddr), 
	.raddr(raddr), 
	.wdata(w_data), 
	.rdata(r_data), 
	.nclk__L2_N2(r_clk), 
	.nclk__L2_N4(nclk__L2_N4), 
	.nclk__L2_N5(nclk__L2_N5), 
	.nclk__L2_N6(nclk__L2_N6), 
	.nclk__L2_N7(nclk__L2_N7));
   write_fifo_ctrl UWFC (.wclk(r_clk), 
	.rst_n(n_rst), 
	.wenable(w_enable), 
	.rptr(rptr), 
	.wenable_fifo(wenable_fifo), 
	.wptr(wptr), 
	.waddr(waddr), 
	.full_flag(full), 
	.nclk__L2_N3(nclk__L2_N3), 
	.nclk__L2_N7(nclk__L2_N7));
   read_fifo_ctrl URFC (.rclk(r_clk), 
	.rst_n(n_rst), 
	.renable(r_enable), 
	.wptr(wptr), 
	.rptr(rptr), 
	.raddr(raddr), 
	.empty_flag(empty), 
	.nclk__L2_N3(nclk__L2_N3));
endmodule

module lab7_tx_fifo (
	clk, 
	n_rst, 
	read_done, 
	read_data, 
	fifo_empty, 
	fifo_full, 
	write_enable, 
	write_data, 
	nclk__L2_N2, 
	nclk__L2_N3, 
	nclk__L2_N4, 
	nclk__L2_N5, 
	nclk__L2_N6, 
	nclk__L2_N7);
   input clk;
   input n_rst;
   input read_done;
   output [7:0] read_data;
   output fifo_empty;
   output fifo_full;
   input write_enable;
   input [7:0] write_data;
   input nclk__L2_N2;
   input nclk__L2_N3;
   input nclk__L2_N4;
   input nclk__L2_N5;
   input nclk__L2_N6;
   input nclk__L2_N7;

   fifo IP_FIFO (.r_clk(nclk__L2_N2), 
	.w_clk(clk), 
	.n_rst(n_rst), 
	.r_enable(read_done), 
	.w_enable(write_enable), 
	.w_data(write_data), 
	.r_data(read_data), 
	.empty(fifo_empty), 
	.full(fifo_full), 
	.nclk__L2_N3(nclk__L2_N3), 
	.nclk__L2_N4(nclk__L2_N4), 
	.nclk__L2_N5(nclk__L2_N5), 
	.nclk__L2_N6(nclk__L2_N6), 
	.nclk__L2_N7(nclk__L2_N7));
endmodule

module lab7_timer (
	clk, 
	n_rst, 
	start, 
	stop, 
	shift_enable, 
	bit_done);
   input clk;
   input n_rst;
   input start;
   input stop;
   output shift_enable;
   output bit_done;

   // Internal wires
   wire N74;
   wire n35;
   wire n36;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire [1:0] curr_state;
   wire [2:0] clk_cnt;
   wire [2:0] nxt_clk_cnt;

   assign shift_enable = N74 ;

   DFFSR \curr_state_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_state[0]), 
	.D(n36), 
	.CLK(clk));
   DFFSR \curr_state_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_state[1]), 
	.D(n35), 
	.CLK(clk));
   DFFSR \clk_cnt_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(clk_cnt[0]), 
	.D(nxt_clk_cnt[0]), 
	.CLK(clk));
   DFFSR \clk_cnt_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(clk_cnt[1]), 
	.D(nxt_clk_cnt[1]), 
	.CLK(clk));
   DFFSR \clk_cnt_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(clk_cnt[2]), 
	.D(nxt_clk_cnt[2]), 
	.CLK(clk));
   INVX2 U8 (.Y(n1), 
	.A(n23));
   AND2X2 U9 (.Y(bit_done), 
	.B(n23), 
	.A(clk_cnt[2]));
   AND2X1 U10 (.Y(n2), 
	.B(n3), 
	.A(n19));
   INVX2 U11 (.Y(n19), 
	.A(curr_state[1]));
   INVX2 U12 (.Y(n3), 
	.A(curr_state[0]));
   NOR2X1 U13 (.Y(nxt_clk_cnt[0]), 
	.B(n2), 
	.A(clk_cnt[0]));
   NAND2X1 U14 (.Y(n21), 
	.B(clk_cnt[0]), 
	.A(clk_cnt[1]));
   OAI21X1 U15 (.Y(n20), 
	.C(n1), 
	.B(clk_cnt[0]), 
	.A(clk_cnt[1]));
   INVX2 U16 (.Y(n4), 
	.A(clk_cnt[2]));
   NAND3X1 U17 (.Y(n7), 
	.C(n4), 
	.B(n20), 
	.A(curr_state[1]));
   INVX2 U18 (.Y(n5), 
	.A(n7));
   NAND2X1 U19 (.Y(n15), 
	.B(n1), 
	.A(n5));
   NAND2X1 U20 (.Y(n25), 
	.B(n19), 
	.A(curr_state[0]));
   INVX2 U21 (.Y(n17), 
	.A(n25));
   INVX2 U22 (.Y(n6), 
	.A(stop));
   NAND2X1 U23 (.Y(n14), 
	.B(n6), 
	.A(n17));
   INVX2 U24 (.Y(n23), 
	.A(n21));
   OAI21X1 U25 (.Y(n16), 
	.C(n7), 
	.B(n19), 
	.A(n23));
   AOI22X1 U26 (.Y(n8), 
	.D(n16), 
	.C(curr_state[0]), 
	.B(n2), 
	.A(start));
   NAND3X1 U27 (.Y(n36), 
	.C(n8), 
	.B(n14), 
	.A(n15));
   AOI21X1 U28 (.Y(n18), 
	.C(n16), 
	.B(n17), 
	.A(stop));
   OAI21X1 U29 (.Y(n35), 
	.C(n18), 
	.B(n19), 
	.A(curr_state[0]));
   NOR2X1 U30 (.Y(nxt_clk_cnt[1]), 
	.B(n20), 
	.A(n2));
   XOR2X1 U31 (.Y(n22), 
	.B(clk_cnt[2]), 
	.A(n1));
   NOR2X1 U32 (.Y(nxt_clk_cnt[2]), 
	.B(n22), 
	.A(n2));
   NAND2X1 U33 (.Y(n24), 
	.B(n23), 
	.A(clk_cnt[2]));
   NOR2X1 U34 (.Y(N74), 
	.B(n24), 
	.A(n25));
endmodule

module lab7_tcu (
	clk, 
	n_rst, 
	transmit, 
	bit_done, 
	bus_mode, 
	stop, 
	start, 
	sync, 
	read_done, 
	tx_sel, 
	tx_enable_0, 
	load_data_0, 
	tx_enable_1, 
	load_data_1, 
	nclk__L2_N2);
   input clk;
   input n_rst;
   input transmit;
   input bit_done;
   output [1:0] bus_mode;
   output stop;
   output start;
   output sync;
   output read_done;
   output tx_sel;
   output tx_enable_0;
   output load_data_0;
   output tx_enable_1;
   output load_data_1;
   input nclk__L2_N2;

   // Internal wires
   wire n17;
   wire n18;
   wire n19;
   wire n81;
   wire n83;
   wire n85;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n16;
   wire n20;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n32;
   wire n33;
   wire n34;
   wire n39;
   wire n41;
   wire n44;
   wire n45;
   wire n47;
   wire n49;
   wire n51;
   wire n52;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n86;
   wire n87;
   wire n88;
   wire n93;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire [3:0] curr_state;
   wire [2:0] bit_cnt;

   DFFSR \bit_cnt_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(bit_cnt[0]), 
	.D(n85), 
	.CLK(clk));
   DFFSR \bit_cnt_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(bit_cnt[1]), 
	.D(n83), 
	.CLK(clk));
   DFFSR \bit_cnt_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(bit_cnt[2]), 
	.D(n81), 
	.CLK(clk));
   DFFSR \curr_state_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_state[0]), 
	.D(n92), 
	.CLK(nclk__L2_N2));
   DFFSR \curr_state_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_state[3]), 
	.D(n89), 
	.CLK(clk));
   DFFSR \curr_state_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_state[1]), 
	.D(n91), 
	.CLK(nclk__L2_N2));
   DFFSR \curr_state_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_state[2]), 
	.D(n90), 
	.CLK(nclk__L2_N2));
   NOR2X1 U9 (.Y(n17), 
	.B(n19), 
	.A(n18));
   NAND2X1 U11 (.Y(n18), 
	.B(bit_cnt[0]), 
	.A(bit_done));
   INVX1 U3 (.Y(n8), 
	.A(n7));
   OR2X2 U4 (.Y(tx_enable_1), 
	.B(n118), 
	.A(n117));
   INVX2 U7 (.Y(n47), 
	.A(n86));
   INVX1 U10 (.Y(n3), 
	.A(n56));
   AND2X2 U12 (.Y(n4), 
	.B(n63), 
	.A(n9));
   AND2X2 U13 (.Y(n5), 
	.B(n28), 
	.A(n51));
   AND2X1 U14 (.Y(n6), 
	.B(n52), 
	.A(n49));
   INVX2 U15 (.Y(sync), 
	.A(n135));
   INVX1 U16 (.Y(n7), 
	.A(n127));
   AND2X2 U19 (.Y(n9), 
	.B(n5), 
	.A(n39));
   INVX2 U20 (.Y(n26), 
	.A(n25));
   INVX2 U21 (.Y(n10), 
	.A(n5));
   AND2X2 U28 (.Y(n16), 
	.B(n62), 
	.A(n28));
   INVX1 U29 (.Y(n123), 
	.A(n122));
   AND2X2 U30 (.Y(n57), 
	.B(n55), 
	.A(n98));
   INVX1 U31 (.Y(n20), 
	.A(n9));
   INVX2 U32 (.Y(n49), 
	.A(n28));
   INVX1 U36 (.Y(n25), 
	.A(n39));
   NAND2X1 U38 (.Y(n27), 
	.B(n16), 
	.A(n61));
   INVX2 U39 (.Y(n28), 
	.A(curr_state[0]));
   AND2X2 U41 (.Y(n131), 
	.B(curr_state[0]), 
	.A(curr_state[1]));
   NAND2X1 U43 (.Y(n32), 
	.B(n136), 
	.A(n93));
   NAND2X1 U44 (.Y(n91), 
	.B(n88), 
	.A(n33));
   INVX2 U45 (.Y(n33), 
	.A(n32));
   INVX1 U46 (.Y(n34), 
	.A(n49));
   INVX2 U51 (.Y(n52), 
	.A(n51));
   INVX2 U52 (.Y(n127), 
	.A(curr_state[2]));
   INVX2 U54 (.Y(n51), 
	.A(curr_state[1]));
   INVX1 U55 (.Y(n62), 
	.A(curr_state[3]));
   AND2X2 U56 (.Y(n39), 
	.B(n127), 
	.A(n62));
   AND2X2 U58 (.Y(n111), 
	.B(n109), 
	.A(n110));
   NAND2X1 U60 (.Y(n115), 
	.B(n61), 
	.A(n16));
   INVX1 U61 (.Y(n41), 
	.A(n95));
   OR2X2 U62 (.Y(n104), 
	.B(n52), 
	.A(n122));
   AND2X2 U63 (.Y(n44), 
	.B(n51), 
	.A(curr_state[3]));
   AND2X2 U64 (.Y(n45), 
	.B(n28), 
	.A(n52));
   INVX1 U66 (.Y(n95), 
	.A(n27));
   INVX1 U69 (.Y(n99), 
	.A(load_data_1));
   INVX1 U70 (.Y(n124), 
	.A(n10));
   NAND2X1 U71 (.Y(n116), 
	.B(curr_state[3]), 
	.A(n127));
   INVX2 U72 (.Y(n56), 
	.A(n116));
   NAND2X1 U73 (.Y(n93), 
	.B(n45), 
	.A(n56));
   NAND2X1 U74 (.Y(n120), 
	.B(n62), 
	.A(n7));
   INVX2 U75 (.Y(n138), 
	.A(n120));
   NAND2X1 U76 (.Y(n109), 
	.B(n5), 
	.A(n138));
   NAND2X1 U77 (.Y(load_data_1), 
	.B(n109), 
	.A(n93));
   XOR2X1 U78 (.Y(n85), 
	.B(bit_cnt[0]), 
	.A(bit_done));
   INVX2 U79 (.Y(n19), 
	.A(bit_cnt[1]));
   XOR2X1 U80 (.Y(n83), 
	.B(n18), 
	.A(n19));
   XOR2X1 U81 (.Y(n81), 
	.B(bit_cnt[2]), 
	.A(n17));
   NAND2X1 U82 (.Y(n122), 
	.B(n49), 
	.A(n56));
   NAND2X1 U83 (.Y(n137), 
	.B(n7), 
	.A(n44));
   AND2X2 U84 (.Y(n70), 
	.B(n137), 
	.A(n104));
   NAND2X1 U85 (.Y(n114), 
	.B(n52), 
	.A(n49));
   NAND2X1 U86 (.Y(n119), 
	.B(n6), 
	.A(n138));
   INVX2 U87 (.Y(n67), 
	.A(n119));
   MUX2X1 U88 (.Y(n54), 
	.S(n52), 
	.B(n127), 
	.A(n3));
   NAND2X1 U89 (.Y(n71), 
	.B(n54), 
	.A(n49));
   INVX2 U90 (.Y(n60), 
	.A(n71));
   NAND3X1 U98 (.Y(n140), 
	.C(n45), 
	.B(n7), 
	.A(curr_state[3]));
   INVX2 U99 (.Y(n63), 
	.A(transmit));
   NAND2X1 U100 (.Y(n55), 
	.B(n9), 
	.A(n63));
   NAND2X1 U101 (.Y(n98), 
	.B(n56), 
	.A(n5));
   NAND3X1 U102 (.Y(n59), 
	.C(n57), 
	.B(n140), 
	.A(n137));
   INVX2 U103 (.Y(n58), 
	.A(bit_done));
   OAI22X1 U104 (.Y(n86), 
	.D(n58), 
	.C(n4), 
	.B(n59), 
	.A(n60));
   NOR2X1 U105 (.Y(n66), 
	.B(n62), 
	.A(n86));
   NAND3X1 U106 (.Y(n72), 
	.C(bit_cnt[2]), 
	.B(bit_cnt[1]), 
	.A(bit_cnt[0]));
   INVX2 U107 (.Y(n107), 
	.A(n72));
   NOR2X1 U108 (.Y(n61), 
	.B(n51), 
	.A(n127));
   NAND3X1 U109 (.Y(n64), 
	.C(n95), 
	.B(n63), 
	.A(n107));
   INVX2 U110 (.Y(n65), 
	.A(n64));
   NOR3X1 U111 (.Y(n69), 
	.C(n66), 
	.B(n65), 
	.A(n67));
   AND2X2 U112 (.Y(n68), 
	.B(n98), 
	.A(n93));
   NAND3X1 U113 (.Y(n89), 
	.C(n69), 
	.B(n68), 
	.A(n70));
   NAND2X1 U114 (.Y(n136), 
	.B(n45), 
	.A(n26));
   NAND2X1 U115 (.Y(n105), 
	.B(n137), 
	.A(n71));
   INVX2 U116 (.Y(n75), 
	.A(n105));
   NAND3X1 U117 (.Y(n135), 
	.C(n26), 
	.B(n51), 
	.A(n49));
   OAI21X1 U118 (.Y(n73), 
	.C(n41), 
	.B(n72), 
	.A(n104));
   OAI21X1 U119 (.Y(n108), 
	.C(n27), 
	.B(n114), 
	.A(n25));
   AOI22X1 U120 (.Y(n74), 
	.D(n108), 
	.C(n72), 
	.B(n73), 
	.A(transmit));
   NAND3X1 U121 (.Y(n87), 
	.C(n74), 
	.B(n135), 
	.A(n75));
   MUX2X1 U122 (.Y(n88), 
	.S(n47), 
	.B(n87), 
	.A(n52));
   OAI21X1 U123 (.Y(n96), 
	.C(n104), 
	.B(n25), 
	.A(n51));
   MUX2X1 U124 (.Y(n97), 
	.S(n107), 
	.B(n96), 
	.A(n95));
   NAND2X1 U125 (.Y(n101), 
	.B(n20), 
	.A(n97));
   NAND3X1 U126 (.Y(n100), 
	.C(n99), 
	.B(n98), 
	.A(n136));
   NOR2X1 U127 (.Y(n102), 
	.B(n100), 
	.A(n101));
   MUX2X1 U128 (.Y(n92), 
	.S(n47), 
	.B(n102), 
	.A(n34));
   INVX2 U129 (.Y(n103), 
	.A(n108));
   OAI21X1 U130 (.Y(n106), 
	.C(n103), 
	.B(n104), 
	.A(transmit));
   AOI21X1 U131 (.Y(n112), 
	.C(n105), 
	.B(n106), 
	.A(n107));
   OAI21X1 U132 (.Y(n110), 
	.C(n7), 
	.B(n47), 
	.A(n108));
   OAI21X1 U133 (.Y(n90), 
	.C(n111), 
	.B(n112), 
	.A(n47));
   NAND3X1 U134 (.Y(n113), 
	.C(n44), 
	.B(n7), 
	.A(n49));
   OAI21X1 U135 (.Y(n118), 
	.C(n113), 
	.B(n114), 
	.A(n120));
   OAI21X1 U136 (.Y(n117), 
	.C(n115), 
	.B(n10), 
	.A(n116));
   NAND2X1 U138 (.Y(load_data_0), 
	.B(n119), 
	.A(n135));
   MUX2X1 U139 (.Y(n126), 
	.S(n52), 
	.B(n138), 
	.A(n8));
   AOI21X1 U140 (.Y(n125), 
	.C(n123), 
	.B(n7), 
	.A(n124));
   NAND2X1 U141 (.Y(tx_enable_0), 
	.B(n125), 
	.A(n126));
   NAND2X1 U142 (.Y(n134), 
	.B(curr_state[3]), 
	.A(n8));
   NAND2X1 U143 (.Y(n133), 
	.B(n28), 
	.A(n52));
   NOR2X1 U144 (.Y(n130), 
	.B(n127), 
	.A(curr_state[3]));
   AOI22X1 U146 (.Y(n132), 
	.D(n130), 
	.C(n5), 
	.B(n131), 
	.A(n130));
   OAI21X1 U147 (.Y(read_done), 
	.C(n132), 
	.B(n133), 
	.A(n134));
   INVX2 U148 (.Y(start), 
	.A(n136));
   INVX2 U149 (.Y(stop), 
	.A(n137));
   NOR2X1 U150 (.Y(n139), 
	.B(n44), 
	.A(n138));
   OAI21X1 U151 (.Y(bus_mode[0]), 
	.C(n139), 
	.B(n51), 
	.A(n7));
   INVX2 U152 (.Y(bus_mode[1]), 
	.A(n140));
endmodule

module lab7_tx_sr_0 (
	clk, 
	n_rst, 
	shift_enable, 
	tx_enable, 
	tx_data, 
	load_data, 
	tx_out);
   input clk;
   input n_rst;
   input shift_enable;
   input tx_enable;
   input [7:0] tx_data;
   input load_data;
   output tx_out;

   // Internal wires
   wire n9;
   wire n10;
   wire n11;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire [7:1] curr_val;

   DFFSR \curr_val_reg[7]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[7]), 
	.D(n57), 
	.CLK(clk));
   DFFSR \curr_val_reg[6]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[6]), 
	.D(n56), 
	.CLK(clk));
   DFFSR \curr_val_reg[5]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[5]), 
	.D(n55), 
	.CLK(clk));
   DFFSR \curr_val_reg[4]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[4]), 
	.D(n54), 
	.CLK(clk));
   DFFSR \curr_val_reg[3]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[3]), 
	.D(n53), 
	.CLK(clk));
   DFFSR \curr_val_reg[2]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[2]), 
	.D(n52), 
	.CLK(clk));
   DFFSR \curr_val_reg[1]  (.S(1'b1), 
	.R(n_rst), 
	.Q(curr_val[1]), 
	.D(n51), 
	.CLK(clk));
   DFFSR \curr_val_reg[0]  (.S(1'b1), 
	.R(n_rst), 
	.Q(tx_out), 
	.D(n58), 
	.CLK(clk));
   INVX2 U11 (.Y(n11), 
	.A(n18));
   INVX1 U12 (.Y(n9), 
	.A(n47));
   INVX2 U13 (.Y(n47), 
	.A(n20));
   INVX1 U14 (.Y(n10), 
	.A(n15));
   INVX1 U15 (.Y(n17), 
	.A(shift_enable));
   INVX1 U18 (.Y(n16), 
	.A(tx_enable));
   INVX2 U20 (.Y(n15), 
	.A(load_data));
   NAND3X1 U21 (.Y(n20), 
	.C(shift_enable), 
	.B(n15), 
	.A(tx_enable));
   OAI21X1 U22 (.Y(n18), 
	.C(n15), 
	.B(n16), 
	.A(n17));
   MUX2X1 U23 (.Y(n19), 
	.S(n11), 
	.B(tx_data[7]), 
	.A(curr_val[7]));
   NAND2X1 U24 (.Y(n57), 
	.B(n19), 
	.A(n9));
   NAND2X1 U25 (.Y(n23), 
	.B(n47), 
	.A(curr_val[7]));
   NAND2X1 U26 (.Y(n22), 
	.B(n11), 
	.A(curr_val[6]));
   NAND2X1 U27 (.Y(n21), 
	.B(n10), 
	.A(tx_data[6]));
   NAND3X1 U28 (.Y(n56), 
	.C(n22), 
	.B(n21), 
	.A(n23));
   NAND2X1 U29 (.Y(n26), 
	.B(n47), 
	.A(curr_val[6]));
   NAND2X1 U30 (.Y(n25), 
	.B(n11), 
	.A(curr_val[5]));
   NAND2X1 U31 (.Y(n24), 
	.B(n10), 
	.A(tx_data[5]));
   NAND3X1 U32 (.Y(n55), 
	.C(n25), 
	.B(n24), 
	.A(n26));
   NAND2X1 U33 (.Y(n37), 
	.B(n47), 
	.A(curr_val[5]));
   NAND2X1 U34 (.Y(n28), 
	.B(n11), 
	.A(curr_val[4]));
   NAND2X1 U35 (.Y(n27), 
	.B(n10), 
	.A(tx_data[4]));
   NAND3X1 U36 (.Y(n54), 
	.C(n28), 
	.B(n27), 
	.A(n37));
   NAND2X1 U37 (.Y(n40), 
	.B(n47), 
	.A(curr_val[4]));
   NAND2X1 U38 (.Y(n39), 
	.B(curr_val[3]), 
	.A(n11));
   NAND2X1 U39 (.Y(n38), 
	.B(n10), 
	.A(tx_data[3]));
   NAND3X1 U40 (.Y(n53), 
	.C(n38), 
	.B(n39), 
	.A(n40));
   NAND2X1 U41 (.Y(n43), 
	.B(n47), 
	.A(curr_val[3]));
   NAND2X1 U42 (.Y(n42), 
	.B(n11), 
	.A(curr_val[2]));
   NAND2X1 U43 (.Y(n41), 
	.B(n10), 
	.A(tx_data[2]));
   NAND3X1 U44 (.Y(n52), 
	.C(n42), 
	.B(n41), 
	.A(n43));
   NAND2X1 U45 (.Y(n46), 
	.B(n47), 
	.A(curr_val[2]));
   NAND2X1 U46 (.Y(n45), 
	.B(curr_val[1]), 
	.A(n11));
   NAND2X1 U47 (.Y(n44), 
	.B(n10), 
	.A(tx_data[1]));
   NAND3X1 U48 (.Y(n51), 
	.C(n44), 
	.B(n45), 
	.A(n46));
   NAND2X1 U49 (.Y(n50), 
	.B(curr_val[1]), 
	.A(n47));
   NAND2X1 U50 (.Y(n49), 
	.B(n11), 
	.A(tx_out));
   NAND2X1 U51 (.Y(n48), 
	.B(n10), 
	.A(tx_data[0]));
   NAND3X1 U52 (.Y(n58), 
	.C(n49), 
	.B(n48), 
	.A(n50));
endmodule

module lab7_usb_transmitter (
	clk, 
	n_rst, 
	d_plus, 
	d_minus, 
	transmit, 
	write_enable, 
	write_data, 
	fifo_empty, 
	fifo_full, 
	nclk__L2_N1, 
	nclk__L2_N2, 
	nclk__L2_N3, 
	nclk__L2_N4, 
	nclk__L2_N5, 
	nclk__L2_N6, 
	nclk__L2_N7);
   input clk;
   input n_rst;
   output d_plus;
   output d_minus;
   input transmit;
   input write_enable;
   input [7:0] write_data;
   output fifo_empty;
   output fifo_full;
   input nclk__L2_N1;
   input nclk__L2_N2;
   input nclk__L2_N3;
   input nclk__L2_N4;
   input nclk__L2_N5;
   input nclk__L2_N6;
   input nclk__L2_N7;

   // Internal wires
   wire FE_UNCONNECTED_0;
   wire tx_out_0_int;
   wire tx_out_1_int;
   wire sync_int;
   wire \tx_data_int[7] ;
   wire tx_value_int;
   wire shift_enable_int;
   wire tx_enable_0_int;
   wire load_data_0_int;
   wire tx_enable_1_int;
   wire load_data_1_int;
   wire read_done_int;
   wire start_int;
   wire stop_int;
   wire bit_done_int;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire [7:0] read_data_int;
   wire [1:0] bus_mode_int;

   lab7_out_ctrl OCTRL (.clk(nclk__L2_N2), 
	.n_rst(n_rst), 
	.d_plus(d_plus), 
	.d_minus(d_minus), 
	.bus_mode(bus_mode_int), 
	.tx_value(tx_value_int));
   lab7_encoder ENC (.clk(clk), 
	.n_rst(n_rst), 
	.tx_bit(n1), 
	.shift_enable(n5), 
	.tx_value(tx_value_int));
   lab7_tx_sr_1 T_SR_0 (.clk(nclk__L2_N1), 
	.n_rst(n_rst), 
	.shift_enable(shift_enable_int), 
	.tx_enable(tx_enable_0_int), 
	.tx_data({ \tx_data_int[7] ,
		n12,
		n11,
		n10,
		n9,
		n8,
		n7,
		n6 }), 
	.load_data(load_data_0_int), 
	.tx_out(tx_out_0_int));
   lab7_tx_sr_0 T_SR_1 (.clk(nclk__L2_N1), 
	.n_rst(n_rst), 
	.shift_enable(shift_enable_int), 
	.tx_enable(tx_enable_1_int), 
	.tx_data({ \tx_data_int[7] ,
		n12,
		n11,
		n10,
		n9,
		n8,
		n7,
		n6 }), 
	.load_data(load_data_1_int), 
	.tx_out(tx_out_1_int));
   lab7_tx_fifo T_FIFO (.clk(clk), 
	.n_rst(n_rst), 
	.read_done(read_done_int), 
	.read_data(read_data_int), 
	.fifo_empty(fifo_empty), 
	.fifo_full(fifo_full), 
	.write_enable(write_enable), 
	.write_data(write_data), 
	.nclk__L2_N2(nclk__L2_N2), 
	.nclk__L2_N3(nclk__L2_N3), 
	.nclk__L2_N4(nclk__L2_N4), 
	.nclk__L2_N5(nclk__L2_N5), 
	.nclk__L2_N6(nclk__L2_N6), 
	.nclk__L2_N7(nclk__L2_N7));
   lab7_timer TIM (.clk(nclk__L2_N1), 
	.n_rst(n_rst), 
	.start(start_int), 
	.stop(stop_int), 
	.shift_enable(shift_enable_int), 
	.bit_done(bit_done_int));
   lab7_tcu CTRL (.clk(nclk__L2_N1), 
	.n_rst(n_rst), 
	.transmit(transmit), 
	.bit_done(bit_done_int), 
	.bus_mode(bus_mode_int), 
	.stop(stop_int), 
	.start(start_int), 
	.sync(sync_int), 
	.read_done(read_done_int), 
	.tx_sel(FE_UNCONNECTED_0), 
	.tx_enable_0(tx_enable_0_int), 
	.load_data_0(load_data_0_int), 
	.tx_enable_1(tx_enable_1_int), 
	.load_data_1(load_data_1_int), 
	.nclk__L2_N2(nclk__L2_N2));
   INVX2 U3 (.Y(n3), 
	.A(tx_out_1_int));
   INVX2 U4 (.Y(n2), 
	.A(tx_out_0_int));
   INVX2 U5 (.Y(n13), 
	.A(sync_int));
   MUX2X1 U6 (.Y(n1), 
	.S(tx_enable_1_int), 
	.B(n2), 
	.A(n3));
   INVX1 U7 (.Y(n4), 
	.A(shift_enable_int));
   INVX2 U8 (.Y(n5), 
	.A(n4));
   AND2X2 U9 (.Y(n6), 
	.B(n13), 
	.A(read_data_int[0]));
   AND2X2 U10 (.Y(n7), 
	.B(n13), 
	.A(read_data_int[1]));
   AND2X2 U11 (.Y(n8), 
	.B(n13), 
	.A(read_data_int[2]));
   AND2X2 U12 (.Y(n9), 
	.B(n13), 
	.A(read_data_int[3]));
   AND2X2 U13 (.Y(n10), 
	.B(n13), 
	.A(read_data_int[4]));
   AND2X2 U14 (.Y(n11), 
	.B(n13), 
	.A(read_data_int[5]));
   AND2X2 U15 (.Y(n12), 
	.B(n13), 
	.A(read_data_int[6]));
   OR2X2 U16 (.Y(\tx_data_int[7] ), 
	.B(sync_int), 
	.A(read_data_int[7]));
endmodule

module lab7_layout_design_t (
	clk, 
	n_rst, 
	d_plus, 
	d_minus, 
	transmit, 
	write_enable, 
	write_data, 
	fifo_empty, 
	fifo_full, 
	nclk__L2_N1, 
	nclk__L2_N2, 
	nclk__L2_N3, 
	nclk__L2_N4, 
	nclk__L2_N5, 
	nclk__L2_N6, 
	nclk__L2_N7);
   input clk;
   input n_rst;
   output d_plus;
   output d_minus;
   input transmit;
   input write_enable;
   input [7:0] write_data;
   output fifo_empty;
   output fifo_full;
   input nclk__L2_N1;
   input nclk__L2_N2;
   input nclk__L2_N3;
   input nclk__L2_N4;
   input nclk__L2_N5;
   input nclk__L2_N6;
   input nclk__L2_N7;

   lab7_usb_transmitter LD (.clk(clk), 
	.n_rst(n_rst), 
	.d_plus(d_plus), 
	.d_minus(d_minus), 
	.transmit(transmit), 
	.write_enable(write_enable), 
	.write_data(write_data), 
	.fifo_empty(fifo_empty), 
	.fifo_full(fifo_full), 
	.nclk__L2_N1(nclk__L2_N1), 
	.nclk__L2_N2(nclk__L2_N2), 
	.nclk__L2_N3(nclk__L2_N3), 
	.nclk__L2_N4(nclk__L2_N4), 
	.nclk__L2_N5(nclk__L2_N5), 
	.nclk__L2_N6(nclk__L2_N6), 
	.nclk__L2_N7(nclk__L2_N7));
endmodule

module lab7_layout_design (
	clk, 
	n_rst, 
	d_plus, 
	d_minus, 
	transmit, 
	write_enable, 
	write_data, 
	fifo_empty, 
	fifo_full);
   input clk;
   input n_rst;
   output d_plus;
   output d_minus;
   input transmit;
   input write_enable;
   input [7:0] write_data;
   output fifo_empty;
   output fifo_full;

   // Internal wires
   wire nclk__L2_N7;
   wire nclk__L2_N6;
   wire nclk__L2_N5;
   wire nclk__L2_N4;
   wire nclk__L2_N3;
   wire nclk__L2_N2;
   wire nclk__L2_N1;
   wire nclk__L2_N0;
   wire nclk__L1_N0;
   wire nclk;
   wire nn_rst;
   wire ntransmit;
   wire nwrite_enable;
   wire nd_plus;
   wire nd_minus;
   wire nfifo_empty;
   wire nfifo_full;
   wire [7:0] nwrite_data;

   INVX8 nclk__L2_I7 (.Y(nclk__L2_N7), 
	.A(nclk__L1_N0));
   INVX8 nclk__L2_I6 (.Y(nclk__L2_N6), 
	.A(nclk__L1_N0));
   INVX8 nclk__L2_I5 (.Y(nclk__L2_N5), 
	.A(nclk__L1_N0));
   INVX8 nclk__L2_I4 (.Y(nclk__L2_N4), 
	.A(nclk__L1_N0));
   INVX8 nclk__L2_I3 (.Y(nclk__L2_N3), 
	.A(nclk__L1_N0));
   INVX8 nclk__L2_I2 (.Y(nclk__L2_N2), 
	.A(nclk__L1_N0));
   INVX8 nclk__L2_I1 (.Y(nclk__L2_N1), 
	.A(nclk__L1_N0));
   INVX8 nclk__L2_I0 (.Y(nclk__L2_N0), 
	.A(nclk__L1_N0));
   INVX8 nclk__L1_I0 (.Y(nclk__L1_N0), 
	.A(nclk));
   lab7_layout_design_t I0 (.clk(nclk__L2_N0), 
	.n_rst(nn_rst), 
	.d_plus(nd_plus), 
	.d_minus(nd_minus), 
	.transmit(ntransmit), 
	.write_enable(nwrite_enable), 
	.write_data(nwrite_data), 
	.fifo_empty(nfifo_empty), 
	.fifo_full(nfifo_full), 
	.nclk__L2_N1(nclk__L2_N1), 
	.nclk__L2_N2(nclk__L2_N2), 
	.nclk__L2_N3(nclk__L2_N3), 
	.nclk__L2_N4(nclk__L2_N4), 
	.nclk__L2_N5(nclk__L2_N5), 
	.nclk__L2_N6(nclk__L2_N6), 
	.nclk__L2_N7(nclk__L2_N7));
   PADVDD U1 ();
   PADGND U2 ();
   PADOUT U3 (.YPAD(d_minus), 
	.DO(nd_minus));
   PADOUT U4 (.YPAD(d_plus), 
	.DO(nd_plus));
   PADOUT U5 (.YPAD(fifo_empty), 
	.DO(nfifo_empty));
   PADOUT U6 (.YPAD(fifo_full), 
	.DO(nfifo_full));
   PADINC U7 (.YPAD(clk), 
	.DI(nclk));
   PADINC U8 (.YPAD(n_rst), 
	.DI(nn_rst));
   PADINC U9 (.YPAD(transmit), 
	.DI(ntransmit));
   PADINC U10 (.YPAD(write_data[0]), 
	.DI(nwrite_data[0]));
   PADINC U11 (.YPAD(write_data[1]), 
	.DI(nwrite_data[1]));
   PADINC U12 (.YPAD(write_data[2]), 
	.DI(nwrite_data[2]));
   PADINC U13 (.YPAD(write_data[3]), 
	.DI(nwrite_data[3]));
   PADINC U14 (.YPAD(write_data[4]), 
	.DI(nwrite_data[4]));
   PADINC U15 (.YPAD(write_data[5]), 
	.DI(nwrite_data[5]));
   PADINC U16 (.YPAD(write_data[6]), 
	.DI(nwrite_data[6]));
   PADINC U17 (.YPAD(write_data[7]), 
	.DI(nwrite_data[7]));
   PADINC U18 (.YPAD(write_enable), 
	.DI(nwrite_enable));
endmodule

