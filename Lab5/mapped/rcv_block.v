
module flex_counter_NUM_CNT_BITS4_1 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n64, n65, n66, n_rollover_flag, n42, n43, n44, n45, n1, n2, n3, n4,
         n5, n6, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63;

  DFFSR \count_out_reg[3]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[2]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[1]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n64)
         );
  DFFSR \count_out_reg[0]  ( .D(n42), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n65)
         );
  DFFSR rollover_flag_reg ( .D(n_rollover_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n66) );
  INVX4 U8 ( .A(n5), .Y(n6) );
  AND2X2 U9 ( .A(count_out[1]), .B(count_out[0]), .Y(n1) );
  MUX2X1 U10 ( .B(n51), .A(n1), .S(n50), .Y(n52) );
  BUFX2 U11 ( .A(n66), .Y(rollover_flag) );
  XNOR2X1 U12 ( .A(count_out[2]), .B(rollover_val[2]), .Y(n16) );
  INVX2 U13 ( .A(n32), .Y(n2) );
  INVX1 U14 ( .A(n38), .Y(n3) );
  INVX2 U15 ( .A(count_enable), .Y(n38) );
  INVX1 U16 ( .A(n59), .Y(n4) );
  INVX2 U17 ( .A(n58), .Y(n5) );
  INVX2 U18 ( .A(n47), .Y(count_out[1]) );
  OR2X2 U19 ( .A(count_enable), .B(clear), .Y(n58) );
  BUFX2 U20 ( .A(n65), .Y(count_out[0]) );
  INVX1 U21 ( .A(n58), .Y(n20) );
  NAND2X1 U22 ( .A(count_out[0]), .B(n3), .Y(n25) );
  INVX2 U23 ( .A(count_out[2]), .Y(n55) );
  INVX2 U24 ( .A(n64), .Y(n47) );
  XOR2X1 U25 ( .A(n47), .B(rollover_val[1]), .Y(n15) );
  AND2X2 U26 ( .A(n16), .B(n15), .Y(n27) );
  INVX2 U27 ( .A(n65), .Y(n46) );
  XOR2X1 U28 ( .A(n46), .B(rollover_val[0]), .Y(n17) );
  INVX2 U29 ( .A(count_out[3]), .Y(n32) );
  XOR2X1 U30 ( .A(n32), .B(rollover_val[3]), .Y(n49) );
  NAND2X1 U31 ( .A(n17), .B(n49), .Y(n18) );
  INVX2 U32 ( .A(n18), .Y(n26) );
  NAND2X1 U33 ( .A(n27), .B(n26), .Y(n40) );
  NAND2X1 U34 ( .A(count_out[1]), .B(n34), .Y(n19) );
  NAND2X1 U35 ( .A(n19), .B(n4), .Y(n24) );
  NOR2X1 U36 ( .A(count_out[0]), .B(n38), .Y(n22) );
  INVX2 U37 ( .A(n19), .Y(n21) );
  AOI22X1 U38 ( .A(n22), .B(n21), .C(n20), .D(count_out[1]), .Y(n23) );
  OAI21X1 U39 ( .A(n25), .B(n24), .C(n23), .Y(n43) );
  NAND2X1 U40 ( .A(n27), .B(n26), .Y(n34) );
  NAND2X1 U41 ( .A(n2), .B(n34), .Y(n31) );
  XOR2X1 U42 ( .A(n55), .B(rollover_val[2]), .Y(n50) );
  AND2X2 U43 ( .A(rollover_val[1]), .B(n50), .Y(n28) );
  NAND3X1 U44 ( .A(n49), .B(n28), .C(rollover_val[0]), .Y(n29) );
  NAND3X1 U45 ( .A(count_out[1]), .B(n29), .C(count_out[0]), .Y(n35) );
  NOR2X1 U46 ( .A(n55), .B(n35), .Y(n30) );
  XOR2X1 U47 ( .A(n31), .B(n30), .Y(n33) );
  OAI22X1 U48 ( .A(n33), .B(n38), .C(n6), .D(n32), .Y(n45) );
  NAND2X1 U49 ( .A(count_out[2]), .B(n40), .Y(n37) );
  INVX2 U50 ( .A(n35), .Y(n36) );
  XOR2X1 U51 ( .A(n37), .B(n36), .Y(n39) );
  OAI22X1 U52 ( .A(n39), .B(n38), .C(n55), .D(n6), .Y(n44) );
  INVX2 U53 ( .A(n40), .Y(n59) );
  OAI21X1 U54 ( .A(n59), .B(n46), .C(n3), .Y(n41) );
  OAI21X1 U55 ( .A(n46), .B(n6), .C(n41), .Y(n42) );
  XOR2X1 U56 ( .A(n47), .B(rollover_val[1]), .Y(n48) );
  XOR2X1 U57 ( .A(n48), .B(count_out[0]), .Y(n53) );
  INVX2 U58 ( .A(n49), .Y(n54) );
  OAI21X1 U59 ( .A(n54), .B(n55), .C(n1), .Y(n51) );
  NAND2X1 U60 ( .A(n53), .B(n52), .Y(n63) );
  XOR2X1 U61 ( .A(rollover_val[0]), .B(count_out[0]), .Y(n57) );
  OAI21X1 U62 ( .A(rollover_val[2]), .B(n55), .C(n54), .Y(n56) );
  NAND3X1 U63 ( .A(n3), .B(n57), .C(n56), .Y(n62) );
  OAI21X1 U64 ( .A(clear), .B(n59), .C(n58), .Y(n60) );
  NAND2X1 U65 ( .A(rollover_flag), .B(n60), .Y(n61) );
  OAI21X1 U66 ( .A(n63), .B(n62), .C(n61), .Y(n_rollover_flag) );
