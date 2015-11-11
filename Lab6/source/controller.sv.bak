// $Id: $
// File name:   controller.sv
// Created:     10/19/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Slave Controller

module controller (
  input wire clk,
  input wire n_rst,
  input wire stop_found,
  input wire start_found,
  input wire byte_received,
  input wire ack_prep,
  input wire check_ack,
  input wire ack_done,
  input wire rw_mode,
  input wire address_match,
  input wire sda_in,
  output reg rx_enable,
  output reg tx_enable,
  output reg read_enable,
  output reg [1:0] sda_mode,
  output reg load_data
);

typedef enum bit [3:0] {
  st_idle,
  st_start,
  st_wait,
  st_ack,
  st_loadData,
  st_masterAck,
  st_transmit,
  st_masterAckWait,
  st_dumpData,
  st_nack,
  st_checkDone
} stateType;

stateType cur_state;
stateType nxt_state;

always_ff @ (posedge clk, negedge n_rst)
begin
  if (n_rst == 1'b0)
    cur_state <= st_idle;
  else
    cur_state <= nxt_state;
end


always_comb
begin
  nxt_state = cur_state;
  rx_enable = 1'b0;
  tx_enable = 1'b0;
  read_enable = 1'b0;
  sda_mode = 2'b00;
  load_data = 1'b0;
  
  case (cur_state)
    
    st_idle:
    begin
      if (start_found == 1)
        nxt_state = st_start;
    end
    
    st_start:
    begin
      rx_enable = 1;
      if (ack_prep == 1)
        nxt_state = st_wait;
    end
 
    st_wait:
    begin
      if (address_match == 1 & rw_mode == 1)
        nxt_state = st_ack;
      else
        nxt_state = st_nack;
    end

    st_ack:
    begin
      sda_mode = 2'b01;
      if (ack_done == 1)
        nxt_state = st_loadData;
    end
    
    st_loadData:
    begin
      load_data = 1;
      nxt_state = st_transmit;
    end
    
    st_transmit:
    begin
      tx_enable = 1'b1;
      sda_mode = 2'b11;
      if (ack_prep == 1)
        nxt_state = st_masterAckWait;
    end
    
    st_masterAckWait:
    begin
      if (check_ack == 1)
        nxt_state = st_masterAck;
    end
    
    st_masterAck:
    begin
      if (sda_in == 1)
        nxt_state = st_checkDone;
      else
        nxt_state = st_dumpData;
    end
    
    st_dumpData:
    begin
      if (ack_done == 1)
      begin
        read_enable = 1;
        nxt_state = st_loadData;
      end
    end
    
    st_checkDone:
    begin
      if (stop_found == 1)
        nxt_state = st_idle;
      else if (start_found == 1)
        nxt_state = st_start;
    end
    
    st_nack:
    begin
      sda_mode = 2'b10;
      if (ack_done == 1)
        nxt_state = st_checkDone;
    end
    
  endcase
end

endmodule