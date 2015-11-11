// $Id: $
// File name:   flex_counter.sv
// Created:     9/11/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Test Bench for Flexible Counter

`timescale 1ns / 10ps

module tb_flex_counter
();
  
	// Define local parameters used by the test bench
  	localparam NUM_CNT_BITS = 4;
  	localparam CLK_PERIOD = 2.5;
  	localparam CHECK_DELAY = 1; // Check after rising edge
  
	// Declare Design Under Test (DUT) portmap signals
  	reg tb_clk;
  	reg tb_nrst;
  	reg tb_clear;
  	reg tb_count_enable;
	reg [NUM_CNT_BITS - 1:0] tb_rollover_val;

	// Declare test bench signals
	 reg tb_rollover_flag;
  	reg [NUM_CNT_BITS - 1:0] test_case;
  	reg [NUM_CNT_BITS + 1:0] test_num;
  	reg [NUM_CNT_BITS - 1:0] tb_count_out;
  	reg [NUM_CNT_BITS - 1:0] tb_expected_count;
  
  	// DUT portmap
  	flex_counter DUT(.clk(tb_clk), .n_rst(tb_nrst), .clear(tb_clear), .count_enable(tb_count_enable), .rollover_val(tb_rollover_val), .count_out(tb_count_out), .rollover_flag(tb_flag));

	// Generate clock signal  	
	always begin
    	tb_clk = 1'b0;
    	#(CLK_PERIOD / 2.0);
    	tb_clk = 1'b1;
    	#(CLK_PERIOD / 2.0);
  	end
  
	// Test bench process
 	initial
 	begin
	
		// Initialize test inputs for DUT
		tb_nrst = 1'b1;
		tb_clear = 1'b1;
		tb_count_enable = 1'b0;
		tb_rollover_val = 2**NUM_CNT_BITS;
		tb_expected_count = 0;
		//test_num = 0;
		//test_case = 1;
		
		// Test 1: Check for Proper Reset
		#(1);
		tb_nrst = 1'b0;
		#(CLK_PERIOD * 2.25);
		tb_nrst = 1'b1;
		@(negedge tb_clk)
		tb_nrst = 1'b0;
		#(CHECK_DELAY)
		if (tb_count_out == 0)
			$info("Reset 1 PASSED");
		else
			$error("Reset 1 FAILED");
			
		#(1);
		tb_nrst = 1'b1;
		#(CLK_PERIOD * 2.25);
		tb_nrst = 1'b1;
		@(posedge tb_clk)
		tb_nrst = 1'b1;
		#(CHECK_DELAY)
		if (tb_count_out == 0)
		  $info("Reset 2 PASSED");
		else
		  $error("Reset 2 FAILED");


		// Test 2: Check for Proper Clear
		@(negedge tb_clk)
		tb_nrst = 1'b1;
		tb_clear = 1'b1;

		@(posedge tb_clk)
		#(CHECK_DELAY);
		tb_expected_count = 0;
		if(tb_expected_count == tb_count_out)
			$info("Clear PASSED");
		else
			$error("Clear FAILED");  
		
  		tb_nrst = 1'b0;
		tb_clear = 1'b0;
		tb_expected_count = 0;
  
    // Test 3: Check for Proper Rollover Flag
    @(negedge tb_clk)
    tb_rollover_val = 4'b0101;
    
    #(CHECK_DELAY);
    tb_count_enable = 1'b1;
    
    for(test_num = 0; test_num < tb_rollover_val; test_num = test_num + 1)
    begin
      @(posedge tb_clk);
      @(negedge tb_clk);
      if(tb_expected_count == tb_rollover_val)
        begin
          if(tb_rollover_flag == 1'b1)
            $info("Flag PASSED");
          else
            $error("Flag FAILED");
        end
      else if (tb_expected_count == tb_count_out)
        begin
        $info("Testcase Flag %d PASSED", test_num);
        end
      else
        begin
        $error("Testcase Flag %d FAILED", test_num);
        end
    end
    
    //
    tb_nrst = 1'b1;
    tb_clear = 1'b1;
    tb_count_enable = 1'b1;
    tb_rollover_val = test_num;
    @(posedge tb_clk);
    #(CHECK_DELAY);
    //tb_expected_count = 0;     
    if(tb_expected_count == tb_count_out)
      $info("Testcase Clear %d PASSED",test_num);
    else
      $error("Testcase Clear %d FAILED",test_num);
    @(negedge tb_clk);     
    tb_count_enable = 1'b1;
    tb_clear = 1'b0;
    
    

  end
  
endmodule

