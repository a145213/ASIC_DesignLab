
module decode ( clk, n_rst, scl, sda_in, starting_byte, rw_mode, address_match, 
        stop_found, start_found );
  input [7:0] starting_byte;
  input clk, n_rst, scl, sda_in;
  output rw_mode, address_match, stop_found, start_found;
  wire   curr, prev, sda_prev, sda_curr, pprev, sda_pprev, N4, N5, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27;
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
  DFFSR pprev_reg ( .D(prev), .CLK(clk), .R(1'b1), .S(n_rst), .Q(pprev) );
  NOR2X1 U22 ( .A(n18), .B(n19), .Y(address_match) );
  NAND3X1 U23 ( .A(starting_byte[6]), .B(starting_byte[5]), .C(
        starting_byte[7]), .Y(n19) );
  NAND3X1 U24 ( .A(starting_byte[4]), .B(n20), .C(n21), .Y(n18) );
  NOR2X1 U25 ( .A(starting_byte[3]), .B(starting_byte[2]), .Y(n21) );
  INVX1 U26 ( .A(starting_byte[1]), .Y(n20) );
  NOR2X1 U27 ( .A(n22), .B(n23), .Y(N5) );
  NAND2X1 U28 ( .A(n24), .B(n25), .Y(n23) );
  NOR2X1 U29 ( .A(n25), .B(n26), .Y(N4) );
  NAND2X1 U30 ( .A(n24), .B(n22), .Y(n26) );
  INVX1 U31 ( .A(sda_pprev), .Y(n22) );
  INVX1 U32 ( .A(n27), .Y(n24) );
  NAND3X1 U33 ( .A(pprev), .B(n_rst), .C(prev), .Y(n27) );
  INVX1 U34 ( .A(sda_prev), .Y(n25) );
endmodule