endmodule


module flex_counter_NUM_CNT_BITS4_0 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n72, n73, n_rollover_flag, n1, n2, n3, n4, n5, n6, n7, n14, n15, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66;

  DFFSR \count_out_reg[3]  ( .D(n63), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[2]  ( .D(n64), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[1]  ( .D(n65), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n72)
         );
  DFFSR \count_out_reg[0]  ( .D(n66), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n73)
         );
  DFFSR rollover_flag_reg ( .D(n_rollover_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(rollover_flag) );
  INVX2 U8 ( .A(n58), .Y(n1) );
  AND2X2 U9 ( .A(count_out[1]), .B(n17), .Y(n2) );
  MUX2X1 U10 ( .B(n50), .A(n2), .S(n49), .Y(n51) );
  XNOR2X1 U11 ( .A(n36), .B(n35), .Y(n38) );
  NOR2X1 U12 ( .A(n3), .B(n4), .Y(n27) );
  XNOR2X1 U13 ( .A(n54), .B(rollover_val[2]), .Y(n3) );
  XNOR2X1 U14 ( .A(n46), .B(rollover_val[1]), .Y(n4) );
  INVX1 U15 ( .A(n48), .Y(n53) );
  INVX1 U16 ( .A(clear), .Y(n20) );
  XNOR2X1 U17 ( .A(n15), .B(rollover_val[0]), .Y(n18) );
  INVX2 U18 ( .A(n15), .Y(n41) );
  INVX2 U19 ( .A(n14), .Y(n15) );
  AND2X2 U20 ( .A(n18), .B(n48), .Y(n5) );
  BUFX2 U21 ( .A(n54), .Y(n6) );
  INVX1 U22 ( .A(n32), .Y(n7) );
  INVX1 U23 ( .A(n46), .Y(count_out[1]) );
  INVX2 U24 ( .A(n73), .Y(n14) );
  INVX1 U25 ( .A(n41), .Y(count_out[0]) );
  INVX1 U26 ( .A(n14), .Y(n17) );
  NAND2X1 U27 ( .A(count_out[0]), .B(count_enable), .Y(n26) );
  INVX2 U28 ( .A(count_out[2]), .Y(n54) );
  INVX2 U29 ( .A(n72), .Y(n46) );
  INVX2 U30 ( .A(count_out[3]), .Y(n32) );
  XOR2X1 U31 ( .A(n32), .B(rollover_val[3]), .Y(n48) );
  NAND2X1 U32 ( .A(n27), .B(n5), .Y(n39) );
  NAND2X1 U33 ( .A(count_out[1]), .B(n34), .Y(n19) );
  NAND2X1 U34 ( .A(n19), .B(n1), .Y(n25) );
  INVX2 U35 ( .A(count_enable), .Y(n37) );
  NOR2X1 U36 ( .A(count_out[0]), .B(n37), .Y(n23) );
  INVX2 U37 ( .A(n19), .Y(n22) );
  NAND2X1 U38 ( .A(n37), .B(n20), .Y(n57) );
  INVX2 U39 ( .A(n57), .Y(n21) );
  AOI22X1 U40 ( .A(n23), .B(n22), .C(n21), .D(count_out[1]), .Y(n24) );
  OAI21X1 U41 ( .A(n26), .B(n25), .C(n24), .Y(n65) );
  NAND2X1 U42 ( .A(n5), .B(n27), .Y(n34) );
  NAND2X1 U43 ( .A(n7), .B(n34), .Y(n31) );
  XOR2X1 U44 ( .A(n54), .B(rollover_val[2]), .Y(n49) );
  AND2X2 U45 ( .A(rollover_val[1]), .B(n49), .Y(n28) );
  NAND3X1 U46 ( .A(n48), .B(n28), .C(rollover_val[0]), .Y(n29) );
  NAND3X1 U47 ( .A(n72), .B(n29), .C(n17), .Y(n35) );
  NOR2X1 U48 ( .A(n6), .B(n35), .Y(n30) );
  XOR2X1 U49 ( .A(n31), .B(n30), .Y(n33) );
  OAI22X1 U50 ( .A(n33), .B(n37), .C(n57), .D(n32), .Y(n63) );
  NAND2X1 U51 ( .A(count_out[2]), .B(n39), .Y(n36) );
  OAI22X1 U52 ( .A(n38), .B(n37), .C(n6), .D(n57), .Y(n64) );
  INVX2 U53 ( .A(n39), .Y(n58) );
  OAI21X1 U54 ( .A(n58), .B(n41), .C(count_enable), .Y(n40) );
  OAI21X1 U55 ( .A(n41), .B(n57), .C(n40), .Y(n66) );
  XOR2X1 U56 ( .A(n46), .B(rollover_val[1]), .Y(n47) );
  XOR2X1 U57 ( .A(n47), .B(count_out[0]), .Y(n52) );
  OAI21X1 U58 ( .A(n53), .B(n6), .C(n2), .Y(n50) );
  NAND2X1 U59 ( .A(n52), .B(n51), .Y(n62) );
  XOR2X1 U60 ( .A(rollover_val[0]), .B(count_out[0]), .Y(n56) );
  OAI21X1 U61 ( .A(rollover_val[2]), .B(n6), .C(n53), .Y(n55) );
  NAND3X1 U62 ( .A(count_enable), .B(n56), .C(n55), .Y(n61) );
  OAI21X1 U63 ( .A(clear), .B(n58), .C(n57), .Y(n59) );
  NAND2X1 U64 ( .A(rollover_flag), .B(n59), .Y(n60) );
  OAI21X1 U65 ( .A(n62), .B(n61), .C(n60), .Y(n_rollover_flag) );
endmodule


module timer ( clk, n_rst, enable_timer, shift_strobe, packet_done );
  input clk, n_rst, enable_timer;
  output shift_strobe, packet_done;


  flex_counter_NUM_CNT_BITS4_1 CLK_CNT ( .clk(clk), .n_rst(n_rst), .clear(
        packet_done), .count_enable(enable_timer), .rollover_val({1'b1, 1'b0, 
        1'b1, 1'b0}), .rollover_flag(shift_strobe) );
  flex_counter_NUM_CNT_BITS4_0 BIT_CNT ( .clk(clk), .n_rst(n_rst), .clear(
        packet_done), .count_enable(shift_strobe), .rollover_val({1'b1, 1'b0, 
        1'b0, 1'b1}), .rollover_flag(packet_done) );
endmodule


module rcu ( clk, n_rst, start_bit_detected, packet_done, framing_error, 
        sbc_clear, sbc_enable, load_buffer, enable_timer, state );
  output [3:0] state;
  input clk, n_rst, start_bit_detected, packet_done, framing_error;
  output sbc_clear, sbc_enable, load_buffer, enable_timer;
  wire   n37, n38, n39, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n25, n26, n27, n28, n4, n5, n6, n7, n8, enable_timer, n23,
         n29, n33, n34, n35, n36;
  assign state[3] = 1'b0;
  assign sbc_clear = enable_timer;

  DFFSR \cur_state_reg[0]  ( .D(n28), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n39)
         );
  DFFSR \cur_state_reg[1]  ( .D(n27), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n38)
         );
  DFFSR \cur_state_reg[2]  ( .D(n26), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n37)
         );
  NOR2X1 U14 ( .A(n10), .B(n11), .Y(sbc_enable) );
  XOR2X1 U18 ( .A(state[1]), .B(state[0]), .Y(n10) );
  OAI22X1 U19 ( .A(n7), .B(n35), .C(n17), .D(n8), .Y(n27) );
  AOI21X1 U20 ( .A(n19), .B(state[2]), .C(enable_timer), .Y(n17) );
  NOR2X1 U21 ( .A(state[0]), .B(framing_error), .Y(n19) );
  OAI22X1 U22 ( .A(n16), .B(n33), .C(n21), .D(n8), .Y(n28) );
  AOI21X1 U23 ( .A(n34), .B(n4), .C(n18), .Y(n16) );
  OAI21X1 U24 ( .A(packet_done), .B(n20), .C(n5), .Y(n18) );
  NAND2X1 U27 ( .A(n25), .B(n33), .Y(n21) );
  NOR2X1 U28 ( .A(state[2]), .B(n14), .Y(n13) );
  NAND2X1 U29 ( .A(state[1]), .B(n39), .Y(n14) );
  NAND3X1 U31 ( .A(n33), .B(n36), .C(state[1]), .Y(n22) );
  NOR2X1 U34 ( .A(state[1]), .B(state[2]), .Y(n25) );
  BUFX2 U6 ( .A(n22), .Y(n4) );
  OR2X2 U8 ( .A(start_bit_detected), .B(n21), .Y(n5) );
  BUFX2 U9 ( .A(n14), .Y(n6) );
  INVX2 U10 ( .A(state[2]), .Y(n36) );
  AOI21X1 U11 ( .A(n34), .B(n4), .C(n18), .Y(n7) );
  OAI21X1 U12 ( .A(packet_done), .B(n20), .C(n5), .Y(n8) );
  INVX2 U13 ( .A(enable_timer), .Y(n20) );
  INVX1 U15 ( .A(n13), .Y(n34) );
  AND2X2 U16 ( .A(n25), .B(n39), .Y(enable_timer) );
  INVX2 U17 ( .A(n37), .Y(n23) );
  INVX4 U25 ( .A(n23), .Y(state[2]) );
  AND2X2 U26 ( .A(n14), .B(state[2]), .Y(n12) );
  INVX2 U30 ( .A(n38), .Y(n29) );
  INVX4 U32 ( .A(n29), .Y(state[1]) );
  INVX2 U33 ( .A(n33), .Y(state[0]) );
  INVX2 U35 ( .A(n39), .Y(n33) );
  INVX8 U36 ( .A(n4), .Y(load_buffer) );
  INVX1 U37 ( .A(state[1]), .Y(n35) );
  NOR2X1 U38 ( .A(n12), .B(n13), .Y(n11) );
  NAND2X1 U39 ( .A(n6), .B(n15), .Y(n26) );
  NAND2X1 U40 ( .A(n10), .B(state[2]), .Y(n15) );
