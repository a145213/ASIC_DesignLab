// $Id: $
// File name:   decode.sv
// Created:     10/6/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Decode Block
// 

module decode (
  input wire clk,
  input wire n_rst,
  input wire scl,
  input wire sda_in,
  input wire [7:0] starting_byte,
  output wire rw_mode,
  output wire address_match,
  output wire stop_found,
  output wire start_found
);

reg stop;
reg start;
reg address;
reg rw;
reg prev,curr,pprev;
reg sda_prev,sda_curr,sda_pprev;
reg sda_rise,sda_fall;

assign stop_found = stop;
assign start_found = start;
assign address_match = address;
assign rw_mode = rw;

always_ff @ (posedge clk, negedge n_rst)
begin
  if (n_rst == 0) begin
    curr <= 1'b1;
    prev <= 1'b1;
    sda_prev <= 1'b1;
    sda_curr <= 1'b1;
    //stp <= 1'b0;
    //str <= 1'b0;
    pprev <= 1'b1;
    sda_pprev <= 1'b1;
  end
  else begin
    prev <= curr;
    curr <= scl;
    sda_prev <= sda_curr;
    sda_curr <= sda_in;
    //str <= start;
    //stp <= stop; 
    sda_pprev <= sda_prev;
    pprev <= prev;
  end
end

always_comb begin
  sda_rise = 0;
  sda_fall = 0;
  if(n_rst)
   begin
  if (sda_pprev == 0 && sda_prev == 1)
    sda_rise = 1;
  else if (sda_pprev == 1 && sda_prev == 0)
    sda_fall = 1;
  end
end


always_comb begin
  start = 0;
  stop = 0;
  address = 0;
  rw = 0;
  if (prev == 1 && pprev == 1 && sda_rise )
    stop = 1;
  if (prev == 1 && pprev == 1 && sda_fall )
    start = 1;
  if (starting_byte[7:1] == 7'b1111000)
    address = 1;
  if (starting_byte[0])
    rw = 1;
  else //
    rw = 0; //s
end

endmodule