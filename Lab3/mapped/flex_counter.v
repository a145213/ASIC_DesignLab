
module flex_counter ( clk, n_rst, clear, count_enable, rollover_val, count_out, 
        rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n_rollover_flag, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77;

  DFFSR \count_out_reg[0]  ( .D(n42), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[1]  ( .D(n41), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n40), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n39), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR rollover_flag_reg ( .D(n_rollover_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(rollover_flag) );
  NOR2X1 U41 ( .A(n43), .B(n44), .Y(n_rollover_flag) );
  NAND3X1 U42 ( .A(n45), .B(n46), .C(n47), .Y(n44) );
  MUX2X1 U43 ( .B(n48), .A(n49), .S(n50), .Y(n47) );
  NOR2X1 U44 ( .A(n51), .B(n52), .Y(n48) );
  XNOR2X1 U45 ( .A(n53), .B(n54), .Y(n46) );
  NAND3X1 U46 ( .A(count_out[2]), .B(count_out[0]), .C(count_out[1]), .Y(n53)
         );
  MUX2X1 U47 ( .B(n51), .A(n55), .S(n56), .Y(n45) );
  AOI21X1 U48 ( .A(n51), .B(n50), .C(rollover_val[1]), .Y(n55) );
  NAND3X1 U49 ( .A(n57), .B(n58), .C(count_enable), .Y(n43) );
  OAI22X1 U50 ( .A(n50), .B(n59), .C(n60), .D(n61), .Y(n42) );
  OAI21X1 U51 ( .A(n51), .B(n59), .C(n62), .Y(n41) );
  MUX2X1 U52 ( .B(n63), .A(n64), .S(n60), .Y(n62) );
  NOR2X1 U53 ( .A(n65), .B(n61), .Y(n64) );
  AND2X1 U54 ( .A(n58), .B(n65), .Y(n63) );
  OAI21X1 U55 ( .A(n66), .B(n59), .C(n67), .Y(n40) );
  MUX2X1 U56 ( .B(n68), .A(n69), .S(n70), .Y(n67) );
  NOR2X1 U57 ( .A(n71), .B(n61), .Y(n69) );
  AND2X1 U58 ( .A(n58), .B(n71), .Y(n68) );
  OAI22X1 U59 ( .A(n72), .B(n59), .C(n73), .D(n61), .Y(n39) );
  NAND2X1 U60 ( .A(n59), .B(n58), .Y(n61) );
  INVX1 U61 ( .A(clear), .Y(n58) );
  XOR2X1 U62 ( .A(n74), .B(n75), .Y(n73) );
  NOR2X1 U63 ( .A(n76), .B(n72), .Y(n75) );
  NAND2X1 U64 ( .A(n71), .B(n70), .Y(n74) );
  AND2X1 U65 ( .A(n65), .B(n60), .Y(n70) );
  NOR2X1 U66 ( .A(n50), .B(n76), .Y(n60) );
  INVX1 U67 ( .A(count_out[0]), .Y(n50) );
  NOR2X1 U68 ( .A(n51), .B(n76), .Y(n65) );
  NOR2X1 U69 ( .A(n66), .B(n76), .Y(n71) );
  NOR3X1 U70 ( .A(n57), .B(n49), .C(n77), .Y(n76) );
  OAI21X1 U71 ( .A(n51), .B(rollover_val[1]), .C(n54), .Y(n77) );
  XOR2X1 U72 ( .A(n72), .B(rollover_val[3]), .Y(n54) );
  INVX1 U73 ( .A(count_out[1]), .Y(n51) );
  OAI21X1 U74 ( .A(count_out[1]), .B(n52), .C(n56), .Y(n49) );
  XOR2X1 U75 ( .A(n66), .B(rollover_val[2]), .Y(n56) );
  INVX1 U76 ( .A(rollover_val[1]), .Y(n52) );
  XOR2X1 U77 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n57) );
  INVX1 U78 ( .A(count_out[2]), .Y(n66) );
  OR2X1 U79 ( .A(count_enable), .B(clear), .Y(n59) );
  INVX1 U80 ( .A(count_out[3]), .Y(n72) );
endmodule