endmodule


module flex_stp_sr_NUM_BITS9_SHIFT_MSB0 ( clk, n_rst, shift_enable, serial_in, 
        parallel_out );
  output [8:0] parallel_out;
  input clk, n_rst, shift_enable, serial_in;
  wire   n3, n11, n13, n15, n17, n19, n21, n23, n25, n27, n29, n1, n2, n4, n5,
         n6, n7, n8, n9, n10, n30;

  DFFSR \parallel_out_reg[8]  ( .D(n29), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[8]) );
  DFFSR \parallel_out_reg[7]  ( .D(n27), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[7]) );
  DFFSR \parallel_out_reg[6]  ( .D(n25), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[6]) );
  DFFSR \parallel_out_reg[5]  ( .D(n23), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[5]) );
  DFFSR \parallel_out_reg[4]  ( .D(n21), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[4]) );
  DFFSR \parallel_out_reg[3]  ( .D(n19), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[3]) );
  DFFSR \parallel_out_reg[2]  ( .D(n17), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[2]) );
  DFFSR \parallel_out_reg[1]  ( .D(n15), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[1]) );
  DFFSR \parallel_out_reg[0]  ( .D(n13), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[0]) );
  OAI21X1 U2 ( .A(n30), .B(n1), .C(n3), .Y(n13) );
  NAND2X1 U3 ( .A(parallel_out[0]), .B(n1), .Y(n3) );
  OAI22X1 U4 ( .A(n1), .B(n10), .C(n2), .D(n30), .Y(n15) );
  OAI22X1 U6 ( .A(n1), .B(n9), .C(n2), .D(n10), .Y(n17) );
  OAI22X1 U8 ( .A(n1), .B(n8), .C(n2), .D(n9), .Y(n19) );
  OAI22X1 U10 ( .A(n1), .B(n7), .C(n2), .D(n8), .Y(n21) );
  OAI22X1 U12 ( .A(n1), .B(n6), .C(n2), .D(n7), .Y(n23) );
  OAI22X1 U14 ( .A(n1), .B(n5), .C(n2), .D(n6), .Y(n25) );
  OAI22X1 U16 ( .A(n1), .B(n4), .C(n2), .D(n5), .Y(n27) );
  OAI21X1 U19 ( .A(n2), .B(n4), .C(n11), .Y(n29) );
  NAND2X1 U20 ( .A(serial_in), .B(n2), .Y(n11) );
  INVX2 U5 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(shift_enable), .Y(n1) );
  INVX2 U9 ( .A(parallel_out[8]), .Y(n4) );
  INVX2 U11 ( .A(parallel_out[7]), .Y(n5) );
  INVX2 U13 ( .A(parallel_out[6]), .Y(n6) );
  INVX2 U15 ( .A(parallel_out[5]), .Y(n7) );
  INVX2 U17 ( .A(parallel_out[4]), .Y(n8) );
  INVX2 U18 ( .A(parallel_out[3]), .Y(n9) );
  INVX2 U21 ( .A(parallel_out[2]), .Y(n10) );
  INVX2 U31 ( .A(parallel_out[1]), .Y(n30) );
