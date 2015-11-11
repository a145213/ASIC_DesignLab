// $Id: $
// File name:   adder_16bit.sv
// Created:     9/7/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Creating a Parameterized Ripple Carry Adder Design

module adder_16bit
(
	input wire [15:0] a,
	input wire [15:0] b,
	input wire carry_in,
	output wire [15:0] sum,
	output wire overflow
);

	// STUDENT: Fill in the correct port map with parameter override syntax for using your n-bit 
	// ripple carry adder design to be an 8-bit ripple carry adder design
	
	adder_nbit #(16) IX (a, b, carry_in, sum, overflow);
	
endmodule
