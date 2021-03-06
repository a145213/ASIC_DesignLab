// $Id: $
// File name:   flex_counter.sv
// Created:     9/11/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Flexible and Scalable Counter with Controlled Rollover

module flex_counter
#(
  parameter NUM_CNT_BITS = 4
)
(
  input wire clk,
  input wire n_rst,
  input wire clear,
  input wire count_enable,
  input reg [NUM_CNT_BITS - 1:0] rollover_val,
  output reg [NUM_CNT_BITS - 1:0] count_out,
  output reg rollover_flag
);
reg [NUM_CNT_BITS - 1:0] n_count_out;
reg n_rollover_flag;

//reg [NUM_CNT_BITS - 1:0] count;

always_comb
begin
  n_count_out = count_out;
  n_rollover_flag = 0;
  if (clear == 1'b1)
  begin
    n_count_out = 0;
    n_rollover_flag = 0;
  end
  else
    if (count_enable == 1'b1)
      begin
	 if (rollover_val == count_out + 1'b1)
	   begin
              n_rollover_flag = 1'b1;
	   end    
	 n_count_out = count_out + 1'b1;  
	 if(count_out == rollover_val)
	   begin
              n_count_out = 1;
              n_rollover_flag = 0;
	   end
      end
end

always_ff @ (posedge clk, negedge n_rst)
begin
  if (n_rst == 1'b0 )//|| clear == 1'b1)
    begin
      count_out <= '0;
      rollover_flag <= 0;
    end
  
  else
    begin
    rollover_flag <= n_rollover_flag;
    count_out <= n_count_out;
    end
end
          
endmodule