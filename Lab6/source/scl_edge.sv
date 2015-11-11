// $Id: $
// File name:   scl_edge.sv
// Created:     10/6/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: SCL Edge Detector Block Description

module scl_edge (
  input wire clk,
  input wire n_rst,
  input wire scl,
  output wire rising_edge_found,
  output wire falling_edge_found
);

reg rising;//,rise;
reg falling;//,fall;
reg prev;
reg curr;
reg pprev;

assign rising_edge_found = rising;
assign falling_edge_found = falling;

always_comb begin
  rising = 0;
  falling = 0;
  if(n_rst)begin
    if (pprev == 0 && prev == 1)
      begin 
      rising = 1;
      end
  
    if (pprev == 1 && prev == 0)
      begin
      falling = 1;
    end
    end
  /*if (prev == 0 && curr == 1)
      rising = 1;
  if (prev == 1 && curr == 0)
      falling = 1;*/
end

always_ff @ (posedge clk, negedge n_rst)
begin
  if (n_rst == 0) begin
    curr <= 1'b1;
    pprev <= 1'b1;
    prev <= 1'b1;
    //rise = 1'b0;
    //fall = 1'b0;
  end
  else begin
    pprev <= prev;
    prev <= curr;
    curr <= scl;
    //rise = rising;
    //fall = falling;
  end
end


endmodule

