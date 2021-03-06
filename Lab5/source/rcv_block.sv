// $Id: $
// File name:   rcv_block.sv
// Created:     9/27/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Receiver Block

module rcv_block (
  input wire clk,
  input wire n_rst,
  input wire serial_in,
  input wire data_read,
  output wire [7:0] rx_data,
  output wire data_ready,
  output wire overrun_error,
  output wire framing_error,
  output wire shift_strobe,
  output wire packet_done,
	output wire [3:0] state
);

wire enable_timer;
//wire shift_strobe; 
//wire packet_done;
   
wire start_bit_detected;
wire sbc_clear;
wire sbc_enable;
  
wire stop_bit;
  
wire [7:0] packet_data;
wire load_buffer;
  
  
timer TIMER (
  .clk(clk), 
  .n_rst(n_rst),
  .enable_timer(enable_timer),
  .shift_strobe(shift_strobe),
  .packet_done(packet_done)
  );
  
rcu RCU (
  .clk(clk),
  .n_rst(n_rst),
  .start_bit_detected(start_bit_detected),
  .packet_done(packet_done),
  .framing_error(framing_error),
  .sbc_clear(sbc_clear),
  .sbc_enable(sbc_enable),
  .load_buffer(load_buffer),
  .enable_timer(enable_timer),
  .state(state)
  );
  
sr_9bit SHIFT_REG(
  .clk(clk),
  .n_rst(n_rst),
  .shift_strobe(shift_strobe),
  .serial_in(serial_in),
  .packet_data(packet_data),
  .stop_bit(stop_bit)
  );
  
rx_data_buff RX_DATA_BUFFER (
  .clk(clk),
  .n_rst(n_rst),
  .load_buffer(load_buffer),
  .packet_data(packet_data),
  .data_read(data_read),
  .rx_data(rx_data),
  .data_ready(data_ready),
  .overrun_error(overrun_error)
  );
  
start_bit_det START_BIT (
  .clk(clk),
  .n_rst(n_rst),
  .serial_in(serial_in),
  .start_bit_detected(start_bit_detected)
  );
    
stop_bit_chk STOP_BIT (
  .clk(clk),
  .n_rst(n_rst),
  .sbc_clear(sbc_clear),
  .sbc_enable(sbc_enable),
  .stop_bit(stop_bit),
  .framing_error(framing_error)
  );
  
  
endmodule