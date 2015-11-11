
module mealy ( clk, n_rst, i, o );
  input clk, n_rst, i;
  output o;
  wire   n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [1:0] state;
  wire   [1:0] nxt_state;

  DFFSR \state_reg[0]  ( .D(nxt_state[0]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        state[0]) );
  DFFSR \state_reg[1]  ( .D(nxt_state[1]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        state[1]) );
  INVX1 U15 ( .A(n10), .Y(o) );
  OAI21X1 U16 ( .A(n11), .B(n12), .C(n13), .Y(nxt_state[1]) );
  NAND2X1 U17 ( .A(i), .B(n14), .Y(n12) );
  OAI21X1 U18 ( .A(n15), .B(n16), .C(n17), .Y(nxt_state[0]) );
  AND2X1 U19 ( .A(n10), .B(n13), .Y(n17) );
  NAND3X1 U20 ( .A(n15), .B(n11), .C(state[1]), .Y(n13) );
  NAND3X1 U21 ( .A(state[0]), .B(i), .C(state[1]), .Y(n10) );
  NAND2X1 U22 ( .A(n11), .B(n14), .Y(n16) );
  INVX1 U23 ( .A(state[1]), .Y(n14) );
  INVX1 U24 ( .A(state[0]), .Y(n11) );
  INVX1 U25 ( .A(i), .Y(n15) );
endmodule