endmodule


module sr_9bit ( clk, n_rst, shift_strobe, serial_in, packet_data, stop_bit );
  output [7:0] packet_data;
  input clk, n_rst, shift_strobe, serial_in;
  output stop_bit;


  flex_stp_sr_NUM_BITS9_SHIFT_MSB0 IX ( .clk(clk), .n_rst(n_rst), 
        .shift_enable(shift_strobe), .serial_in(serial_in), .parallel_out({
        stop_bit, packet_data}) );
endmodule


module rx_data_buff ( clk, n_rst, load_buffer, packet_data, data_read, rx_data, 
        data_ready, overrun_error );
  input [7:0] packet_data;
  output [7:0] rx_data;
  input clk, n_rst, load_buffer, data_read;
  output data_ready, overrun_error;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n30, n31, n2, n11, n15, n17, n19,
         n21, n23, n25, n27, n29;

  DFFSR \rx_data_reg[7]  ( .D(n2), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        rx_data[7]) );
  DFFSR \rx_data_reg[6]  ( .D(n11), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        rx_data[6]) );
  DFFSR \rx_data_reg[5]  ( .D(n15), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        rx_data[5]) );
  DFFSR \rx_data_reg[4]  ( .D(n17), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        rx_data[4]) );
  DFFSR \rx_data_reg[3]  ( .D(n19), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        rx_data[3]) );
  DFFSR \rx_data_reg[2]  ( .D(n21), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        rx_data[2]) );
  DFFSR \rx_data_reg[1]  ( .D(n23), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        rx_data[1]) );
  DFFSR \rx_data_reg[0]  ( .D(n25), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        rx_data[0]) );
  DFFSR data_ready_reg ( .D(n31), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_ready) );
  DFFSR overrun_error_reg ( .D(n30), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        overrun_error) );
  AOI22X1 U4 ( .A(rx_data[0]), .B(n29), .C(packet_data[0]), .D(load_buffer), 
        .Y(n1) );
  AOI22X1 U6 ( .A(rx_data[1]), .B(n29), .C(packet_data[1]), .D(load_buffer), 
        .Y(n3) );
  AOI22X1 U8 ( .A(rx_data[2]), .B(n29), .C(packet_data[2]), .D(load_buffer), 
        .Y(n4) );
  AOI22X1 U10 ( .A(rx_data[3]), .B(n29), .C(packet_data[3]), .D(load_buffer), 
        .Y(n5) );
  AOI22X1 U12 ( .A(rx_data[4]), .B(n29), .C(packet_data[4]), .D(load_buffer), 
        .Y(n6) );
  AOI22X1 U14 ( .A(rx_data[5]), .B(n29), .C(packet_data[5]), .D(load_buffer), 
        .Y(n7) );
  AOI22X1 U16 ( .A(rx_data[6]), .B(n29), .C(packet_data[6]), .D(load_buffer), 
        .Y(n8) );
  AOI22X1 U18 ( .A(rx_data[7]), .B(n29), .C(packet_data[7]), .D(load_buffer), 
        .Y(n9) );
  NOR2X1 U19 ( .A(data_read), .B(n10), .Y(n30) );
  AOI21X1 U20 ( .A(data_ready), .B(load_buffer), .C(overrun_error), .Y(n10) );
  OAI21X1 U21 ( .A(data_read), .B(n27), .C(n29), .Y(n31) );
  INVX8 U3 ( .A(load_buffer), .Y(n29) );
  INVX2 U5 ( .A(n9), .Y(n2) );
  INVX2 U7 ( .A(n8), .Y(n11) );
  INVX2 U9 ( .A(n7), .Y(n15) );
  INVX2 U11 ( .A(n6), .Y(n17) );
  INVX2 U13 ( .A(n5), .Y(n19) );
  INVX2 U15 ( .A(n4), .Y(n21) );
  INVX2 U17 ( .A(n3), .Y(n23) );
  INVX2 U22 ( .A(n1), .Y(n25) );
  INVX2 U23 ( .A(data_ready), .Y(n27) );
