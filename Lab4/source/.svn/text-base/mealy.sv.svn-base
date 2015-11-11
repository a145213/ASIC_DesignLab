// $Id: $
// File name:   mealy.sv
// Created:     9/18/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Mealy Machine 1101 Detector

module mealy (
  input wire clk,
  input wire n_rst,
  input wire i,
  output reg o
);


typedef enum bit [1:0] {
  st_state1,
  st_state2,
  st_state3,
  st_state4
} stateType;

stateType state;
stateType nxt_state;

always_ff @ (negedge n_rst, posedge clk)
begin :REG_LOGIC
  if (1'b0 == n_rst)
    state <= st_state1;
  else
    state <= nxt_state;
end

//assign o = (state == st_state4) ? 1'b1 : 1'b0;

always_comb
begin : NXT_LOGIC
  //nxt_state = state;
  o = 0;
  
  case(state)  
    st_state1:
    begin
      nxt_state = i ? st_state2 : st_state1;
      o = 0;
    end
    st_state2:
    begin
      nxt_state = i ? st_state3 : st_state1;
      o = 0;
    end
    st_state3:
    begin
      nxt_state = i ? st_state1 : st_state4;
      o = 0;
    end
    st_state4:
    begin
      if (i == 1)
        begin
          nxt_state = st_state2;
          o = 1'b1;
        end
      else begin
        nxt_state = st_state1;
        o = 0;
      end
    end
    default:
    nxt_state = st_state1;
  endcase    
end

/*
always_comb
begin : OUT_LOGIC
  case(state)
    st_state4:
    begin
      o = 1'b1;
    end
    default: o = 1'b0;
  endcase
end */  

endmodule  
    