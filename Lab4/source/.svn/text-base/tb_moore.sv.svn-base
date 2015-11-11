// $Id: $
// File name:   tb_moore.sv
// Created:     9/18/2014
// Author:      Allen Chien, Cody Allen
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Moore Machine 1101 Detector Test Bench

`timescale 1ns / 100ps

module tb_moore 
();
  // SETTINGS
  localparam CLK_PERIOD = 2.5;
  localparam TEST_BITS = 1000;
  reg [3:0] check_array = {1'b0, 1'b0, 1'b0, 1'b0};
  reg next;
  integer count = 0; 
  
  // DUT Port Wires
  wire tb_n_rst, tb_i, tb_o;
  
  // TB Signals
  reg tb_test_i, tb_test_o, tb_test_n_rst;
  
  // Clock
  reg tb_clk; 
  always
  begin
    tb_clk = 1'b0;
    #(CLK_PERIOD/2);
    tb_clk = 1'b1;
    #(CLK_PERIOD/2);
  end
  
  // DUT Port Map
  moore DUT(.clk(tb_clk), .n_rst(tb_n_rst), .i(tb_i), .o(tb_o));
  
  // Connect
  assign tb_i = tb_test_i;
  assign tb_test_o = tb_o;
  assign tb_n_rst = tb_test_n_rst;
  
  // Various declarations
  integer lcv = 0; 
  integer test_out_total = 0;
  

  // Test Bench Process
  initial
  begin
    tb_test_i = 0;
    tb_test_n_rst = 0;
    # 1
    tb_test_n_rst = 1;
    # 1
    for(lcv = 0; lcv < TEST_BITS; lcv = lcv + 1)
    begin
      next = $urandom_range(1,0);
      @(negedge tb_clk)
      tb_test_i <= next;
      check_array[3:0] = {check_array[2:0], next};
      count = (check_array[3:0] == {1'b1,1'b1,1'b0,1'b1}? (count + 1) : count);
    end
    # 10
    @(negedge tb_clk);
		if (test_out_total == count)
			$info("Test Bench PASSED");
		else // Test case failed
			$error("Test Bench FAILED");
  end
  
  always @ (tb_o) begin
    test_out_total = (tb_o == 1 ? (test_out_total + 1) : test_out_total);
  end
 
  
endmodule