endmodule


module start_bit_det ( clk, n_rst, serial_in, start_bit_detected );
  input clk, n_rst, serial_in;
  output start_bit_detected;
  wire   old_sample, new_sample, sync_phase, n4;

  DFFSR sync_phase_reg ( .D(serial_in), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        sync_phase) );
  DFFSR new_sample_reg ( .D(sync_phase), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        new_sample) );
  DFFSR old_sample_reg ( .D(new_sample), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        old_sample) );
  NOR2X1 U7 ( .A(new_sample), .B(n4), .Y(start_bit_detected) );
  INVX2 U6 ( .A(old_sample), .Y(n4) );
endmodule


module stop_bit_chk ( clk, n_rst, sbc_clear, sbc_enable, stop_bit, 
        framing_error );
  input clk, n_rst, sbc_clear, sbc_enable, stop_bit;
  output framing_error;
  wire   n4, n5, n2, n3;

  DFFSR framing_error_reg ( .D(n5), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        framing_error) );
  NOR2X1 U5 ( .A(sbc_clear), .B(n4), .Y(n5) );
  AOI22X1 U6 ( .A(framing_error), .B(n3), .C(sbc_enable), .D(n2), .Y(n4) );
  INVX1 U3 ( .A(sbc_enable), .Y(n3) );
  INVX2 U4 ( .A(stop_bit), .Y(n2) );
