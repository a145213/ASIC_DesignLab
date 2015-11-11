// $Id: $
// File name:   i2c_slave.sv
// Created:     10/9/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: i2c Slave

module i2c_slave (
  input wire clk,
  input wire n_rst,
  input wire scl,
  input wire sda_in,
  input wire write_enable,
  input wire [7:0] write_data,
  output wire sda_out,
  output wire fifo_empty,
  output wire fifo_full
);


  reg rising_edge_found;
  reg falling_edge_found;
  reg rw_mode;
  reg address_match;
  reg stop_found;
  reg start_found;
  reg [7:0] rx_data;
  reg [7:0] read_data;
  reg [1:0] sda_mode;
  reg rx_enable;
  reg sda_out_reg;
  reg tx_out;
  reg byte_received;
  reg ack_prep;
  reg check_ack;
  reg ack_done;
  reg read_enable;
  reg load_data;
  reg tx_enable;
  reg tx_fifo_empty;
  reg tx_fifo_full;
  
  
  assign fifo_empty = tx_fifo_empty;
  assign fifo_full = tx_fifo_full;
  assign sda_out = sda_out_reg;
  
  
  tx_fifo FIFO(
    .clk(clk),
    .n_rst(n_rst),
    .read_enable(read_enable),
    .read_data(read_data),
    .fifo_empty(tx_fifo_empty),
    .fifo_full(tx_fifo_full),
    .write_enable(write_enable),
    .write_data(write_data)
  );
  
  controller CONTROLLER (
    .clk(clk),
    .n_rst(n_rst),
    .stop_found(stop_found),
    .start_found(start_found),
    .byte_received(byte_received),
    .ack_prep(ack_prep),
    .check_ack(check_ack),
    .ack_done(ack_done),
    .rw_mode(rw_mode),
    .address_match(address_match),
    .sda_in(sda_in),
    .rx_enable(rx_enable),
    .tx_enable(tx_enable),
    .read_enable(read_enable),
    .sda_mode(sda_mode),
    .load_data(load_data)
  );
  
  timer TIMER (
    .clk(clk),
    .n_rst(n_rst),
    .rising_edge_found(rising_edge_found),
    .falling_edge_found(falling_edge_found),
    .stop_found(stop_found),
    .start_found(start_found),
    .byte_received(byte_received),
    .ack_prep(ack_prep),
    .check_ack(check_ack),
    .ack_done(ack_done)
  );
  
  sda_sel SDA (
    .tx_out(tx_out),
    .sda_mode(sda_mode),
    .sda_out(sda_out_reg)
  );
  
  rx_sr RX(
    .clk(clk),
    .n_rst(n_rst),
    .sda_in(sda_in),
    .rising_edge_found(rising_edge_found),
    .rx_enable(rx_enable),
    .rx_data(rx_data)
  );
  
  tx_sr TX (
    .clk(clk),
    .n_rst(n_rst),
    .falling_edge_found(falling_edge_found),
    .tx_enable(tx_enable),
    .load_data(load_data),
    .tx_data(read_data),
    .tx_out(tx_out)
  );
  
  scl_edge EDGE_DETECT (
    .clk(clk),
    .n_rst(n_rst),
    .scl(scl),
    .rising_edge_found(rising_edge_found),
    .falling_edge_found(falling_edge_found)
  );
  
 decode DECODER(
    .clk(clk),
    .n_rst(n_rst),
    .scl(scl),
    .sda_in(sda_in),
    .starting_byte(rx_data),
    .rw_mode(rw_mode),
    .address_match(address_match),
    .stop_found(stop_found),
    .start_found(start_found)
  );

endmodule