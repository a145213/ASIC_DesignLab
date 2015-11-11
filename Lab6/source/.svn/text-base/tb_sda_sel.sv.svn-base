// $Id: $
// File name:   tb_sda_sel.sv
// Created:     10/7/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: SDA Output Selection Block Test Bench

`timescale 1ns/10ps

module tb_sda_sel ();
  
  reg tb_tx_out;
  reg tb_sda_out;
  reg [1:0] tb_sda_mode;
  
  sda_sel DUT (
    .tx_out(tb_tx_out),
    .sda_mode(tb_sda_mode),
    .sda_out(tb_sda_out)
  );
  
  
  initial begin
  #1;
  tb_sda_mode = 2'b00;
  tb_tx_out = 1'b1;
  
  #1;
  assert (tb_sda_out == 1) 
    $info("Idle PASSED!");
  else 
    $error("Idle FAILED!");
    
  #1;
  tb_sda_mode = 2'b01;
  
  #1;
  assert (tb_sda_out == 0) 
    $info("ACK PASSED!");
  else 
    $error("ACK FAILED!");
    
  #1;
  tb_sda_mode = 2'b10;
  
  #1;
  assert (tb_sda_out == 1) 
    $info("NACK PASSED!");
  else 
    $error("NACK FAILED!");
    
  #1;
  tb_sda_mode = 2'b11;
  
  #1;
  assert (tb_sda_out == tb_tx_out) 
    $info("tx_out1 PASSED!");
  else 
    $error("tx_out1 FAILED!");
    
  
  #1;  
  tb_sda_mode = 2'b00;
  tb_tx_out = 1'b0;
  
  #1;
  assert (tb_sda_out == 1) 
    $info("Idle PASSED!");
  else 
    $error("Idle FAILED!");
    
  #1;
  tb_sda_mode = 2'b01;
  
  #1;
  assert (tb_sda_out == 0) 
    $info("ACK PASSED!");
  else 
    $error("ACK FAILED!");
    
  #1;
  tb_sda_mode = 2'b10;
  
  #1;
  assert (tb_sda_out == 1) 
    $info("NACK PASSED!");
  else 
    $error("NACK FAILED!");
    
  #1;
  tb_sda_mode = 2'b11;
  
  #1;
  assert (tb_sda_out == tb_tx_out) 
    $info("tx_out1 PASSED!");
  else 
    $error("tx_out1 FAILED!");    
    
  #1;
  tb_sda_mode = 2'b11;
  
  #1;
  assert (tb_sda_out == tb_tx_out) 
    $info("tx_out2 PASSED!");
  else 
    $error("tx_out2 FAILED!");
    
  end
  
  
endmodule