
module flex_pts_sr ( clk, n_rst, shift_enable, load_enable, parallel_in, 
        serial_out );
  input [3:0] parallel_in;
  input clk, n_rst, shift_enable, load_enable;
  output serial_out;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30;
  wire   [2:0] data;

  DFFSR \data_reg[0]  ( .D(n19), .CLK(clk), .R(1'b1), .S(n_rst), .Q(data[0])
         );
  DFFSR \data_reg[1]  ( .D(n18), .CLK(clk), .R(1'b1), .S(n_rst), .Q(data[1])
         );
  DFFSR \data_reg[2]  ( .D(n17), .CLK(clk), .R(1'b1), .S(n_rst), .Q(data[2])
         );
  DFFSR serial_out_reg ( .D(n16), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        serial_out) );
  OAI21X1 U22 ( .A(n20), .B(n21), .C(n22), .Y(n19) );
  AOI21X1 U23 ( .A(data[0]), .B(n23), .C(n24), .Y(n22) );
  INVX1 U24 ( .A(parallel_in[0]), .Y(n21) );
  OAI21X1 U25 ( .A(n20), .B(n25), .C(n26), .Y(n18) );
  AOI22X1 U26 ( .A(n24), .B(data[0]), .C(data[1]), .D(n23), .Y(n26) );
  INVX1 U27 ( .A(parallel_in[1]), .Y(n25) );
  OAI21X1 U28 ( .A(n20), .B(n27), .C(n28), .Y(n17) );
  AOI22X1 U29 ( .A(data[1]), .B(n24), .C(data[2]), .D(n23), .Y(n28) );
  INVX1 U30 ( .A(parallel_in[2]), .Y(n27) );
  OAI21X1 U31 ( .A(n20), .B(n29), .C(n30), .Y(n16) );
  AOI22X1 U32 ( .A(data[2]), .B(n24), .C(serial_out), .D(n23), .Y(n30) );
  NOR2X1 U33 ( .A(n23), .B(load_enable), .Y(n24) );
  NOR2X1 U34 ( .A(shift_enable), .B(load_enable), .Y(n23) );
  INVX1 U35 ( .A(parallel_in[3]), .Y(n29) );
  INVX1 U36 ( .A(load_enable), .Y(n20) );
endmodule

