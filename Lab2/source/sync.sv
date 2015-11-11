// $Id: $
// File name:   sync.sv
// Created:     9/7/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Synchronizer Design Specifications

module sync
(
  input wire clk,
  input wire n_rst,
  input wire async_in,
  output reg sync_out
);

reg out1;

always_ff @ (posedge clk, negedge n_rst)
begin
  if (1'b0 == n_rst)
    begin
      sync_out <= 0;
      out1 <= 0;
    end
  else if (async_in == 1'b0 | async_in == 1'b1)
  begin
      out1 <= async_in;
      sync_out <= out1;
  end
end

endmodule