endmodule


module rcv_block ( clk, n_rst, serial_in, data_read, rx_data, data_ready, 
        overrun_error, framing_error, shift_strobe, packet_done, state );
  output [7:0] rx_data;
  output [3:0] state;
  input clk, n_rst, serial_in, data_read;
  output data_ready, overrun_error, framing_error, shift_strobe, packet_done;
  wire   enable_timer, start_bit_detected, sbc_clear, sbc_enable, load_buffer,
         stop_bit;
  wire   [7:0] packet_data;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign state[3] = 1'b0;

  timer TIMER ( .clk(clk), .n_rst(n_rst), .enable_timer(enable_timer), 
        .shift_strobe(shift_strobe), .packet_done(packet_done) );
  rcu RCU ( .clk(clk), .n_rst(n_rst), .start_bit_detected(start_bit_detected), 
        .packet_done(packet_done), .framing_error(framing_error), .sbc_clear(
        sbc_clear), .sbc_enable(sbc_enable), .load_buffer(load_buffer), 
        .enable_timer(enable_timer), .state({SYNOPSYS_UNCONNECTED__0, 
        state[2:0]}) );
  sr_9bit SHIFT_REG ( .clk(clk), .n_rst(n_rst), .shift_strobe(shift_strobe), 
        .serial_in(serial_in), .packet_data(packet_data), .stop_bit(stop_bit)
         );
  rx_data_buff RX_DATA_BUFFER ( .clk(clk), .n_rst(n_rst), .load_buffer(
        load_buffer), .packet_data(packet_data), .data_read(data_read), 
        .rx_data(rx_data), .data_ready(data_ready), .overrun_error(
        overrun_error) );
  start_bit_det START_BIT ( .clk(clk), .n_rst(n_rst), .serial_in(serial_in), 
        .start_bit_detected(start_bit_detected) );
  stop_bit_chk STOP_BIT ( .clk(clk), .n_rst(n_rst), .sbc_clear(sbc_clear), 
        .sbc_enable(sbc_enable), .stop_bit(stop_bit), .framing_error(
        framing_error) );
endmodule

