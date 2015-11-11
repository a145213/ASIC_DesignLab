
module flex_pts_sr_NUM_BITS8_SHIFT_MSB1 ( clk, n_rst, shift_enable, 
        load_enable, parallel_in, serial_out );
  input [7:0] parallel_in;
  input clk, n_rst, shift_enable, load_enable;
  output serial_out;
  wire   n30, n31, n32, n33, n34, n35, n36, n37, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n38;
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
  OAI21X1 U11 ( .A(n9), .B(n10), .C(n11), .Y(n37) );
  AOI21X1 U12 ( .A(data[0]), .B(n12), .C(n13), .Y(n11) );
  INVX1 U13 ( .A(parallel_in[0]), .Y(n10) );
  OAI21X1 U14 ( .A(n9), .B(n14), .C(n15), .Y(n36) );
  AOI22X1 U15 ( .A(data[1]), .B(n12), .C(n13), .D(data[0]), .Y(n15) );
  INVX1 U16 ( .A(parallel_in[1]), .Y(n14) );
  OAI21X1 U17 ( .A(n9), .B(n16), .C(n17), .Y(n35) );
  AOI22X1 U18 ( .A(data[2]), .B(n12), .C(n13), .D(data[1]), .Y(n17) );
  INVX1 U19 ( .A(parallel_in[2]), .Y(n16) );
  OAI21X1 U20 ( .A(n9), .B(n18), .C(n19), .Y(n34) );
  AOI22X1 U21 ( .A(data[3]), .B(n12), .C(data[2]), .D(n13), .Y(n19) );
  INVX1 U22 ( .A(parallel_in[3]), .Y(n18) );
  OAI21X1 U23 ( .A(n9), .B(n20), .C(n21), .Y(n33) );
  AOI22X1 U24 ( .A(data[4]), .B(n12), .C(data[3]), .D(n13), .Y(n21) );
  INVX1 U25 ( .A(parallel_in[4]), .Y(n20) );
  OAI21X1 U26 ( .A(n9), .B(n22), .C(n23), .Y(n32) );
  AOI22X1 U27 ( .A(data[5]), .B(n12), .C(data[4]), .D(n13), .Y(n23) );
  INVX1 U28 ( .A(parallel_in[5]), .Y(n22) );
  OAI21X1 U29 ( .A(n9), .B(n24), .C(n25), .Y(n31) );
  AOI22X1 U30 ( .A(data[6]), .B(n12), .C(data[5]), .D(n13), .Y(n25) );
  NOR2X1 U31 ( .A(load_enable), .B(n13), .Y(n12) );
  INVX1 U32 ( .A(n26), .Y(n13) );
  INVX1 U33 ( .A(parallel_in[6]), .Y(n24) );
  OAI21X1 U34 ( .A(n26), .B(n27), .C(n28), .Y(n30) );
  MUX2X1 U35 ( .B(n29), .A(parallel_in[7]), .S(load_enable), .Y(n28) );
  NOR2X1 U36 ( .A(n38), .B(shift_enable), .Y(n29) );
  INVX1 U37 ( .A(serial_out), .Y(n38) );
  INVX1 U38 ( .A(data[6]), .Y(n27) );
  NAND2X1 U39 ( .A(shift_enable), .B(n9), .Y(n26) );
  INVX1 U40 ( .A(load_enable), .Y(n9) );
endmodule


module pts_sr_8_msb ( clk, n_rst, shift_enable, load_enable, parallel_in, 
        serial_out );
  input [7:0] parallel_in;
  input clk, n_rst, shift_enable, load_enable;
  output serial_out;


  flex_pts_sr_NUM_BITS8_SHIFT_MSB1 CORE ( .clk(clk), .n_rst(n_rst), 
        .shift_enable(shift_enable), .load_enable(load_enable), .parallel_in(
        parallel_in), .serial_out(serial_out) );
endmodule

