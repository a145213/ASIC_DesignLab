// $Id: $
// File name:   tb_tx_fifo.sv
// Created:     10/7/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Transmitting FIFO Test Bench

`timescale 1ns/10ps

module tb_tx_fifo ();
  
  parameter CLK_PERIOD = 10;
  
  reg tb_clk;
  reg tb_n_rst;
  reg tb_read_enable;
  reg tb_write_enable;
  reg tb_fifo_empty;
  reg tb_fifo_full;
  reg [7:0] tb_read_data;
  reg [7:0] tb_write_data;
  
  tx_fifo DUT (
    .clk(tb_clk),
    .n_rst(tb_n_rst),
    .read_enable(tb_read_enable),
    .read_data(tb_read_data),
    .fifo_empty(tb_fifo_empty),
    .fifo_full(tb_fifo_full),
    .write_enable(tb_write_enable),
    .write_data(tb_write_data)
  );
  
  always 
  begin : CLK_GEN
    tb_clk = 1'b0;
    #(CLK_PERIOD / 2);
    tb_clk = 1'b1;
    #(CLK_PERIOD / 2);
  end
  
  
  initial begin
    // Initialize all inputs
    tb_n_rst = 1'b1;
    tb_read_enable = 1'b1;
    tb_write_enable = 1'b1;
    tb_write_data = '0;
    #0.1
    
    tb_n_rst = 1'b0;
    tb_read_enable = 1'b0;
    tb_write_enable = 1'b0;
    @(posedge tb_clk);
    @(posedge tb_clk);
    tb_n_rst = 1'b1;
    @(posedge tb_clk);
    
    #1;
    assert (tb_fifo_empty == 1'b1) 
      $info("Empty Check PASSED");
    else 
      $error("Empty Check FAILED");
  
    
    @(posedge tb_clk);
    @(posedge tb_clk);
    assert(tb_fifo_full == 1'b0) 
      $info("Full Check PASSED");
    else 
      $error("Full Check FAILED");
    
    @(posedge tb_clk);
    @(posedge tb_clk);
    tb_write_data = 8'b00000000;
    tb_write_enable = 1'b1;
    
    @(posedge tb_clk);
    tb_write_data = 8'b00001111;
    tb_write_enable = 1'b1;
    
    @(posedge tb_clk);
    tb_write_data = 8'b11110000;
    tb_write_enable = 1'b1;
    
    @(posedge tb_clk);
    tb_write_data = 8'b10011001;
    tb_write_enable = 1'b1;
    
    @(posedge tb_clk);

    tb_write_data = 8'b00100010;
    tb_write_enable = 1'b1;
    
    @(posedge tb_clk);
    
    tb_write_data = 8'b10101010;
    tb_write_enable = 1'b1;
    
    @(posedge tb_clk);
    
    tb_write_data = 8'b01010101;
    tb_write_enable = 1'b1; 
    
    @(posedge tb_clk);
    
    tb_write_data = 8'b11111111;
    tb_write_enable = 1'b1;
    
    
    @(posedge tb_clk);
    
    assert( tb_fifo_full == 1'b1 ) 
      $info("Correct FIFO full");
    else 
      $error("Failed FIFO full");
    
    
    @(posedge tb_clk);
    tb_write_enable = 1'b0;
    
    @(posedge tb_clk);
    @(posedge tb_clk);
    
    tb_read_enable = 1'b1;
    
    @(posedge tb_clk);
    assert( tb_read_data == 8'b00000000) 
      $info("Data CORRECT 00000000");
    else 
      $error("Data FAILED 00000000");
    
    @(posedge tb_clk);
    tb_read_enable = 1'b1;  
    assert( tb_read_data == 8'b00001111) 
      $info("Data CORRECT 00001111");
    else 
      $error("Data FAILED 00001111");
    
    @(posedge tb_clk); 
    tb_read_enable = 1'b1;
    assert( tb_read_data == 8'b11110000) 
      $info("Data CORRECT 11110000");
    else 
      $error("Data FAILED 11110000");
    
    @(posedge tb_clk); 
    assert( tb_read_data == 8'b10011001) 
      $info("Data CORRECT 10011001");
    else 
      $error("Data FAILED 10011001");
    
      @(posedge tb_clk);  
    assert( tb_read_data == 8'b00100010) 
      $info("Data CORRECT 00100010");
    else 
      $error("Data FAILED 00100010");
    
     @(posedge tb_clk);  
    assert( tb_read_data == 8'b10101010) 
      $info("Data CORRECT 10101010");
    else 
      $error("Data FAILED 10101010");
    
      @(posedge tb_clk);
    assert( tb_read_data == 8'b01010101) 
      $info("Data CORRECT 01010101");
    else 
      $error("Data FAILED 01010101");
    
      @(posedge tb_clk);
    assert( tb_read_data == 8'b11111111) 
      $info("Data CORRECT 11111111");
    else 
      $error("Data FAILED 11111111");
    
      @(posedge tb_clk); 
          assert (tb_fifo_empty == 1'b1) 
      $info("Empty Check PASSED");
    else 
      $error("Empty Check FAILED");
    
  end
  
endmodule