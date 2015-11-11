
module sync ( clk, n_rst, async_in, sync_out );
  input clk, n_rst, async_in;
  output sync_out;
  wire   out1;

  DFFSR out1_reg ( .D(async_in), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out1) );
  DFFSR sync_out_reg ( .D(out1), .CLK(clk), .R(n_rst), .S(1'b1), .Q(sync_out)
         );
endmodule

