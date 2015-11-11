// $Id: $
// File name:   sensor_d.sv
// Created:     9/4/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Dataflow Style Sensor Error Detector Specifications

module sensor_d
(
  input wire [3:0] sensors,
  output wire error
);

wire out1;
wire out2;

assign out1 = sensors[2] & sensors[1];
assign out2 = sensors[3] & sensors[1];
assign error = sensors[0] | out1 | out2;

endmodule