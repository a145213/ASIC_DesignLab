// $Id: $
// File name:   sensor_b.sv
// Created:     9/4/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Behavioral Style Sensor Error Detector Specifications.
// 

module sensor_b
(
  input wire [3:0] sensors,
  output reg error
);

reg out1;
reg out2;

always @ (sensors)
begin
  out1 = sensors[2] & sensors[1];
  out2 = sensors[3] & sensors[1];
  
  if (sensors[0] == 1 | out1 == 1 | out2 == 1) begin
    error = 1'b1;
  end else begin
    error = 1'b0;
  end
end

endmodule