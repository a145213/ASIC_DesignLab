// $Id: $
// File name:   adder_1bit.sv
// Created:     9/6/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: 1-bit Full Adder Design

`timescale 1ns / 100ps

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

always @ (a)
begin
  assert((a == 1'b1) || (a == 1'b0))
    $info("Input a correct");
  else 
    $error("Input not correct");
end

always @ (b)
begin
  assert((b == 1'b1) || (b == 1'b0))
    $info("Input b correct");
  else 
    $error("Input not correct");
end

always @ (a, b, carry_out)
begin
  #(2) assert (((a + b + carry_out) % 2) == sum)
    $info("Output sum correct");
  else 
    $error("Output 's' of first 1 bit adder is not correct");
end

endmodule
