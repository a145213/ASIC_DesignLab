// $Id: $
// File name:   timer.sv
// Created:     10/19/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Timer

module timer (
  input wire clk,
  input wire n_rst,
  input wire rising_edge_found,
  input wire falling_edge_found,
  input wire stop_found,
  input wire start_found,
  output reg byte_received,
  output reg ack_prep,
  output reg check_ack,
  output reg ack_done,
  output reg [3:0] count
);

//reg count_enable;
reg clear;
reg rollover_flag;

typedef enum bit [2:0] {
  st_idle,
  st_count,
  st_ack_pre,
  st_check,
  st_done
} stateType;

stateType cur_state;
stateType nxt_state;
  
  
flex_counter #(4) CLK_CNT (
  .clk(clk), 
	.n_rst(n_rst), 
  .clear(clear), 
  .count_enable(rising_edge_found), 
  .rollover_val(4'b1000), 
  .count_out(count), 
  .rollover_flag(rollover_flag)
);

always_ff @ (posedge clk, negedge n_rst)
begin
  if (n_rst == 0)
    cur_state <= st_idle;
  else
    cur_state <= nxt_state;
end

always_comb
begin
  nxt_state = cur_state;
  byte_received = 1'b0;
  ack_prep  = 1'b0;
  check_ack = 1'b0;
  ack_done = 1'b0;
  clear = 1'b0;
  //count_enable = 1'b0;
  
  case (cur_state) 
  
  st_idle: 
  begin
    clear = 1'b1;
    if (start_found == 1) 
      nxt_state = st_count;
  end
    

  st_count:
  begin
    if (stop_found == 1 )
    begin
      nxt_state = st_idle;
    end 
    if (start_found == 1 )
    begin
      clear = 1'b1;
    end 
    else if (rollover_flag == 1'b1) 
    begin
      byte_received = 1'b1; 
      nxt_state = st_ack_pre;
    end 
  end
    
  st_ack_pre:
  begin 
    if (falling_edge_found == 1'b1)
    begin
      ack_prep = 1;
    end 
    if(rising_edge_found == 1'b1)
      begin
        nxt_state = st_check;
      end
  end
    
  st_check:
  begin
  check_ack = 1'b1;
   if (falling_edge_found == 1'b1)
    begin
      nxt_state = st_done;
    end
  end
    
  st_done:
  begin
    ack_done = 1'b1;
    clear = 1'b1;
    nxt_state = st_count;
  end
    
  endcase  
end

endmodule