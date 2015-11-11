// $Id: $
// File name:   adder_1bit.sv
// Created:     9/6/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: 1-bit Full Adder Design


module adder_1bit
(
  input wire a,
  input wire b,
  input wire carry_in,
  output wire sum,
  output wire carry_out
);

assign sum = carry_in ^ (a ^ b);
assign carry_out = ((~carry_in) & b & a) | (carry_in & (b | a));

endmodule