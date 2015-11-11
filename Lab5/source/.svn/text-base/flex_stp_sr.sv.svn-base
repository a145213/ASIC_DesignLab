// $Id: $
// File name:   flex_stp_sr.sv
// Created:     9/11/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: N-bit Serial-to-Parallel Shift Register Design

module flex_stp_sr
#(
  parameter NUM_BITS = 4,
  parameter SHIFT_MSB = 1 // 1 for MSB first, 0 for LSB first
)
(
  input wire clk,
  input wire n_rst,
  input wire shift_enable,
  input wire serial_in,
  output reg [NUM_BITS - 1:0] parallel_out
);

always_ff @ (posedge clk, negedge n_rst)
begin
  if (1'b0 == n_rst) //reset to a predetermined value
    begin
      parallel_out <= '1; //assign all bits to 1
    end
  else if (shift_enable == 1'b1) //each bit get the value of its less significant neighbor bit
    begin
    if (SHIFT_MSB == 1'b1)
      begin
        parallel_out <= {parallel_out[NUM_BITS - 2:0], serial_in};
      end
    else
      begin
        parallel_out <= {serial_in, parallel_out[NUM_BITS - 1:1]};
      end
    end
else //retian its current value
  begin
    parallel_out <= parallel_out;
  end
end

endmodule

