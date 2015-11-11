// $Id: $
// File name:   flex_pts_sr.sv
// Created:     9/11/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: N-bit Parallel-to-Serial Shift Register Design

module flex_pts_sr
#(
  parameter NUM_BITS = 4,
  parameter SHIFT_MSB = 1 // 1 for MSB first, 0 for LSB first
)
(
  input wire clk,
  input wire n_rst,
  input wire shift_enable,
  input wire load_enable,
  input wire [NUM_BITS - 1:0] parallel_in,
  output reg serial_out
);

reg [NUM_BITS - 1:0] data;

always_ff @ (posedge clk, negedge n_rst)
begin
  if (1'b0 == n_rst) //reset to a predetermined value
    begin
      data <= '1; //assign all bits to 1
      serial_out <= 1;
    end
  else if(load_enable == 1'b1) //check if load is enable
    begin
      data <= parallel_in;
      serial_out <= (SHIFT_MSB == 1'b1) ? parallel_in[NUM_BITS -1]:parallel_in[0];
    end
  else if (shift_enable == 1'b1) //each bit get the value of its less significant neighbor bit
    begin
    if (SHIFT_MSB == 1'b1)
      begin
        data <= {data[NUM_BITS - 2:0], 1'b1};
        serial_out <= data[NUM_BITS - 2];
      end
    else
      begin
        data <= {1'b1, data[NUM_BITS - 1:1]};
        serial_out <= data[1];
      end
    end
else //retian its current value
  begin
    serial_out <= serial_out;
  end
end

endmodule