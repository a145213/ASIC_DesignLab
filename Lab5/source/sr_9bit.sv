// $Id: $
// File name:   sr_9bit.sv
// Created:     9/27/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: 9-bit Shift Register

module sr_9bit (
  input wire clk,
  input wire n_rst,
  input wire shift_strobe,
  input wire serial_in,
  output wire [7:0] packet_data,
  output wire stop_bit
);

reg [7:0] data;
reg stopBit;

assign packet_data = data;
assign stop_bit = stopBit;

flex_stp_sr #(9,0) IX (.clk(clk), .n_rst(n_rst), .shift_enable(shift_strobe), .serial_in(serial_in),
                      .parallel_out({stopBit, data}));
	
endmodule