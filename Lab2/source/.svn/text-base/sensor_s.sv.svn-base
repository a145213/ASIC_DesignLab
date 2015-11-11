// $Id: $
// File name:   sensor_s.sv
// Created:     9/4/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Structural Style Sensor Error Detector Specifications

module sensor_s
(
  input wire [3:0] sensors,
  output wire error
);

wire out1;
wire out2;

and A1 (out1, sensors[2], sensors[1]);
and A2 (out2, sensors[3], sensors[1]);
or A3 (error, sensors[0], out1, out2);



endmodule