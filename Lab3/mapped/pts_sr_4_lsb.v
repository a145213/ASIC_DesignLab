
module flex_pts_sr_NUM_BITS4_SHIFT_MSB0 ( clk, n_rst, shift_enable, 
        load_enable, parallel_in, serial_out );
  input [3:0] parallel_in;
  input clk, n_rst, shift_enable, load_enable;
  output serial_out;
  wire   n16, n17, n18, n19, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [3:1] data;

  DFFSR \data_reg[3]  ( .D(n18), .CLK(clk), .R(1'b1), .S(n_rst), .Q(data[3])
         );
  DFFSR \data_reg[2]  ( .D(n19), .CLK(clk), .R(1'b1), .S(n_rst), .Q(data[2])
         );
  DFFSR \data_reg[1]  ( .D(n17), .CLK(clk), .R(1'b1), .S(n_rst), .Q(data[1])
         );
  DFFSR serial_out_reg ( .D(n16), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        serial_out) );
  OAI21X1 U7 ( .A(n5), .B(n6), .C(n7), .Y(n19) );
  AOI22X1 U8 ( .A(data[3]), .B(n8), .C(data[2]), .D(n9), .Y(n7) );
  INVX1 U9 ( .A(parallel_in[2]), .Y(n6) );
  OAI21X1 U10 ( .A(n5), .B(n10), .C(n11), .Y(n18) );
  AOI21X1 U11 ( .A(n9), .B(data[3]), .C(n8), .Y(n11) );
  INVX1 U12 ( .A(parallel_in[3]), .Y(n10) );
  OAI21X1 U13 ( .A(n5), .B(n12), .C(n13), .Y(n17) );
  AOI22X1 U14 ( .A(data[2]), .B(n8), .C(data[1]), .D(n9), .Y(n13) );
  INVX1 U15 ( .A(parallel_in[1]), .Y(n12) );
  OAI21X1 U16 ( .A(n5), .B(n14), .C(n15), .Y(n16) );
  AOI22X1 U17 ( .A(data[1]), .B(n8), .C(serial_out), .D(n9), .Y(n15) );
  NOR2X1 U18 ( .A(n9), .B(load_enable), .Y(n8) );
  NOR2X1 U19 ( .A(shift_enable), .B(load_enable), .Y(n9) );
  INVX1 U20 ( .A(parallel_in[0]), .Y(n14) );
  INVX1 U21 ( .A(load_enable), .Y(n5) );
endmodule


module pts_sr_4_lsb ( clk, n_rst, shift_enable, load_enable, parallel_in, 
        serial_out );
  input [3:0] parallel_in;
  input clk, n_rst, shift_enable, load_enable;
  output serial_out;


  flex_pts_sr_NUM_BITS4_SHIFT_MSB0 CORE ( .clk(clk), .n_rst(n_rst), 
        .shift_enable(shift_enable), .load_enable(load_enable), .parallel_in(
        parallel_in), .serial_out(serial_out) );
endmodule

